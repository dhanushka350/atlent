package com.atlent.atlent.service;

import com.atlent.atlent.dto.ExpenseDto;

public interface ExpensesService {
    public boolean saveExpense(ExpenseDto expenseDto) throws Exception;
}
