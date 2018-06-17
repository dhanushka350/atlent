package com.atlent.atlent.controllers;

import com.atlent.atlent.dto.UserDto;
import com.atlent.atlent.service.User_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RestController
@RequestMapping(value = "/login")
public class LoginController {

    @Autowired
    private User_Service service;

    @RequestMapping(value = {"/request/authorization"}, method = RequestMethod.POST)
    @ResponseBody
    public boolean search(@RequestParam(value = "name") String name, @RequestParam(value = "password") String password, HttpServletResponse response) throws IOException {

        boolean res = false;

        UserDto userDto = new UserDto();
        userDto.setUser(name);
        userDto.setPass(password);

        try {
            res = service.check_login(userDto);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }

}
