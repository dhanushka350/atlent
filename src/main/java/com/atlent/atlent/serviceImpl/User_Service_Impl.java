package com.atlent.atlent.serviceImpl;

import com.atlent.atlent.dto.StudentDto;
import com.atlent.atlent.dto.UserDto;
import com.atlent.atlent.models.Student;
import com.atlent.atlent.models.SystemUser;
import com.atlent.atlent.repository.StudentDao;
import com.atlent.atlent.repository.SystemUserDao;
import com.atlent.atlent.service.User_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
public class User_Service_Impl implements User_Service {

    @Autowired
    private SystemUserDao dao;
    @Autowired
    private StudentDao studentDao;

    @Override
    public boolean check_login(UserDto userDto) throws Exception {

        boolean res = false;
        SystemUser systemUser = dao.findSystemUserByUserEqualsAndPasswordEquals(userDto.getUser(), userDto.getPass());
        if (systemUser != null) {
            res = true;
        }
        return res;
    }

    @Override
    public boolean saveStudent(StudentDto studentDto) throws Exception {

        boolean res = false;
        Student student = new Student();
        student.setName(studentDto.getName());
        student.setAddress(studentDto.getAddress());
        student.setAge(studentDto.getAge());
        student.setDate_of_birth(studentDto.getDate_of_birth());
        student.setGender(studentDto.getGender());
        student.setMobile(studentDto.getMobile());
        student.setNic(studentDto.getNic());
        System.out.println(studentDto.getNic());
        student.setPassword(studentDto.getPassword());
        Student save = studentDao.save(student);

        if(save != null){
            res = true;
        }
        return res;
    }
}
