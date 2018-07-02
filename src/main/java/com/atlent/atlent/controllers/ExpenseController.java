package com.atlent.atlent.controllers;

import com.atlent.atlent.dto.ExpenseDto;
import com.atlent.atlent.dto.NewPayment;
import com.atlent.atlent.service.ExpensesService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/expenses")
public class ExpenseController {
    private static final Logger LOG = LoggerFactory.getLogger(ExpenseController.class);

    @Autowired
    private ExpensesService service;

    @RequestMapping(value = {"add/new/expense"}, method = RequestMethod.POST, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public boolean newStudentPayment(@RequestBody ExpenseDto data) {
        LOG.info("START:saving expense");
        boolean res = false;
        try {
            res = service.saveExpense(data);

        } catch (Exception e) {
            e.printStackTrace();
        }
        LOG.info("END:saving expense");
        return res;
    }
}
