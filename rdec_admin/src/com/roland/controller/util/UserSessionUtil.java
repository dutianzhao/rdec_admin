package com.roland.controller.util;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;

import com.roland.model.UserLoginSession;
import com.roland.util.Interface;

@Controller
public class UserSessionUtil
{
    /**
     * 查询登陆用户的信息
     * @param request
     * @return
     */
    public UserLoginSession getUser(HttpServletRequest request)
    {
        return (UserLoginSession) request.getSession().getAttribute(Interface.SESSION_USER);
    }
    /**
     * 判断用户是否登陆
     * @param request
     * @return
     */
    public boolean getUserIsLogin(HttpServletRequest request)
    {
        try
        {
            if(!(request.getSession().getAttribute(Interface.SESSION_USER) == null))
            {
                return true;
            }
        }
        catch (Exception e)
        {
            // TODO: handle exception
        }
        return false;
    }
}
