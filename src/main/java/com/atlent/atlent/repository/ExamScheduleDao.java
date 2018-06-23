package com.atlent.atlent.repository;

import com.atlent.atlent.models.ExamSchedule;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ExamScheduleDao extends JpaRepository<ExamSchedule, Integer> {
}
