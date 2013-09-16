package com.roland.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.roland.controller.util.UserSessionUtil;
import com.roland.model.Activity;
import com.roland.model.ExtPage;
import com.roland.model.PageModel;
import com.roland.model.UserLoginSession;
import com.roland.service.ActivityService;
import com.roland.util.AjaxUtil;
import com.roland.util.Config;
import com.roland.util.Interface;

@Controller
@RequestMapping("/activity")
public class ActivityController extends UtilController
{
    @Autowired
    private ActivityService activityService;
    
    @Autowired
    private Config config;

    private UserLoginSession user = null;

    @Autowired
    private UserSessionUtil userSession;

    @RequestMapping("/to_activity")
    public String toActivity()
    {
        return "/activity/activity";
    }

    @RequestMapping("/update_activity_status")
    @ResponseBody
    public Object updateActivityStatus(String data)
    {
        ajaxUtil = new AjaxUtil();
        try
        {
            JSONArray datas = JSON.parseArray(data);

            for (int i = 0; i < datas.size(); i++)
            {
                String[] dataStatus = datas.get(i).toString().split("/");
                activityService.updateActivityStatus(dataStatus[0], dataStatus[1]);
            }
            ajaxUtil.setSuccess(true);
        }
        catch (Exception e)
        {
            ajaxUtil.setErrors(Interface.serverException);
        }
        return ajaxUtil;
    }

    @RequestMapping
    @ResponseBody
    public Object listActivity(ExtPage extPage)
    {
        user = userSession.getUser(request);
        if (user == null) { return null; }
        // 判断是集团还是学校
        

        Integer schoolId = 0;
        Integer citySheng = null;

        if (user.getUserSchool().size() == 1)
        {
            schoolId = user.getUserSchool().get(0).getId();

        }
        else if (user.getUserName().equals(config.getSuperAccount()))
        {
            schoolId = null;
        }else if(user.getUserGroupList().get(0).getGroupId() == 2)
        {
            citySheng = user.getUserSchool().get(0).getCitySheng();
        }
        
        PageModel pageModel = new PageModel();
        pageModel.setTotalCount(activityService.listAvtivityCount(schoolId));
        pageModel.setTopics(activityService.listAvtivity(schoolId,citySheng,extPage));
        
        return pageModel;

    }

    @RequestMapping("/add_or_update_activity")
    @ResponseBody
    public Object addOrUpdateActivity(Activity activity)
    {
        ajaxUtil = new AjaxUtil();
        user = userSession.getUser(request);
        if (user == null)
        {
            ajaxUtil.setErrors(Interface.noLogin);
        }else
        {
           if(activity.getId() == null || activity.getId() == 0)
           {
               activity.setCreateUserId(user.getUserId());
              activityService.addAvtivity(activity);
           }else
           {
               activityService.updateAvtivity(activity);
           }
           ajaxUtil.setSuccess(true);
        }
        return ajaxUtil;
    }
    
    @RequestMapping("/activity_by_id")
    @ResponseBody
    public Object acitvityById(Integer acitivityById,boolean isSelect)
    {
        if(isSelect)
        {
            return activityService.activityById(acitivityById);
        }
        return null;
    }
}
