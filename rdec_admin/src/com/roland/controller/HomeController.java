package com.roland.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.roland.controller.util.ConpetenceUtil;
import com.roland.controller.util.UserSessionUtil;
import com.roland.model.UserLoginSession;
import com.roland.service.CompetenceService;
import com.roland.util.HttpUtils;
import com.roland.util.Interface;

@Controller
@SessionAttributes(Interface.SESSION_USER)
public class HomeController extends ControllerUtil
{
    @Autowired
    private CompetenceService competenceService;
    
    @Autowired
    private UserSessionUtil userSession;
    
    @RequestMapping("/null")
    public String testNull()
    {
        return "weihu";
    }
    
    @RequestMapping("/desktop")
    public String extDept()
    {
        return "destop/desktop";
    }
    
    @RequestMapping("/top")
    public String top()
    {
        return "top";
    }

    @RequestMapping("/extLogin")
    public String extLogin()
    {
        return "ext_login";
    }

    @RequestMapping("/extmain")
    public String extMain(ModelMap mdMap)
    {
       if(mdMap.get(Interface.SESSION_USER) == null)
       {
        // forward
           return "redirect:/"; 
       }
        return "extmain";
    }

    @RequestMapping("/index")
    public String homeIndex()
    {
        return "index";
    }

    @RequestMapping("/ext_left")
    @ResponseBody
    public Object extLeft(Integer compId,ModelMap mdMap, HttpServletResponse response,ModelMap modelMap)
    {
        if(compId == null ){compId = 0;}
        UserLoginSession user = userSession.getUser(request);

        if (user == null)
        {
            HttpUtils.responseHead(response);
            return null;
        }
        return ConpetenceUtil.getCompetById(compId, user,false);
    }

    @RequestMapping("/ext_model")
    @ResponseBody
    public Object ExtModel(String modelName)
    {
        try
        {
            return HttpUtils.listExtModel(modelName);
        }
        catch (InstantiationException e)
        {
            e.printStackTrace();
        }
        catch (IllegalAccessException e)
        {
            e.printStackTrace();
        }
        catch (ClassNotFoundException e)
        {
            e.printStackTrace();
        }
        return Interface.serverException;

    }
}
