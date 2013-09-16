package com.roland.util;


public class AjaxUtil
{
	
	private boolean success = false;
	
	private String failMsg;
	
	private String errors;

    public boolean isSuccess()
    {
        return success;
    }

    public void setSuccess(boolean success)
    {
        this.success = success;
    }

    public String getErrors()
    {
        return errors;
    }

    public void setErrors(String errors)
    {
        this.errors = errors;
    }

    public String getFailMsg()
    {
        return failMsg;
    }

    public void setFailMsg(String failMsg)
    {
        this.failMsg = failMsg;
    }
	
}
