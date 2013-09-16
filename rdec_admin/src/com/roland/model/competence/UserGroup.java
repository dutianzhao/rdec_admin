package com.roland.model.competence;

public class UserGroup
{
	private int id;

	private String name;

	private String gIoc;
	
	private Integer states;
	
	private Integer sortId;

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

	public String getgIoc()
	{
		return gIoc;
	}

	public void setgIoc(String gIoc)
	{
		this.gIoc = gIoc;
	}

    public Integer getStates()
    {
        return states;
    }

    public void setStates(Integer states)
    {
        this.states = states;
    }

    public Integer getSortId()
    {
        return sortId;
    }

    public void setSortId(Integer sortId)
    {
        this.sortId = sortId;
    }

}
