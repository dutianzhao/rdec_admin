package com.roland.model;

import java.util.List;

public class PageModel 
{
	private Integer totalCount;
	private List<?> topics;
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public List<?> getTopics() {
		return topics;
	}
	public void setTopics(List<?> topics) {
		this.topics = topics;
	}
}
