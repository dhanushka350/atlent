package com.atlent.atlent.controllers;

import com.atlent.atlent.dto.User;
import com.atlent.atlent.service.User_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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

        User user = new User();
        user.setUser(name);
        user.setPass(password);

        try {
            res = service.check_login(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }

}
