package com.atlent.atlent.repository;

import com.atlent.atlent.models.Expense;
import com.atlent.atlent.models.SystemUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ExpenseDao extends JpaRepository<Expense,Integer> {
    List<Expense> getAllByUser(SystemUser user)throws Exception;
}
