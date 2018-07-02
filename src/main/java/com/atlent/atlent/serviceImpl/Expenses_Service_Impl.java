package com.atlent.atlent.serviceImpl;

import com.atlent.atlent.dto.ExpenseDto;
import com.atlent.atlent.models.Expense;
import com.atlent.atlent.models.SystemUser;
import com.atlent.atlent.repository.ExpenseDao;
import com.atlent.atlent.repository.SystemUserDao;
import com.atlent.atlent.service.ExpensesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Expenses_Service_Impl implements ExpensesService {
    @Autowired
    private ExpenseDao dao;
    @Autowired
    private SystemUserDao userDao;

    @Override
    public boolean saveExpense(ExpenseDto expenseDto) throws Exception {
        SystemUser user = userDao.findByUser(expenseDto.getUser());
        Expense expense = new Expense();
        expense.setAmount(expenseDto.getAmount());
        expense.setDate(expenseDto.getDate());
        expense.setReason(expenseDto.getReason());
        expense.setTime(expenseDto.getTime());
        expense.setUser(user);
        Expense save = dao.save(expense);
        if (save != null) {
            return true;
        } else {
            return false;
        }
    }
}
