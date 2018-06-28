package com.atlent.atlent.controllers;

import com.atlent.atlent.MailingSystem.AuroraMailSystem;
import com.atlent.atlent.dto.MailDto;
import com.atlent.atlent.dto.UserDto;
import com.atlent.atlent.service.User_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RestController
@RequestMapping(value = "/Mail")
public class MailController {

    @Autowired
    private AuroraMailSystem mailSyystem;

    @RequestMapping(value = {"/request/mail/service"}, method = RequestMethod.POST)
    @ResponseBody
    public boolean search(@RequestParam(value = "subject") String subject, @RequestParam(value = "message") String message, HttpServletResponse response) throws IOException {

        MailDto mailDto = new MailDto();
        mailDto.setMessage(message);
        mailDto.setSubject(subject);
        mailSyystem.sendMail(mailDto);
        return true;
    }

}
