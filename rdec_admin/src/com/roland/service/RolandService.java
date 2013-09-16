package com.roland.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roland.DataBaseName;
import com.roland.dao.MyBatisDao;
/**
 * 通用的，只实现了查询表的所有数据
 * @author LD
 *
 */
@Service
public class RolandService
{
	
	@Autowired
	private MyBatisDao myBatisDao;
	private Map<String,Object> map = null;
	/**
	 * 查询所有
	 * @param dateName
	 * @return String dateName
	 */
	public List<Map<String, Object>> listAll(String dateName)
	{
		map = new HashMap<String, Object>();
		map.put(DataBaseName.dataBase, dateName);
		return myBatisDao.selectList("CbmsMapper.list", map);
	}
}
