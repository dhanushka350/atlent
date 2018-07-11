package com.atlent.atlent.repository;

import com.atlent.atlent.models.TrainingDate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TrainingScheduleDao extends JpaRepository<TrainingDate, Integer> {
}
