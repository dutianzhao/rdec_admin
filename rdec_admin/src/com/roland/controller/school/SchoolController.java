package com.roland.controller.school;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.roland.controller.ControllerUtil;
import com.roland.controller.util.UserSessionUtil;
import com.roland.model.School;
import com.roland.model.TbarModel;
import com.roland.model.UserInternal;
import com.roland.model.UserLoginSession;
import com.roland.model.competence.GroupAndUser;
import com.roland.service.school.SchoolService;
import com.roland.util.AjaxUtil;
import com.roland.util.Config;
import com.roland.util.DateUtil;
import com.roland.util.Interface;

@Controller
@RequestMapping("/school")
@SessionAttributes(Interface.SESSION_USER)
public class SchoolController extends ControllerUtil
{
    @Autowired
    private SchoolService schoolService;

    @Autowired
    private UserSessionUtil userSession;

    @Autowired
    private Config config;

    private AjaxUtil ajaxUtil;

    @RequestMapping("/toSchool")
    public Object toSchool()
    {
        return "school/school";
    }

    // 查询学校
    @RequestMapping("/listSchool")
    @ResponseBody
    public Object listSchool(ModelMap modelMap)
    {
        UserLoginSession userLogin = (UserLoginSession) modelMap.get(Interface.SESSION_USER);
        return userLogin.getUserSchool();
    }

    @RequestMapping("/delSchool")
    @ResponseBody
    public void delSchool()
    {
        // schoolService.delSchool(2);
    }

    @RequestMapping("/addSchool")
    @ResponseBody
    public Object addSchool(School school, ModelMap mdMap, HttpServletResponse response)
    {
        UserInternal user = (UserInternal) mdMap.get(Interface.SESSION_USER);
        if (user == null)
        {
            ajaxUtil.setFailMsg("请重新登陆！");
            return ajaxUtil;
        }
        school.setCreateDate(DateUtil.timeNow());
        school.setUserInternalId(user.getId());
        try
        {
            ajaxUtil = new AjaxUtil();
            schoolService.addSchool(school);
            ajaxUtil.setSuccess(true);
        }
        catch (Exception e)
        {
            e.printStackTrace();
            ajaxUtil.setFailMsg("服务器异常请稍后再试！");
        }
        return ajaxUtil;

    }

    @RequestMapping("/update_school_status")
    @ResponseBody
    public Object updateSchoolStatus(String data)
    {
        try
        {
            UserLoginSession user = userSession.getUser(request);
            ajaxUtil = new AjaxUtil();
            if (user != null)
            {
                List<GroupAndUser> list = user.getUserGroupList();

                for (Iterator<GroupAndUser> iterator = list.iterator(); iterator.hasNext();)
                {
                    GroupAndUser groupAndUser = (GroupAndUser) iterator.next();
                    if (groupAndUser.getGroupId() == 1 || user.getNickName().equals(config.getSuperAccount()))
                    {
                        JSONArray datas = JSON.parseArray(data);
                        for (int i = 0; i < datas.size(); i++)
                        {
                            String[] dataStatus = datas.get(i).toString().split("/");
                            
                            schoolService.updateSchoolStatus(dataStatus[0],dataStatus[1]);
                            ajaxUtil.setSuccess(true);
                            for (Iterator<School> iterator2 = user.getUserSchool().iterator(); iterator2.hasNext();)
                            {
                                School school = iterator2.next();
                                if(school.getId() == new Integer(dataStatus[0]))
                                {
                                    school.setStatusId(new Integer(dataStatus[1]));
                                }
                            }
                        }
                    }
                    else
                    {
                        ajaxUtil.setErrors(Interface.noCompet);
                    }
                }
            }
            else
            {
                ajaxUtil.setErrors(Interface.noLogin);
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
            ajaxUtil.setErrors(Interface.serverException);
        }
        return ajaxUtil;
    }

    @RequestMapping("/selUserOperating")
    @ResponseBody
    public Object selUserOperating()
    {
        List<TbarModel> listTabr = new ArrayList<TbarModel>();

        TbarModel tbarModel = new TbarModel();
        tbarModel.setIconCls("school_add");
        tbarModel.setId("school_add");
        tbarModel.setText("添加");

        TbarModel tbarModel1 = new TbarModel();
        tbarModel1.setIconCls("school_save");
        tbarModel1.setId("school_save");
        tbarModel1.setText("保存");

        listTabr.add(tbarModel);
        listTabr.add(tbarModel1);

        return listTabr;
    }

}
