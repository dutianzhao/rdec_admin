package com.roland.model;

import java.util.List;
import java.util.Map;

import com.roland.model.competence.Competence;
import com.roland.model.competence.GroupAndUser;

public class UserLoginSession
{
    private Integer userId;

    private String userName;

    private String nickName;

    //用户所在学校
    private List<School> userSchool;
    
    private School nowSchool;
    
    //用户权限组
    private List<GroupAndUser> userGroupList;

    //用户权限
    private Map<Integer, Competence> userCompetence;   

    public Integer getUserId()
    {
        return userId;
    }

    public void setUserId(Integer userId)
    {
        this.userId = userId;
    }

    public String getUserName()
    {
        return userName;
    }

    public void setUserName(String userName)
    {
        this.userName = userName;
    }

    public String getNickName()
    {
        return nickName;
    }

    public void setNickName(String nickName)
    {
        this.nickName = nickName;
    }

    public Map<Integer, Competence> getUserCompetence()
    {
        return userCompetence;
    }

    public void setUserCompetence(Map<Integer, Competence> userCompetence)
    {
        this.userCompetence = userCompetence;
    }

    public List<School> getUserSchool()
    {
        return userSchool;
    }

    public void setUserSchool(List<School> userSchool)
    {
        this.userSchool = userSchool;
    }

    public List<GroupAndUser> getUserGroupList()
    {
        return userGroupList;
    }

    public void setUserGroupList(List<GroupAndUser> userGroupList)
    {
        this.userGroupList = userGroupList;
    }

    public School getNowSchool()
    {
        return nowSchool;
    }

    public void setNowSchool(School nowSchool)
    {
        this.nowSchool = nowSchool;
    }
}
