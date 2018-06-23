package com.atlent.atlent.controllers;

import com.atlent.atlent.dto.ExamDto;
import com.atlent.atlent.dto.StudentDto;
import com.atlent.atlent.service.Exam_Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/exam")
public class ExamController {
    private static final Logger LOG = LoggerFactory.getLogger(ExamController.class);
    @Autowired
    private Exam_Service service;

    @RequestMapping(value = {"/request/new/exam"}, method = RequestMethod.POST, consumes = "application/json", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public ExamDto saveExam(@RequestBody ExamDto dto) {

        return service.saveExam(dto);
    }

    @RequestMapping(value = {"all/exam/list"}, method = RequestMethod.GET, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public List<ExamDto> getAllExam() {
        LOG.info("START: get all exam dates");
        List<ExamDto> list = null;
        try {
            list = service.getAllExams();
        } catch (Exception e) {
            e.printStackTrace();
        }
        LOG.info("END: get all exam dates. > found " + list.size() + " dates");
        return list;
    }
    @RequestMapping(value = {"get/exam"}, method = RequestMethod.GET)
    @ResponseBody
    public ExamDto getExam(@RequestParam(value = "id") String id) {
        LOG.info("START: get exam");
        ExamDto data = null;
        try {
            data = service.getById(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        LOG.info("END: exam found!");
        return data;
    }
}
