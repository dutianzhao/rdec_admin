package com.roland.controller.student;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roland.controller.ControllerUtil;
import com.roland.controller.util.UserSessionUtil;
import com.roland.model.ExtPage;
import com.roland.model.PageModel;
import com.roland.model.UserLoginSession;
import com.roland.service.student.StudentService;
import com.roland.util.Config;

@RequestMapping("/student")
@Controller
public class StudentController extends ControllerUtil
{
    @Autowired
    private StudentService studentService;

    @Autowired
    private UserSessionUtil userSession;

    @Autowired
    private Config config;

    private UserLoginSession user = null;

    // 查询潜在用户
    @RequestMapping
    public String toStudent()
    {
        return "student/student";
    }

    @RequestMapping("/list_student")
    @ResponseBody
    public Object listStudent(ExtPage extPage)
    {
        user = userSession.getUser(request);
        if (user != null)
        {
            if (config.getSuperAccount().equals(user.getUserName()))
            {
                PageModel pageModel = new PageModel();
                pageModel.setTotalCount(studentService.listStudentQianCount());
                pageModel.setTopics(studentService.listStudent());
                return pageModel;
            }
        }
        return null;
    }
    
    @RequestMapping("/list_student_by_school")
    @ResponseBody
    public Object listStudentBySchool()
    {
        return null;
    }
}
