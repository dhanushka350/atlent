package com.atlent.atlent.repository;

import com.atlent.atlent.models.Registration;
import com.atlent.atlent.models.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RegistrationDao extends JpaRepository<Registration, Integer> {
    Registration getByStudent(Student student);

}
