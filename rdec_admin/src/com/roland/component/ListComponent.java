package com.roland.component;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.roland.util.Config;

/**
 * 任务调度，抓取任务
 * 
 * @author liuyd
 * 
 */
@Component
public class ListComponent
{
	@Autowired
	private Config config;

	// @Scheduled(fixedDelay = 1800000)
	void crawIntent() throws Exception
	{

	}

}
