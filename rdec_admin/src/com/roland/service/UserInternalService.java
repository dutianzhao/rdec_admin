package com.roland.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roland.dao.MyBatisDao;
import com.roland.model.ExtPage;
import com.roland.model.ManagerAdmin;
import com.roland.model.UserInternal;
import com.roland.util.Md5;

/** 用户 **/
@Service("UserService")
public class UserInternalService
{

	@Autowired
	private MyBatisDao myBatisDao;
	
	@Autowired
	private UtilService utilService;
	
	private Map<String,Object> map = null;
	
	public UserInternal login(String username,String password)
	{
		map = new HashMap<String, Object>();
		map.put("username", username);
		map.put("password", password);
		return myBatisDao.selectOne("UserMapper.userLogin",map);
	}
	
	public UserInternal userById(Integer userId)
	{
		return myBatisDao.selectOne("UserMapper.userById",userId);
	}
	
	public void updatePassword(Integer userId,String newPassword)
	{
		map = new HashMap<String, Object>();
		map.put("newPassword", newPassword);
		map.put("userId", userId);
		myBatisDao.selectList("UserMapper.updatePassword", map);
	}
	/**
	 * 查询所有管理员
	 */
	public Integer countUserByGroup(Integer groupId)
	{
	    return myBatisDao.selectOne("UserMapper.countUserByGroup",groupId);
	}
	public Integer addUserInternal(UserInternal user)
	{
	    return myBatisDao.insert("UserMapper.add_user_internal",user);
	}
	
	
	
	/**
	 * 查询管理员
	 * @return
	 */
	public List<ManagerAdmin> listManagerAdmin(ExtPage extPage)
	{
	    List<ManagerAdmin> listManagerAdmin = myBatisDao.selectList("UserMapper.schoolInAdmin",extPage);
	    for (Iterator<ManagerAdmin> iterator = listManagerAdmin.iterator(); iterator.hasNext();)
        {
            ManagerAdmin managerAdmin = iterator.next();
            
            if(("").equals(managerAdmin.getCityName()) || null == managerAdmin.getCityName())
            {
                continue;
            }
            
            Integer cityId = new Integer(managerAdmin.getCityName());
            while (true)
            {
                Map<String,Object> mapObject = utilService.cityById(cityId);

                Integer cityParentId = (Integer)mapObject.get("parent_id");
                
                
                if(cityParentId == 1)
                {
                    managerAdmin.setCityName(mapObject.get("name").toString());
                    break;
                }else
                {
                    cityId = cityParentId;
                }
                    
            }
            
        }
	    return listManagerAdmin;
	}
	
	public void userAddSchool(Integer schoolId,Integer userId)
    {
	    map = new HashMap<String, Object>();
	    map.put("schoolId", schoolId);
	    map.put("userId", userId);
        myBatisDao.insert("UserMapper.user_add_school", map);
    }
	
	
	/*******************************************************************************************
	 * 以下是测试的
	 * @return
	 */
	public List<Map<String,Object>> listLuser()
	{
	    return myBatisDao.selectList("UserMapper.luser");
	}
	public void updatePassword(String username,String newPassword)
    {
        map = new HashMap<String, Object>();
        map.put("newPassword", Md5.md5(newPassword));
        map.put("userId", username);
        myBatisDao.selectList("UserMapper.updatePasswordTest", map);
    }
	
	/**
     * 根据名字查询到用户
     * @param username
     * @return
     */
	public UserInternal userIntegerByName(String username)
	{
	    return myBatisDao.selectOne("UserMapper.userInternalByName",username);
	}
	
	
	public List<Map<String,Object>> test1()
    {
       return  myBatisDao.selectList("UserMapper.lusergroup");
    }
    
	
	public Map<String,Object> test2(Integer id)
	{
	   return  myBatisDao.selectOne("UserMapper.lusergroupByid", id);
	}
	
	/**
	 * 查询出来用户所在的学校
	 */
	public List<Map<String,Object>> userSchool()
	{
	    return myBatisDao.selectList("UserMapper.user_school_test");
	}
	
	/**
	 * 20分钟时间段添加时间
	 * @param nowTime
	 * @param number
	 * @return
	 */
	public String after(String nowTime, Integer number)
	{
		String jisuanTime = "";
		String pattern = "HH:mm";
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		Date now = null;
		try
		{
			now = sdf.parse(nowTime);
		}
		catch (ParseException e)
		{
			e.printStackTrace();
		}
		Calendar c = Calendar.getInstance();
		c.setTime(now);
		c.add(Calendar.MINUTE, number);
		
		jisuanTime = c.get(Calendar.HOUR_OF_DAY) + ":" + c.get(Calendar.MINUTE);
		
		if(c.get(Calendar.HOUR_OF_DAY) != 12)
		{
			myBatisDao.insert("UserMapper.addDate",jisuanTime);
		}
		return jisuanTime;
	}
}