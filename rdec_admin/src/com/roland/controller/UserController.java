package com.roland.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.roland.model.ExtPage;
import com.roland.model.PageModel;
import com.roland.model.UserInternal;
import com.roland.model.UserLoginSession;
import com.roland.model.competence.Competence;
import com.roland.model.competence.GroupAndUser;
import com.roland.service.CompetenceService;
import com.roland.service.UserInternalService;
import com.roland.service.school.SchoolService;
import com.roland.util.AjaxUtil;
import com.roland.util.Config;
import com.roland.util.HttpUtils;
import com.roland.util.Interface;
import com.roland.util.Md5;

/**
 * @author LD
 */
@Controller
@SessionAttributes(Interface.SESSION_USER)
@RequestMapping("/user")
public class UserController
{
    @Autowired
    private UserInternalService userService;

    HttpServletRequest request;

    private AjaxUtil ajaxUtil;
    
    @Autowired
    private Config config;

    @Autowired
    private CompetenceService competenceService;
    
    @Autowired
    private SchoolService schoolService;

    @Resource
    public void setRequest(HttpServletRequest request)
    {
        this.request = request;
    }

    @RequestMapping("/to_user")
    public String toUser()
    {
        return "user/user";
    }

    @RequestMapping("/to_left")
    public String toLeft()
    {
        return "user/left";
    }

    @RequestMapping("/toLogin")
    public String usertoLogin()
    {
        /*
         * String aa = "09:00"; for (int i = 0; i < 70 - 26; i++) { aa =
         * userService.after(aa, 20); }
         */

        return "ext_login";
    }

    @RequestMapping("/logoin")
    @ResponseBody
    public Object userLogoin(String username, String password, String codenum, Model model, ModelMap modelMap)
    {
        AjaxUtil ajaxUtil = new AjaxUtil();
        // String kaptchaExpected = (String)
        // request.getSession().getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
        if (codenum != null)// kaptchaExpected.equalsIgnoreCase(codenum)
        {
            // ajaxUtil.setFailMsg("验证码错误！");
        }
        else
        {
            UserInternal user = userService.login(username, Md5.md5(password));
            if (user != null)
            {
                if (user.getStatus() == -1)
                {
                    ajaxUtil.setFailMsg("你的账户已经冻结，请联系管理员！");
                }
                else
                {
                    List<GroupAndUser> listGroup = competenceService.listGroupAndUser(null, user.getId());
                    
                    List<Competence> userAllCompetence = new ArrayList<Competence>();
                    
                    UserLoginSession userLoginSession = new UserLoginSession();
                    
                    userLoginSession.setUserId(user.getId());
                    userLoginSession.setNickName(user.getNickname());
                    userLoginSession.setUserName(user.getUsername());
                    
                    //超级管理员
                    if(config.getSuperAccount().equals(user.getUsername()))
                    {
                        userLoginSession.setUserSchool(schoolService.allSchool());
                    }else
                    {
                        userLoginSession.setUserSchool(schoolService.userSchoolByUID(user.getId()));
                    }
                    userLoginSession.setNowSchool(userLoginSession.getUserSchool().get(0));
                    userLoginSession.setUserGroupList(listGroup);
                    
                    for (int i = 0; i < listGroup.size(); i++)
                    {
                        userAllCompetence.addAll(competenceService.userCompetence(listGroup.get(i).getGroupId()));
                    }
                    
                    Map<Integer, Competence> mapCompet = new TreeMap<Integer, Competence>();
                    for (Iterator<Competence> iterator = userAllCompetence.iterator(); iterator.hasNext();)
                    {
                        Competence competence = iterator.next();
                        mapCompet.put(competence.getId(), competence);
                    }
                    userLoginSession.setUserCompetence(mapCompet);
                    
                    modelMap.put(Interface.SESSION_USER, userLoginSession);
                    ajaxUtil.setSuccess(true);
                }
            }
            else
            {
                ajaxUtil.setFailMsg("用户名或密码错误！");
            }
        }
        return ajaxUtil;
    }

    @RequestMapping("/logout")
    @ResponseBody
    public AjaxUtil logout(ModelMap modelMap)
    {
        ajaxUtil = new AjaxUtil();

        request.getSession().invalidate();
        modelMap.remove(Interface.SESSION_USER);
        ajaxUtil.setSuccess(true);

        return ajaxUtil;
    }

    @RequestMapping(value = "/code", method = { RequestMethod.POST })
    @ResponseBody
    public AjaxUtil lezaigoCode(String codenum, HttpServletResponse response)
    {
        ajaxUtil = new AjaxUtil();
        String kaptchaExpected = (String) request.getSession().getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
        if (kaptchaExpected.equalsIgnoreCase(codenum))
        {
            ajaxUtil.setSuccess(true);
        }
        return ajaxUtil;
    }

