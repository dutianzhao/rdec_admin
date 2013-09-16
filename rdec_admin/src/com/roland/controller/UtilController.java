package com.roland.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roland.controller.util.UserSessionUtil;
import com.roland.dto.TestDto;
import com.roland.model.Status;
import com.roland.service.UtilService;

@Controller
@RequestMapping("/util")
public class UtilController extends ControllerUtil
{
	@Autowired
	private UtilService utilService;
	
	 @Autowired
    private UserSessionUtil userSession;

	
	@RequestMapping("/city")
	@ResponseBody
	public Object listCity(Integer parentId)
	{
		if(parentId == null)
		{
			parentId = 1;
		}
		return utilService.listCity(parentId);
	}
	
	@RequestMapping("/selStatus")
	@ResponseBody
	public Object selStatus(Integer typeId)
	{
		return utilService.statusByTypeId(typeId);
	}
	
	@RequestMapping("/selStatusByGrid")
	@ResponseBody
	public Object selStatusByGrid(Integer typeId)
	{
	   List<Status> list = utilService.statusByTypeId(typeId);
	   List<TestDto> listDto = new ArrayList<TestDto>();
        for (Iterator<Status> iterator = list.iterator(); iterator.hasNext();)
        {
            Status status = iterator.next();
            TestDto testDto = new TestDto();
            testDto.setName(status.getName());
            testDto.setId(status.getId());
            listDto.add(testDto);
        }
        return listDto;
	}
}
