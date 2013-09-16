package com.roland.service;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roland.dao.MyBatisDao;
import com.roland.model.competence.Competence;
import com.roland.model.competence.CompetenceAndGroup;
import com.roland.model.competence.GroupAndUser;
import com.roland.model.competence.Operation;
import com.roland.model.competence.UserGroup;

@Service
public class CompetenceService
{
	private Map<String, Object> map = null;
	@Autowired
	private MyBatisDao myBatisDao;

	//添加权限
	public void saveCompetence(Competence competence)
	{
		myBatisDao.insert("CompetenceMapper.save_competence", competence);
	}
	//添加用户组
	public void saveCompetenceGroup(UserGroup competenceGeoup)
	{
		myBatisDao.insert("CompetenceMapper.save_user_group", competenceGeoup);
	}
	//删除权限
	public void deleteCompetById(Integer competId)
	{
	    myBatisDao.delete("CompetenceMapper.delete_compet_by_id",competId);
	}
	
	
	
	/**
     * 
     * @param userId
     * @param groupId
     * 
     * 添加用户组
     */
    public Integer addUserAndGroup(Integer userId,Integer groupId)
    {
        map = new HashMap<String, Object>();
        map.put("userId", userId);
        map.put("groupId", groupId);
        return myBatisDao.insert("CompetenceMapper.addUserAndGroup",map);
    }
    
    public void insertCompetGroup(Integer groupId,Integer competId)
    {
        map = new HashMap<String, Object>();
        map.put("groupId", groupId);
        map.put("competId", competId);
        try
        {
            myBatisDao.insert("CompetenceMapper.insert_compet_group",map);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
    
    /**
     * 判断改用户是否已经属于某个权限组
     * @param userId
     * @param groupId
     * @return
     */
    public GroupAndUser countUserAndGroup(Integer userId,Integer groupId)
    {
        map = new HashMap<String, Object>();
        map.put("userId", userId);
        map.put("groupId", groupId);
        return myBatisDao.selectOne("CompetenceMapper.count_group_and_user",map);
    }
    

	// 根据id查询到权限
	public Competence competenceById(Integer id)
	{
		return myBatisDao.selectOne("CompetenceMapper.competence_by_id", id);
	}

	// 查询当权限组
	public List<CompetenceAndGroup> listCompetAndGroup(Integer groupid, Integer compeId)
	{
		map = new HashMap<String, Object>();
		map.put("groupid", groupid);
		map.put("compeId", compeId);
		return myBatisDao.selectList("CompetenceMapper.competence_and_group_by_groupId", map);
	}

	// 查询用户的权限组
	public List<GroupAndUser> listGroupAndUser(Integer groupId, Integer userId)
	{
		map = new HashMap<String, Object>();
		map.put("groupId", groupId);
		map.put("userId", userId);
		return myBatisDao.selectList("CompetenceMapper.group_and_user_by_userId", map);
	}
	//查询用户当前权限的一级目录
	public List<CompetenceAndGroup> listCompetAndGroupByParentIdIsZero(Integer groupid,Integer parentId)
	{
		map = new HashMap<String, Object>();
		map.put("groupId", groupid);
		map.put("parentId", parentId);
		return myBatisDao.selectList("CompetenceMapper.group_by_parent_zero", map);
	}
	//查询用户当前权限的二级目录
	public List<CompetenceAndGroup> listCompetAndGroupByParentId(Integer groupid)
	{
		map = new HashMap<String, Object>();
		map.put("groupId", groupid);
		return myBatisDao.selectList("CompetenceMapper.group_by_parent", map);
	}
	//根据id查询到用户组
	public UserGroup userGroupById(Integer groupId)
	{
	    return myBatisDao.selectOne("CompetenceMapper.user_group_by_id",groupId);
	}
	
	/**
	 * <!--根据权限组查询到对应的权限-->
	 * @param groupId
	 * @return
	 */
	public List<Competence> userCompetence(Integer groupId)
	{
	    return myBatisDao.selectList("user_compet_group_id",groupId);
	}

	// 查询用户有没有这个权限
	public boolean userIsCompet(Integer competId, Integer userId)
	{
		List<CompetenceAndGroup> listCAG = listCompetAndGroup(null, competId);
		List<GroupAndUser> listGAU = listGroupAndUser(null, userId);

		for (Iterator<CompetenceAndGroup> iterator = listCAG.iterator(); iterator.hasNext();)
		{
			CompetenceAndGroup cag = iterator.next();

			for (Iterator<GroupAndUser> iterator2 = listGAU.iterator(); iterator2.hasNext();)
			{
				GroupAndUser groupAndUser = iterator2.next();

				if (groupAndUser.getGroupId() == cag.getGroupid())
				{
					return true;
				}

			}

		}
		return false;
	}
	
	/**
	 * 查询用户组
	 */
	public List<UserGroup> listUserGroup(Integer userGroupId)
	{
	    return myBatisDao.selectList("CompetenceMapper.list_user_group",userGroupId);
	}
	
	/**
	 * 修改权限组
	 * @param competence
	 */
	public void updateCompet(Competence competence)
	{
	    myBatisDao.update("CompetenceMapper.update_competence",competence);
	}
	
	public void deleteCompetGroup(Integer competId)
	{
	    myBatisDao.delete("CompetenceMapper.delete_compet_group_by_competid", competId);
	}
	
	/**
	 * 以下是操作权限的具体按钮
	 * @return
	 */
	public List<Operation> listOperation()
	{
	    return myBatisDao.selectList("CompetenceMapper.select_compet_operation");
	}
	
	public void addOperation(Operation operation)
	{
	    myBatisDao.insert("CompetenceMapper.inser_compet_operation", operation);
	}
	
	public void delOperation(Integer operationId)
	{
	    myBatisDao.delete("CompetenceMapper.delete_compet_operation", operationId);
	}
	
	public void updateOperation(Operation operation)
	{
	    myBatisDao.update("CompetenceMapper.update_compet_operation", operation);
	}
	
	public void addCompOperation(Integer operationId,Integer competId)
	{
	    map = new HashMap<String, Object>();
	    map.put("operationId", operationId);
	    map.put("competId", competId);
	    myBatisDao.insert("CompetenceMapper.insert_compet_and_operation", map);
	}
	
	public void deleteCompOperation(Integer id)
	{
	    myBatisDao.delete("CompetenceMapper.delete_competence_and_operation",id);
	}

}
