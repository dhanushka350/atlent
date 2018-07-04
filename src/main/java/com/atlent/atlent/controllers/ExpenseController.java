package com.atlent.atlent.controllers;

import com.atlent.atlent.MailingSystem.AuroraMailSystem;
import com.atlent.atlent.dto.ExamDto;
import com.atlent.atlent.dto.ExpenseDto;
import com.atlent.atlent.dto.IncomeDto;
import com.atlent.atlent.dto.NewPayment;
import com.atlent.atlent.service.ExpensesService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/expenses")
public class ExpenseController {
    private static final Logger LOG = LoggerFactory.getLogger(ExpenseController.class);

    @Autowired
    private ExpensesService service;
    @Autowired
    private AuroraMailSystem mailSystem;

    @RequestMapping(value = {"add/new/expense"}, method = RequestMethod.POST, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public boolean newStudentPayment(@RequestBody ExpenseDto data) {
        LOG.info("START:saving expense");
        boolean res = false;
        try {
            res = service.saveExpense(data);

        } catch (Exception e) {
            e.printStackTrace();
            mailSystem.reportException(e);
        }
        LOG.info("END:saving expense");
        return res;
    }

    @RequestMapping(value = {"all/income/dates/list"}, method = RequestMethod.GET, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public List<IncomeDto> getAllImcomeDates() {
        LOG.info("START: get all income dates");
        List<IncomeDto> list = null;
        try {
            list = service.getAllImcomeDates();
        } catch (Exception e) {
            e.printStackTrace();
            mailSystem.reportException(e);
        }
        LOG.info("END: get all income dates.");
        return list;
    }

    @RequestMapping(value = {"all/expense/dates/list"}, method = RequestMethod.GET, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public List<ExpenseDto> getAllExpenseDates() {
        LOG.info("START: get all Expense dates");
        List<ExpenseDto> list = null;
        try {
            list = service.getAllExpenseDates();
        } catch (Exception e) {
            e.printStackTrace();
            mailSystem.reportException(e);
        }
        LOG.info("END: get all income dates.");
        return list;
    }

    @RequestMapping(value = {"all/income/by/date/and/branch/list"}, method = RequestMethod.GET, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public List<IncomeDto> getAllIncomesByBranchAndDate(@RequestParam String branch, @RequestParam String date) {
        LOG.info("START: get all income dates By Branch And Date");
        List<IncomeDto> list = null;
        try {
            list = service.getAllIncomeByBranchAndDate(branch, date);
        } catch (Exception e) {
            e.printStackTrace();
            mailSystem.reportException(e);
        }
        LOG.info("END: get all income dates By Branch And Date" + list.size());
        return list;
    }

    @RequestMapping(value = {"all/expenses/by/date/and/branch/list"}, method = RequestMethod.GET, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public List<ExpenseDto> getAllExpensesByBranchAndDate(@RequestParam String branch, @RequestParam String date) {
        LOG.info("START: get all Expenses dates By Branch And Date");
        List<ExpenseDto> list = null;
        try {
            list = service.getAllExpensesByDateAndBranch(branch, date);
        } catch (Exception e) {
            e.printStackTrace();
            mailSystem.reportException(e);
        }
        LOG.info("END: get all Expenses dates By Branch And Date" + list.size());
        return list;
    }
}
