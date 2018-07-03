package com.atlent.atlent.service;

import com.atlent.atlent.dto.ExpenseDto;
import com.atlent.atlent.dto.IncomeDto;

import java.util.List;

public interface ExpensesService {
    public boolean saveExpense(ExpenseDto expenseDto) throws Exception;

    public List<IncomeDto> getAllImcomeDates() throws Exception;

    public List<ExpenseDto> getAllExpenseDates() throws Exception;

    public List<IncomeDto> getAllIncomeByBranchAndDate(String branch,String date)throws Exception;

    public List<ExpenseDto> getAllExpensesByDateAndBranch(String branch,String date)throws Exception;
}
