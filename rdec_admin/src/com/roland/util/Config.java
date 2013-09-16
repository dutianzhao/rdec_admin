package com.roland.util;



public class Config
{
	//网站根目录 URL
	private String webUrl;

	//网站根目录物理路径 
	private String webPath;
	
 	//管理员邮箱
	private String adminEmail;
	
	private String superAccount;
	
	/**邮件信息**/
	
	//SMTP服务器地址
	private String smtpServer;
	
	// SMTP用户名
	private String smtpUser;
	
	// SMTP密码 
	private String smtpPass;
	
	
	public String getAdminEmail()
	{
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail)
	{
		this.adminEmail = adminEmail;
	}

	public String getSmtpServer()
	{
		return smtpServer;
	}

	public void setSmtpServer(String smtpServer)
	{
		this.smtpServer = smtpServer;
	}

	public String getSmtpUser()
	{
		return smtpUser;
	}

	public void setSmtpUser(String smtpUser)
	{
		this.smtpUser = smtpUser;
	}

	public String getSmtpPass()
	{
		return smtpPass;
	}

	public void setSmtpPass(String smtpPass)
	{
		this.smtpPass = smtpPass;
	}

	public String getWebUrl()
	{
		return webUrl;
	}

	public void setWebUrl(String webUrl)
	{
		this.webUrl = webUrl;
	}

	public String getWebPath()
	{
		return webPath;
	}

	public void setWebPath(String webPath)
	{
		this.webPath = webPath;
	}

    public String getSuperAccount()
    {
        return superAccount;
    }

    public void setSuperAccount(String superAccount)
    {
        this.superAccount = superAccount;
    }
}
