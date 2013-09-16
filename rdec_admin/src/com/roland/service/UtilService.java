package com.roland.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roland.dao.MyBatisDao;
import com.roland.model.ChannelType;
import com.roland.model.City;
import com.roland.model.Status;

@Service
public class UtilService 
{
	private Map<String, Object> map = null;
	@Autowired
	private MyBatisDao myBatisDao;
	
	public List<City> listCity(Integer parentId)
	{
		return myBatisDao.selectList("UtilMapper.city_by_parent_id",parentId);
	}
	
	public List<Status> statusByTypeId(Integer typeId)
	{
		return myBatisDao.selectList("UtilMapper.status_by_type_id",typeId);
	}
	/**
	 * 传入一个id把省查询出来
	 */
	public Map<String,Object> cityById(Integer cityId)
	{
	    return myBatisDao.selectOne("UtilMapper.selCity",cityId);
	}
}
