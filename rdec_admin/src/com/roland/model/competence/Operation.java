package com.roland.model.competence;

public class Operation
{
    private Integer id;
    
    private String name;
    
    private String iconCls;
    
    private String htmlId;
    
    private Integer competId;

    public Integer getId()
    {
        return id;
    }

    public void setId(Integer id)
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

    public String getIconCls()
    {
        return iconCls;
    }

    public void setIconCls(String iconCls)
    {
        this.iconCls = iconCls;
    }

    public String getHtmlId()
    {
        return htmlId;
    }

    public void setHtmlId(String htmlId)
    {
        this.htmlId = htmlId;
    }

    public Integer getCompetId()
    {
        return competId;
    }

    public void setCompetId(Integer competId)
    {
        this.competId = competId;
    }
}
