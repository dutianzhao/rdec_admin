package com.roland.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.roland.controller.util.ConpetenceUtil;
import com.roland.controller.util.UserSessionUtil;
import com.roland.model.MenuTreeDTO;
import com.roland.model.TbarModel;
import com.roland.model.UserLoginSession;
import com.roland.model.competence.Competence;
import com.roland.model.competence.Operation;
import com.roland.service.CompetenceService;
import com.roland.util.AjaxUtil;
import com.roland.util.Config;
import com.roland.util.HttpUtils;
import com.roland.util.Interface;

@Controller
@RequestMapping("/competence")
public class CompetenceController extends ControllerUtil
{
    @Autowired
    private CompetenceService competenceService;

    @Autowired
    private UserSessionUtil userSession;

    @Autowired
    private Config config;

    @RequestMapping
    public String toIndex()
    {
        return "competence/index";
    }

    @RequestMapping("/me_competence")
    @ResponseBody
    public Object competence(Integer competId)
    {
        UserLoginSession user = userSession.getUser(request);
        if (user == null) { return null; }
        if (competId == null)
        {
            competId = 0;
        }
        return ConpetenceUtil.listCompetence(competId, user);
    }
    
    @RequestMapping("/userCompetTree")
    @ResponseBody
    public Object userCompetTree(Integer compId,HttpServletResponse response)
    {
        if(compId == null ){compId = 0;}
        UserLoginSession user = userSession.getUser(request);

        if (user == null)
        {
            HttpUtils.responseHead(response);
            return null;
        }
        return ConpetenceUtil.getCompetById(compId, user,true);
    }

    /**
     * 查询用户组
     * 
     * @return
     */
    @RequestMapping("/list_user_group")
    @ResponseBody
    public Object listUserGroup(ModelMap modelMap)
    {
        UserLoginSession user = (UserLoginSession) modelMap.get(Interface.SESSION_USER);
        return user.getUserGroupList();
    }

    // 给用户添加权限组
    public Object addUserAndGroup()
    {
        ajaxUtil = new AjaxUtil();

        return ajaxUtil;
    }

    @RequestMapping("/to_compet_group")
    public Object toCompetGroup()
    {
        return "competence/competence_group";
    }

    /**
     * 查询权限组
     * 
     * @return
     */
    @RequestMapping("/compet_group")
    public Object competGroup()
    {

        return null;
    }

    @RequestMapping("to_compet_index")
    public String toAddCompet()
    {
        return "competence/compet_index";
    }

    /**
     * 删除
     */
    @RequestMapping("/delete_compet_by_id")
    @ResponseBody
    public AjaxUtil deleteCompetById(Integer[] data)
    {
        try
        {
            ajaxUtil = new AjaxUtil();
            /*if(1==1)
            {
                ajaxUtil.setErrors("你无权操作！");
                return ajaxUtil;
            }*/
            for (int i = 0; i < data.length; i++)
            {
                if (data[i] == 0 || data[i] == 36 || data[i] == 38)
                {
                    ajaxUtil.setErrors("你没有这项权限！");
                    return ajaxUtil;
                }

                UserLoginSession user = userSession.getUser(request);

                List<MenuTreeDTO> listMenuDto = ConpetenceUtil.getCompetById(data[i], user,true);
                if (listMenuDto.size() > 0)
                {
                    ajaxUtil.setErrors("[ " + user.getUserCompetence().get(data[i]).getName() + " ]权限下边还有权限，请删除底下的权限！");
                    return ajaxUtil;
                }
                else
                {
                    competenceService.deleteCompetById(data[i]);
                    user.getUserCompetence().remove(data[i]);
                    competenceService.deleteCompetGroup(data[i]);
                }

            }
            ajaxUtil.setSuccess(true);
        }
        catch (Exception e)
        {
            e.printStackTrace();
            ajaxUtil.setErrors(Interface.serverException);
        }
        return ajaxUtil;
    }

    @RequestMapping("/save_or_update")
    @ResponseBody
    public Object saveOrUpdate(String data)
    {
        List<Competence> compet = JSON.parseArray(data, Competence.class);

        ajaxUtil = new AjaxUtil();
        
        /*if(1==1)
        {
            ajaxUtil.setErrors("你无权操作！");
            return ajaxUtil;
        }*/
        
        UserLoginSession user = userSession.getUser(request);

        try
        {
            for (Iterator<Competence> iterator = compet.iterator(); iterator.hasNext();)
            {
                Competence competence = iterator.next();

                if (competence.getId() == 0)
                {
                    competenceService.saveCompetence(competence);

                    competenceService.insertCompetGroup(user.getUserGroupList().get(0).getGroupId(), competence.getId());

                }
                else
                {
                    competenceService.updateCompet(competence);
                }
                user.getUserCompetence().put(competence.getId(), competence);
            }
            ajaxUtil.setSuccess(true);
        }
        catch (Exception e)
        {
            e.printStackTrace();
            ajaxUtil.setErrors(Interface.serverException);
        }

        return ajaxUtil;
    }

    @RequestMapping("/compet_operation")
    @ResponseBody
    public Object competOperation(Integer competId)
    {
        List<TbarModel> listTabr = new ArrayList<TbarModel>();
        
        List<Competence> listCompet = ConpetenceUtil.listCompetence(competId, userSession.getUser(request));
        
        for (Iterator<Competence> iterator = listCompet.iterator(); iterator.hasNext();)
        {
            Competence competence = iterator.next();
            
            TbarModel tbarModel = new TbarModel();
            
            tbarModel.setIconCls(competence.getIoc());
            tbarModel.setId(competence.getLinkUrl());
            tbarModel.setText(competence.getName());
            
            listTabr.add(tbarModel);
        }
        return listTabr;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @RequestMapping("/list_operation")
    @ResponseBody
    public Object listOperation(Integer competId)
    {
        return competenceService.listOperation(); 
    }

    @RequestMapping("/save_or_update_operation")
    @ResponseBody
    public Object saveOrupdateOperation(String data)
    {
        List<Operation> listOperation = JSON.parseArray(data, Operation.class);

        ajaxUtil = new AjaxUtil();

        try
        {
            for (Iterator<Operation> iterator = listOperation.iterator(); iterator.hasNext();)
            {
                Operation operation = iterator.next();

                if (operation.getId() == 0)
                {
                    competenceService.addOperation(operation);

                    competenceService.addCompOperation(operation.getId(), operation.getCompetId());
                }
                else
                {
                    competenceService.updateOperation(operation);
                }
            }
            ajaxUtil.setSuccess(true);
        }
        catch (Exception e)
        {
            ajaxUtil.setErrors(Interface.serverException);
        }
        return ajaxUtil;

    }

}
