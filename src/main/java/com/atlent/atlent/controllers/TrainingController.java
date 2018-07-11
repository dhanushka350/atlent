package com.atlent.atlent.controllers;

import com.atlent.atlent.dto.ExamDto;
import com.atlent.atlent.dto.TrainingDto;
import com.atlent.atlent.service.Training_Service;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.logging.Logger;

@RestController
@RequestMapping(value ="/training" )
public class TrainingController {

    @Autowired
    private Training_Service service;

    @RequestMapping(value = {"/request/new/training"}, method = RequestMethod.POST, consumes = "application/json", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public TrainingDto saveTraining(@RequestBody TrainingDto dto) {

        return service.saveTraining(dto);
    }

}
