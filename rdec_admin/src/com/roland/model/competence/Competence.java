package com.roland.model.competence;

public class Competence
{
	private int id;

	private String name;
	
	private String ioc;
	
	private int parentId;

	private String linkUrl;
	
	private boolean isOperation;
	
	public int getId()
	{
		return id;
	}

	public void setId(int id)
	{
		this.id = id;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getLinkUrl()
	{
		return linkUrl;
	}

	public void setLinkUrl(String linkUrl)
	{
		this.linkUrl = linkUrl;
	}

	public int getParentId()
	{
		return parentId;
	}

	public void setParentId(int parentId)
	{
		this.parentId = parentId;
	}

	public String getIoc()
	{
		return ioc;
	}

	public void setIoc(String ioc)
	{
		this.ioc = ioc;
	}

    public boolean isOperation()
    {
        return isOperation;
    }

    public void setOperation(boolean isOperation)
    {
        this.isOperation = isOperation;
    }
}
