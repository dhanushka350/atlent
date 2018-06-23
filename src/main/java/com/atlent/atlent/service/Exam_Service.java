package com.atlent.atlent.service;

import com.atlent.atlent.dto.ExamDto;
import org.springframework.stereotype.Service;

import java.util.List;


public interface Exam_Service {
    public ExamDto saveExam(ExamDto dto);
    public List<ExamDto> getAllExams();
    public ExamDto getById(String id);
}
