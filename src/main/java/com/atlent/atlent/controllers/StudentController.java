package com.atlent.atlent.controllers;

import com.atlent.atlent.dto.LisenceCategoryDto;
import com.atlent.atlent.dto.RegistrationDataTransfer;
import com.atlent.atlent.dto.StudentDto;
import com.atlent.atlent.service.User_Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/Student")
public class StudentController {

    private static final Logger LOG = LoggerFactory.getLogger(StudentController.class);
    @Autowired
    private User_Service userService;

    @RequestMapping(value = "save/student/details", method = RequestMethod.POST, consumes = "application/json", produces = MediaType.APPLICATION_JSON_VALUE)
    public boolean saveStudent(@RequestBody RegistrationDataTransfer dataTransfer) {
        LOG.info("START:saving student data.." + dataTransfer.getM_description());

        boolean res = false;
        try {
            res = userService.saveStudent(dataTransfer);
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

    @RequestMapping(value = {"check/before/registration"}, method = RequestMethod.POST, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public RegistrationDataTransfer getCurrentData(@RequestBody String nic) {
        LOG.info("START:get current data");
        RegistrationDataTransfer registration = null;
        try {
            registration = userService.getStudentDetailsForRegistration(nic);
        } catch (Exception e) {
            e.printStackTrace();
        }
        LOG.info("END: current data check..");
        return registration;
    }

}
