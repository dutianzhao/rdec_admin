package com.roland.controller.course;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roland.model.ExtPage;
import com.roland.model.PageModel;
import com.roland.service.course.CourseService;

@Controller
@RequestMapping("/course")
public class CourseController 
{
	@Autowired
	private CourseService courseService;
	
	@RequestMapping
	@ResponseBody
	public Object listCourse(Integer typeId,ExtPage extPage)
	{
	    PageModel pageModel = new PageModel();
        pageModel.setTotalCount(courseService.courseCount(typeId));
        pageModel.setTopics(courseService.listCourse(typeId,extPage));
        return pageModel;
	}
	
	@RequestMapping("/toCourse")
    public String toCourse()
    {
        return "course/course";
    }

	@RequestMapping("/updateDate")
	public void updateDate()
	{
		courseService.updateDate();
	}
}
