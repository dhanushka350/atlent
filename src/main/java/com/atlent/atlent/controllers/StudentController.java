package com.atlent.atlent.controllers;

import com.atlent.atlent.dto.LisenceCategoryDto;
import com.atlent.atlent.dto.StudentDto;
import com.atlent.atlent.service.User_Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/Student")
public class StudentController {

    private static final Logger LOG = LoggerFactory.getLogger(StudentController.class);
    @Autowired
    private User_Service userService;

    @RequestMapping(value = "save/student/details", method = RequestMethod.POST, consumes = "application/json", produces = "application/json")
    public boolean saveStudent(@RequestBody StudentDto studentDto) {
        LOG.info("START:saving student data..", studentDto);

        boolean res = false;
        try {
            res = userService.saveStudent(studentDto);
        } catch (Exception e) {
            e.printStackTrace();
        }
        LOG.info("END:saving student data..", "is saved ? " + res);
        return res;
    }

    @RequestMapping(value = {"all/student/list"}, method = RequestMethod.GET, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public List<StudentDto> getAllStudent() {
        LOG.info("START: get all student packages");
        List<StudentDto> list = null;
        try {
            list = userService.getAllStudentList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        LOG.info("END: get all student packages. > found " + list.size() + " student");
        return list;
    }

}
