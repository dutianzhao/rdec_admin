package com.roland.service.school;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roland.dao.MyBatisDao;
import com.roland.model.School;

@Service
public class SchoolService 
{
	private Map<String, Object> map = null;
	@Autowired
	private MyBatisDao myBatisDao;
	
	public Integer schoolCount()
	{
		return myBatisDao.selectOne("SchoolMapper.schoolCount");
	}
	
	public void addSchool(School school)
	{
		myBatisDao.insert("SchoolMapper.addSchool", school);
	}
	
	public void delSchool(Integer id)
	{
		myBatisDao.delete("SchoolMapper.delSchool",id);
	}
	
	/**
	 * 根据用户ID查询所在学校
	 */
	public List<School> userSchoolByUID(Integer userId)
	{
	    return myBatisDao.selectList("SchoolMapper.user_school_usid",userId);
	}
	/**
	 * 查询所有学校信息
	 */
	public List<School> allSchool()
	{
	    return myBatisDao.selectList("SchoolMapper.all_school_no_page");
	}
	
	/**
	 * 修改学校状态
	 */
	public void updateSchoolStatus(String schoolId,String statusId)
	{
	    map = new HashMap<String, Object>();
	    map.put("schoolId", schoolId);
	    map.put("statusId", statusId);
	    myBatisDao.update("SchoolMapper.update_school_status", map);
	}
	
}
