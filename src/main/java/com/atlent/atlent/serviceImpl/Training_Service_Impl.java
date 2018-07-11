package com.atlent.atlent.serviceImpl;

import com.atlent.atlent.dto.TrainingDto;
import com.atlent.atlent.models.TrainingDate;
import com.atlent.atlent.repository.TrainingScheduleDao;
import com.atlent.atlent.service.Training_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Training_Service_Impl implements Training_Service {

    @Autowired
    private TrainingScheduleDao dao;


    @Override
    public TrainingDto saveTraining(TrainingDto dto) {
        TrainingDate trainingDate = new TrainingDate();
        trainingDate.setTdate(dto.getDate());
        trainingDate.setTrtime(dto.getTime());
        dao.save(trainingDate);
        return dto;
    }

    @Override
    public List<TrainingDto> getAllExams() {
        return null;
    }

    @Override
    public TrainingDto getById(String id) {
        return null;
    }
}