    @RequestMapping("/updatePassword")
    @ResponseBody
    public Object updatePassword(String oldPassword, String passwordone, ModelMap modelMap, HttpServletResponse response)
    {
        ajaxUtil = new AjaxUtil();
        UserInternal user = (UserInternal) modelMap.get(Interface.SESSION_USER);

        if (user == null)
        {
            HttpUtils.responseHead(response);
            return Interface.noLogin;
        }

        String newPassword = Md5.md5(passwordone);
        if (Md5.md5(oldPassword).equals(user.getPassword()))
        {
            userService.updatePassword(user.getId(), newPassword);
            ajaxUtil.setSuccess(true);
        }
        else
        {
            ajaxUtil.setFailMsg("你的旧密码错误");
        }

        return ajaxUtil;
    }

    // 根据用户组查询用户
    @RequestMapping("/userByGroupId")
    @ResponseBody
    public List<UserInternal> listUserInter(Integer groupId)
    {
        // 这块必须要做权限判定 后期再说！

        List<GroupAndUser> listGroupAndUser = competenceService.listGroupAndUser(groupId, null);

        List<UserInternal> listUser = new ArrayList<UserInternal>();

        for (Iterator<GroupAndUser> iterator = listGroupAndUser.iterator(); iterator.hasNext();)
        {
            GroupAndUser groupAndUser = iterator.next();

            listUser.add(userService.userById(groupAndUser.getUserId()));
        }
        return listUser;
    }

    @RequestMapping("/toManageAdmin")
    public String toManageAdmin()
    {
        return "user/manage_admin";
    }

    @RequestMapping("/listManageAdmin")
    @ResponseBody
    public Object listManagerAdmin(ExtPage extPage)
    {
        extPage.setPageSize(extPage.getLimit());
        extPage.setStartPage(extPage.getStart());
        PageModel pageModel = new PageModel();
        pageModel.setTotalCount(userService.countUserByGroup(3));
        pageModel.setTopics(userService.listManagerAdmin(extPage));
        return pageModel;
    }

    @RequestMapping("/add_user_internal")
    @ResponseBody
    // 添加用户信息
    public Object addUserInternal(UserInternal user, ModelMap modelMap)
    {
        UserInternal userMe = (UserInternal) modelMap.get(Interface.SESSION_USER);

        ajaxUtil = new AjaxUtil();

        if (userMe != null)
        {
            try
            {
                user.setUserInternalId(userMe.getId());
                user.setPassword(Md5.md5(user.getUsername()));
                userService.addUserInternal(user);

                competenceService.addUserAndGroup(user.getId(), user.getUserGroupId());

                ajaxUtil.setSuccess(true);
            }
            catch (Exception e)
            {
                ajaxUtil.setFailMsg(Interface.serverException);
            }
        }
        else
        {
            ajaxUtil.setFailMsg(Interface.noLogin);
        }

        return ajaxUtil;
    }

    /**
     * 修改老密码
     */

    @RequestMapping("/1")
    @ResponseBody
    public void testUpdate()
    {
        List<Map<String, Object>> list = userService.listLuser();
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            Map<String, Object> map2 = (Map<String, Object>) iterator.next();

            userService.updatePassword(map2.get("account").toString(), map2.get("passwd").toString());

        }
    }

    /**
     * 给用户分配角色
     */
    @RequestMapping("/2")
    @ResponseBody
    public void testUpdate2()
    {
        List<Map<String, Object>> list1 = userService.test1();

        for (Iterator iterator = list1.iterator(); iterator.hasNext();)
        {
            Map<String, Object> map = (Map<String, Object>) iterator.next();

            Map<String, Object> map1 = userService.test2((Integer) map.get("ug_user_id"));

            if (map1 == null)
            {
                continue;
            }
            UserInternal userInter = userService.userIntegerByName(map1.get("account").toString());
            if (userInter == null)
            {
                continue;
            }
            Integer group = (Integer) map.get("ug_gr_id");

            if (group == 10)
            {
                group = 1;
            }
            else if (group == 20)
            {
                group = 2;
            }
            else if (group == 30)
            {
                group = 3;
            }
            else if (group == 40 || group == 86)
            {
                group = 5;
            }
            else if (group == 60 || group == 85)
            {
                group = 4;
            }
            else
            {
                System.out.println(group);
            }

            competenceService.addUserAndGroup(userInter.getId(), group);

        }
    }
    /**
     * 把用户分配到学校
     */
    @ResponseBody
    public void userSchool()
    {
        List<Map<String,Object>> listMap = userService.userSchool();
        
        for (Iterator<Map<String, Object>> iterator = listMap.iterator(); iterator.hasNext();)
        {
            Map<String, Object> map = iterator.next();
            
            UserInternal userInter = userService.userIntegerByName(map.get("account").toString());
            
            if(userInter == null)
            {
                continue;
            }
            
            Integer schoolId = (Integer) map.get("school_id");
            
            if(schoolId == 1){schoolId = 2;}
            else if(schoolId == 2){schoolId = 3;}
            else if(schoolId == 16){schoolId = 4;}
            else if(schoolId == 17){schoolId = 5;}
            else if(schoolId == 18){schoolId = 6;}
            else if(schoolId == 19){schoolId = 7;}
            else if(schoolId == 20){schoolId = 8;}
            else if(schoolId == 21){schoolId = 1;}
            
            if(schoolId == 0)
            {
                continue;
            }
            
            userService.userAddSchool(schoolId, userInter.getId());
        }
        
    }
}
