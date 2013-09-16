package com.roland.system;

public class SysCpu
{
	private Integer id;
	
	private String type;
	
	private String userCpu;
	
	private String sysCpu;
	
	//空闲CPU
	private String idleCpu;
	//总使用率
	private String totalUsr;
	
	public Integer getId()
	{
		return id;
	}
	public void setId(Integer id)
	{
		this.id = id;
	}
	public String getType()
	{
		return type;
	}
	public void setType(String type)
	{
		this.type = type;
	}
	public String getUserCpu()
	{
		return userCpu;
	}
	public void setUserCpu(String userCpu)
	{
		this.userCpu = userCpu;
	}
	public String getSysCpu()
	{
		return sysCpu;
	}
	public void setSysCpu(String sysCpu)
	{
		this.sysCpu = sysCpu;
	}
	public String getIdleCpu()
	{
		return idleCpu;
	}
	public void setIdleCpu(String idleCpu)
	{
		this.idleCpu = idleCpu;
	}
	public String getTotalUsr()
	{
		return totalUsr;
	}
	public void setTotalUsr(String totalUsr)
	{
		this.totalUsr = totalUsr;
	}
}
