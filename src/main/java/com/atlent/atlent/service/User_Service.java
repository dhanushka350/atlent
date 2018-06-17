package com.atlent.atlent.service;

import com.atlent.atlent.dto.StudentDto;
import com.atlent.atlent.dto.UserDto;


public interface User_Service {

    public boolean check_login(UserDto userDto) throws Exception;

    public boolean saveStudent(StudentDto studentDto) throws Exception;
}
