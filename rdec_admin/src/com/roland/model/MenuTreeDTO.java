package com.roland.model;

import java.util.List;


public class MenuTreeDTO
{
	private Integer id;
	private String iconCls;
	private boolean leaf = true;
	private String text;
	private Integer groudId;
	private String clickHref;
	private Integer parentId;
	private List<MenuTreeDTO> children;
	
	public Integer getId()
	{
		return id;
	}
	public void setId(Integer id)
	{
		this.id = id;
	}
	public String getIconCls()
	{
		return iconCls;
	}
	public void setIconCls(String iconCls)
	{
		this.iconCls = iconCls;
	}
	public boolean getLeaf()
	{
		return leaf;
	}
	public void setLeaf(boolean leaf)
	{
		this.leaf = leaf;
	}
	public String getText()
	{
		return text;
	}
	public void setText(String text)
	{
		this.text = text;
	}
	public String getClickHref() {
		return clickHref;
	}
	public void setClickHref(String clickHref) {
		this.clickHref = clickHref;
	}
	public Integer getGroudId() {
		return groudId;
	}
	public void setGroudId(Integer groudId) {
		this.groudId = groudId;
	}
    public Integer getParentId()
    {
        return parentId;
    }
    public void setParentId(Integer parentId)
    {
        this.parentId = parentId;
    }
    public List<MenuTreeDTO> getChildren()
    {
        return children;
    }
    public void setChildren(List<MenuTreeDTO> children)
    {
        this.children = children;
    }

}
