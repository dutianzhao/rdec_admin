package com.roland.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roland.dao.MyBatisDao;
import com.roland.model.Activity;
import com.roland.model.ExtPage;

@Service
public class ActivityService
{
    /**
     * 修改/添加/修改状态
     */
    private Map<String, Object> map = null;

    @Autowired
    private MyBatisDao myBatisDao;

    public List<Activity> listAvtivity(Integer schoolId, Integer citySheng, ExtPage extPage)
    {
        map = new HashMap<String, Object>();
        map.put("citySheng", citySheng);
        map.put("schoolId", schoolId);
        map.put("pageSize", extPage.getLimit());
        map.put("startPage", extPage.getStart());
        return myBatisDao.selectList("ActivityMapper.list_activity_school", map);
    }

    public int listAvtivityCount(Integer schoolId)
    {
        return myBatisDao.selectOne("ActivityMapper.list_activity_count", schoolId);
    }

    public void updateAvtivity(Activity activity)
    {
        myBatisDao.update("ActivityMapper.update_activity", activity);
    }

    public void addAvtivity(Activity activity)
    {
        myBatisDao.insert("ActivityMapper.insert_activity", activity);
    }

    public void updateActivityStatus(String activityId, String statusId)
    {
        map = new HashMap<String, Object>();
        map.put("activityId", activityId);
        map.put("statusId", statusId);
        myBatisDao.update("ActivityMapper.update_avtivity_status", map);
    }

    public Activity activityById(Integer acitivityById)
    {
        return myBatisDao.selectOne("ActivityMapper.activity_by_id", acitivityById);
    }

}
