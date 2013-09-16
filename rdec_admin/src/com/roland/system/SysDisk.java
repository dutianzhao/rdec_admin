package com.roland.system;

public class SysDisk
{
	private Integer id;
	//盘符名称
	private String nameDisk;
	//文件系统类型
	private String typeDisk;
	//总大小
	private String totalDisk;
	//剩余
	private String freeDisk; 
	//文件系统已经使用量
	private String useDisk;
	//文件系统资源的利用率
	private String usageDisk;
	
	public Integer getId()
	{
		return id;
	}
	public void setId(Integer id)
	{
		this.id = id;
	}
	public String getNameDisk()
	{
		return nameDisk;
	}
	public void setNameDisk(String nameDisk)
	{
		this.nameDisk = nameDisk;
	}
	public String getTypeDisk()
	{
		return typeDisk;
	}
	public void setTypeDisk(String typeDisk)
	{
		this.typeDisk = typeDisk;
	}
	public String getTotalDisk()
	{
		return totalDisk;
	}
	public void setTotalDisk(String totalDisk)
	{
		this.totalDisk = totalDisk;
	}
	public String getFreeDisk()
	{
		return freeDisk;
	}
	public void setFreeDisk(String freeDisk)
	{
		this.freeDisk = freeDisk;
	}
	public String getUseDisk()
	{
		return useDisk;
	}
	public void setUseDisk(String useDisk)
	{
		this.useDisk = useDisk;
	}
	public String getUsageDisk()
	{
		return usageDisk;
	}
	public void setUsageDisk(String usageDisk)
	{
		this.usageDisk = usageDisk;
	} 
}
