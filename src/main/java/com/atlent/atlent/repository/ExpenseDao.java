package com.atlent.atlent.repository;

import com.atlent.atlent.models.Expense;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ExpenseDao extends JpaRepository<Expense,Integer> {
}
