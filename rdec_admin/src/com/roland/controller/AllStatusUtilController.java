package com.roland.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.roland.controller.util.UserSessionUtil;
import com.roland.model.ChannelType;
import com.roland.model.UserLoginSession;
import com.roland.service.AllStatusUtilService;
import com.roland.util.AjaxUtil;
import com.roland.util.DateUtil;
import com.roland.util.Interface;

@Controller
@RequestMapping("/all_util")
public class AllStatusUtilController extends UtilController
{
    @Autowired
    private AllStatusUtilService allStatusService;
    
    @Autowired
    private UserSessionUtil userSession;
    
    @RequestMapping
    public String toAllUtil()
    {
        return "channel/channel";
    }

    @RequestMapping("/list_channel_type")
    @ResponseBody
    public Object listChannelType(Integer channelId)
    {
        if(channelId == null){channelId = 0;}
        return allStatusService.listChannelTree(channelId);
    }
    
    @RequestMapping("/list_channel_type_tree")
    @ResponseBody
    public Object listChannelTypeTree(Integer channelId)
    {
        if(channelId == null)
        {
            channelId = 0;
        }
        return allStatusService.listChannelTreeUtil(channelId);
    }
    
    
    
    @RequestMapping("/delete_channel_type")
    @ResponseBody
    public Object deleteChannelType(Integer[] data)
    {
        ajaxUtil = new AjaxUtil();
        try
        {
            for (int i = 0; i < data.length; i++)
            {
                allStatusService.deleteChannel(data[i]) ;
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
    
    @RequestMapping("/save_or_update_channel_type")
    @ResponseBody
    public Object saveOrUpdate(String data)
    {
        ajaxUtil = new AjaxUtil();
        UserLoginSession user = userSession.getUser(request);
        if(user == null)
        {
            return null;
        }
        List<ChannelType> listChannel = JSON.parseArray(data, ChannelType.class);
        for (Iterator<ChannelType> iterator = listChannel.iterator(); iterator.hasNext();)
        {
            ChannelType channelType = iterator.next();
            channelType.setCreateDate(DateUtil.timeNow());
            channelType.setCreateUserId(user.getUserId());
            
            if(channelType.getId() == null || channelType.getId() == 0)
            {
                allStatusService.addChannel(channelType);
            }else
            {
                allStatusService.updateChannel(channelType);
            }
            ajaxUtil.setSuccess(true);
        }
       
        
        return ajaxUtil;
    }
}
