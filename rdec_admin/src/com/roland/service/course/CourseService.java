package com.roland.service.course;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roland.dao.MyBatisDao;
import com.roland.model.Course;
import com.roland.model.ExtPage;
import com.roland.util.DateUtil;

@Service
public class CourseService
{
	private Map<String, Object> map = null;
	@Autowired
	private MyBatisDao myBatisDao;
	
	public List<Course> listCourse(Integer typeId,ExtPage extPage)
	{
        map = new HashMap<String, Object>();
        map.put("typeId", typeId);
        map.put("pageSize", extPage.getLimit());
        map.put("startPage", extPage.getStart());
		return myBatisDao.selectList("CourseMapper.listCourse",map);
	}
	public Integer courseCount(Integer typeId)
	{
	    return myBatisDao.selectOne("CourseMapper.courseCount",typeId);
	}
	
	public void updateDate()
	{
		map = new HashMap<String, Object>();
		for (int i = 1; i <= 135; i++) {
			map.put("date", DateUtil.timeNow());
			map.put("id", i);
			myBatisDao.update("CourseMapper.updateDate",map);
		}
	}

}
