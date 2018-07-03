package com.atlent.atlent.serviceImpl;

import com.atlent.atlent.dto.ExpenseDto;
import com.atlent.atlent.dto.IncomeDto;
import com.atlent.atlent.models.Branch;
import com.atlent.atlent.models.Expense;
import com.atlent.atlent.models.Payment;
import com.atlent.atlent.models.SystemUser;
import com.atlent.atlent.repository.BranchDao;
import com.atlent.atlent.repository.ExpenseDao;
import com.atlent.atlent.repository.PaymentDao;
import com.atlent.atlent.repository.SystemUserDao;
import com.atlent.atlent.service.ExpensesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Service
public class Expenses_Service_Impl implements ExpensesService {
    @Autowired
    private ExpenseDao dao;
    @Autowired
    private SystemUserDao userDao;
    @Autowired
    private PaymentDao paymentDao;
    @Autowired
    private BranchDao branchDao;

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

    @Override
    public List<IncomeDto> getAllImcomeDates() throws Exception {
        List<IncomeDto> list = new ArrayList<>();
        IncomeDto dto = null;

        for (Payment payment : paymentDao.findAll()) {
            if (list.size() <= 0) {
                dto = new IncomeDto();
                dto.setIncome_date(payment.getDate());
                list.add(dto);

            } else {
                Iterator<IncomeDto> iter = list.iterator();
                while (iter.hasNext()) {
                    IncomeDto next = iter.next();
                    if (next.getIncome_date().equalsIgnoreCase(payment.getDate())) {
                        iter.remove();
                    }
                }
                dto = new IncomeDto();
                dto.setIncome_date(payment.getDate());
                list.add(dto);
            }


        }
        ;
        return list;
    }

    @Override
    public List<ExpenseDto> getAllExpenseDates() throws Exception {
        List<ExpenseDto> list = new ArrayList<>();
        ExpenseDto dto = null;

        for (Expense expense : dao.findAll()) {
            if (list.size() <= 0) {
                dto = new ExpenseDto();
                dto.setDate(expense.getDate());
                list.add(dto);

            } else {
                Iterator<ExpenseDto> iter = list.iterator();
                while (iter.hasNext()) {
                    ExpenseDto next = iter.next();
                    if (next.getDate().equalsIgnoreCase(expense.getDate())) {
                        iter.remove();
                    }
                }
                dto = new ExpenseDto();
                dto.setDate(expense.getDate());
                list.add(dto);
            }


        }
        ;
        return list;
    }

    @Override
    public List<IncomeDto> getAllIncomeByBranchAndDate(String branch, String date) throws Exception {
        List<IncomeDto> list = new ArrayList<>();
        IncomeDto dto = null;
        Branch byBranch = branchDao.getByBranchID(Integer.parseInt(branch));
        if (byBranch != null) {
            for (SystemUser user : byBranch.getUserList()) {
                for (Payment payment : user.getPayments()) {
                    if (payment.getDate().equalsIgnoreCase(date)) {
                        dto = new IncomeDto();
                        dto.setIncome_date(payment.getDate());
                        dto.setAmount(payment.getPaidAmount());
                        dto.setStaffMember(user.getUser());
                        dto.setStudent(payment.getRegistrationPackageDetails().getRegistration().getStudent().getName());
                        list.add(dto);
                    }
                }
                ;
            }
            ;
        }

        return list;
    }

    @Override
    public List<ExpenseDto> getAllExpensesByDateAndBranch(String branch, String date) throws Exception {
        List<ExpenseDto> list = new ArrayList<>();
        ExpenseDto dto = null;
        Branch byBranchID = branchDao.getByBranchID(Integer.parseInt(branch));
        for (SystemUser user : byBranchID.getUserList()) {
            for (Expense expense : user.getExpenses()) {
                if (expense.getDate().equalsIgnoreCase(date)) {
                    dto = new ExpenseDto();
                    dto.setAmount(expense.getAmount());
                    dto.setDate(expense.getDate());
                    dto.setReason(expense.getReason());
                    dto.setTime(expense.getTime());
                    dto.setUser(user.getUser());
                    list.add(dto);
                }
            }
            ;
        }
        return list;

    }
}
