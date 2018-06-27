package com.atlent.atlent.repository;

import com.atlent.atlent.models.Medical;
import com.atlent.atlent.models.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.criteria.CriteriaBuilder;

@Repository
public interface MedicalDao extends JpaRepository<Medical, Integer> {
    Medical getFirstByMedStudent(Student student);
}
