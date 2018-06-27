package com.atlent.atlent.repository;

import com.atlent.atlent.models.Exam;
import com.atlent.atlent.models.ExamSchedule;
import com.atlent.atlent.models.Registration;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ExamScheduleDao extends JpaRepository<ExamSchedule, Integer> {


}
