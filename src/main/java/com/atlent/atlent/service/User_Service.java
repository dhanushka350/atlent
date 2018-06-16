package com.atlent.atlent.service;

import com.atlent.atlent.dto.StudentDto;
import com.atlent.atlent.dto.User;


public interface User_Service {

    public boolean check_login(User user) throws Exception;

    public boolean saveStudent(StudentDto studentDto) throws Exception;
}
