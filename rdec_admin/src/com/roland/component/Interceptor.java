package com.roland.component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.roland.util.HttpUtils;
import com.roland.util.Interface;

@Repository
public class Interceptor implements HandlerInterceptor
{
    /**
     * 在Controller方法后进行拦截
     */
    @Override
    public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3) throws Exception
    {
    }

    @Override
    public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3) throws Exception
    {
    }

    /**
     * 在Controller方法前进行拦截
     */

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception
    {
        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("user") == null)
        {
            if (request.getHeader("x-requested-with") != null && request.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest"))
            {
                HttpUtils.responseHead(response);
            }
        }

        return true;
    }

}
