package com.atlent.atlent.controllers;

import com.atlent.atlent.MailingSystem.AuroraMailSystem;
import com.atlent.atlent.dto.*;
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
    @Autowired
    private AuroraMailSystem mailSystem;

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
            mailSystem.reportException(e);

        }
        LOG.info("END: get all exam dates. > found " + list.size() + " dates");
        return list;
    }

    @RequestMapping(value = {"get/exam"}, method = RequestMethod.POST, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public ExamDto getExam(@RequestBody ExamDto dto) {
        LOG.info("START: get exam");
        ExamDto data = null;
        try {
            data = service.getById(dto.getId() + "");
        } catch (Exception e) {
            e.printStackTrace();
            mailSystem.reportException(e);
        }
        LOG.info("END: exam found!");
        return data;
    }

    @RequestMapping(value = {"/save/new/schedule"}, method = RequestMethod.POST, consumes = "application/json", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public boolean saveExam(@RequestBody ExamScheduleDto dto) {
        boolean res = false;
        try {
            System.out.println("controllerrrrr");
            res = service.saveExamSchedule(dto);
        } catch (Exception e) {
            e.printStackTrace();
            mailSystem.reportException(e);
        }
        return res;
    }

    @RequestMapping(value = {"all/exam/schedule/list"}, method = RequestMethod.GET, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public List<ExamScheduleTableDataDto> getAllExamSchedules() {
        LOG.info("START: get all schedule dates");
        List<ExamScheduleTableDataDto> list = null;
        try {
            list = service.getScheduleListDecendingOrder();
        } catch (Exception e) {
            e.printStackTrace();
            mailSystem.reportException(e);
        }
        LOG.info("END: get all schedule dates. > found " + list.size() + " schedules");
        return list;
    }

    @RequestMapping(value = {"all/exam/schedule/list/by/student_nic"}, method = RequestMethod.POST, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public List<ExamScheduleTableDataDto> getAllExamSchedulesByNic(@RequestBody String nic) {
        LOG.info("START: get all schedule dates by nic");
        List<ExamScheduleTableDataDto> list = null;
        try {
            list = service.getScheduleByStudent(nic);
        } catch (Exception e) {
            e.printStackTrace();
            mailSystem.reportException(e);
        }
        LOG.info("END: get all schedule by nic > found " + list.size() + " schedules");
        return list;
    }

    @RequestMapping(value = {"all/exam/schedule/list/by/exam"}, method = RequestMethod.POST, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public List<ExamScheduleTableDataDto> getAllExamSchedulesByExam(@RequestBody String id) {
        LOG.info("START: get all schedule dates by exam");
        List<ExamScheduleTableDataDto> list = null;
        try {
            list = service.getSchedulesByExam(id);
        } catch (Exception e) {
            e.printStackTrace();
            mailSystem.reportException(e);
        }
        LOG.info("END: get all schedule by exam > found " + list.size() + " schedules");
        return list;
    }
}
