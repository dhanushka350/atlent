package com.atlent.atlent.service;

import com.atlent.atlent.dto.ExamDto;
import com.atlent.atlent.dto.ExamScheduleDto;
import com.atlent.atlent.dto.ExamScheduleTableDataDto;
import org.springframework.stereotype.Service;

import java.util.List;


public interface Exam_Service {
    public ExamDto saveExam(ExamDto dto);

    public List<ExamDto> getAllExams();

    public ExamDto getById(String id);

    public boolean saveExamSchedule(ExamScheduleDto examScheduleDto) throws Exception;

    public List<ExamScheduleTableDataDto> getScheduleListDecendingOrder() throws Exception;

    public List<ExamScheduleTableDataDto> getScheduleByStudent(String nic) throws Exception;

    public List<ExamScheduleTableDataDto> getSchedulesByExam(String id) throws Exception;

}
