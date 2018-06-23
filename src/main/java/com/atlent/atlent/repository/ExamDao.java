package com.atlent.atlent.repository;

import com.atlent.atlent.models.Exam;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ExamDao extends JpaRepository<Exam,Integer>{
    Exam getById(int id);

}
