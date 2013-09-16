package com.roland.service.student;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roland.dao.MyBatisDao;
import com.roland.model.Student;

@Service
public class StudentService
{
    private Map<String, Object> map = null;

    @Autowired
    private MyBatisDao myBatisDao;
    
    /**
     * 集团查询潜在用户
     * @return
     */
    public List<Student> listStudent()
    {
        return myBatisDao.selectList("StudentMapper.list_student_qian");
    }
    
    public Integer listStudentQianCount()
    {
        return myBatisDao.selectOne("StudentMapper.list_student_qian_count");
    }
    /**
     * 学校查询潜在用户
     */
    public List<Student> listStudentBySchool(Integer SchoolId)
    {
        return myBatisDao.selectList("StudentMapper.list_student_by_school",SchoolId);
    }
    public Integer listStudentBySchoolCount(Integer SchoolId)
    {
        return myBatisDao.selectOne("StudentMapper.list_student_by_school_count",SchoolId);
    }
    
    /**
     * 市场专员查询潜在用户
     */
    public List<Student> listStudentByCreateUser(Integer saveUserId)
    {
        return myBatisDao.selectList("StudentMapper.list_student_by_create_user",saveUserId);
    }
    
    /**
     * 咨询师查询
     */
    public List<Student> listStudentByInternal(Integer userId)
    {
        return myBatisDao.selectList("StudentMapper.list_member_by_internal",userId);
    }

}
