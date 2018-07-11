package com.atlent.atlent.service;

import com.atlent.atlent.dto.TrainingDto;

import java.util.List;

public interface Training_Service {

    public TrainingDto saveTraining(TrainingDto dto);

    public List<TrainingDto> getAllExams();

    public TrainingDto getById(String id);

//    public boolean saveExamSchedule(ExamScheduleDto examScheduleDto) throws Exception;
//
//    public List<ExamScheduleTableDataDto> getScheduleListDecendingOrder() throws Exception;
//
//    public List<ExamScheduleTableDataDto> getScheduleByStudent(String nic) throws Exception;
//
//    public List<ExamScheduleTableDataDto> getSchedulesByExam(String id) throws Exception;
}
