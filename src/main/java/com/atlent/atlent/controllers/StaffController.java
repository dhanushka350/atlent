package com.atlent.atlent.controllers;

import com.atlent.atlent.dto.RegistrationDataTransfer;
import com.atlent.atlent.dto.StaffDto;
import com.atlent.atlent.service.User_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/Staff")
public class StaffController {

    @Autowired
    private User_Service userService;

    @RequestMapping(value = "save/user/details", method = RequestMethod.POST, consumes = "application/json", produces = MediaType.APPLICATION_JSON_VALUE)
    public boolean saveStaff(@RequestBody StaffDto staffDto) {

        boolean res = false;

        try {
            res = userService.saveStaff(staffDto);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return res;
    }


}
