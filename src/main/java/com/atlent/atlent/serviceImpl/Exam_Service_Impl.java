package com.atlent.atlent.serviceImpl;

import com.atlent.atlent.dto.ExamDto;
import com.atlent.atlent.models.Exam;
import com.atlent.atlent.repository.ExamDao;
import com.atlent.atlent.service.Exam_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class Exam_Service_Impl implements Exam_Service {

    @Autowired
    private ExamDao dao;

    @Override
    public ExamDto saveExam(ExamDto dto) {
        Exam exam = new Exam();
        exam.setDate(dto.getDate());
        exam.setStates(dto.getStates());
        dao.save(exam);
        return dto;
    }

    @Override
    public List<ExamDto> getAllExams() {
        List<ExamDto> list = new ArrayList<>();
        ExamDto dto = null;
        for (Exam exam : dao.findAll()) {
            dto = new ExamDto();
            dto.setDate(exam.getDate());
            dto.setStates(exam.getStates());
            dto.setId(exam.getId());
            list.add(dto);
        }
        ;
        return list;
    }

    @Override
    public ExamDto getById(String id) {

        int parseInt = Integer.parseInt(id);
        Exam exam = dao.getById(parseInt);
        ExamDto dto = new ExamDto();
        dto.setStates(exam.getStates());
        dto.setDate(exam.getDate());
        dto.setId(exam.getId());
        return dto;
    }
}
