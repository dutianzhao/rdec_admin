package com.roland.system;

/**
 * 内存
 *
 */
public class SysMemory
{
	private Integer id;
	
	private String memoryNum;
	
	//使用
	private String memoryUsr;
	//剩余
	private String surplus;
	
	public Integer getId()
	{
		return id;
	}
	public void setId(Integer id)
	{
		this.id = id;
	}
	public String getMemoryUsr()
	{
		return memoryUsr;
	}
	public void setMemoryUsr(String memoryUsr)
	{
		this.memoryUsr = memoryUsr;
	}
	public String getSurplus()
	{
		return surplus;
	}
	public void setSurplus(String surplus)
	{
		this.surplus = surplus;
	}
	public String getMemoryNum()
	{
		return memoryNum;
	}
	public void setMemoryNum(String memoryNum)
	{
		this.memoryNum = memoryNum;
	}
}
