package com.atlent.atlent.service;


import com.atlent.atlent.dto.MedicalDto;
import com.atlent.atlent.dto.StudentDto;
import com.atlent.atlent.dto.UserDto;


import java.util.List;

public interface User_Service {

    public boolean check_login(UserDto userDto) throws Exception;

    public boolean saveStudent(StudentDto studentDto) throws Exception;

    public List<StudentDto> getAllStudentList() throws Exception;

}
