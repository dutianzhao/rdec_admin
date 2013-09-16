package com.roland.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;

import com.roland.util.AjaxUtil;

@Controller
public class ControllerUtil
{
    public AjaxUtil ajaxUtil;
    
    public HttpServletRequest request;
    
    @Resource
    public void setRequest(HttpServletRequest request)
    {
        this.request = request;
    }
}
