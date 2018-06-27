package com.atlent.atlent.controllers;

import com.atlent.atlent.dto.NewPayment;
import com.atlent.atlent.dto.PackageDto;
import com.atlent.atlent.dto.PaymentDto;
import com.atlent.atlent.service.Payment_Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping(value = "/payment")
public class PaymentController {
    private static final Logger LOG = LoggerFactory.getLogger(PaymentController.class);

    @Autowired
    private Payment_Service payment_service;

    @RequestMapping(value = {"get/payment/history"}, method = RequestMethod.POST, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public List<PaymentDto> getPaymentHistory(@RequestBody String searchData) {
        LOG.info("START:get payment history");
        List<PaymentDto> list = new ArrayList<>();
        try {
            String[] split = searchData.split("@");
            list = payment_service.getStudentPackagePayments(split[0], split[1]);
        } catch (Exception e) {
            e.printStackTrace();
        }
        LOG.info("END:get payment history.." + list.size());
        return list;
    }

    @RequestMapping(value = {"do/student/payments"}, method = RequestMethod.POST, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public boolean newStudentPayment(@RequestBody NewPayment data) {
        LOG.info("START:saving payment data");
        boolean res = false;
        try {

            res = payment_service.savePayment(data);
        } catch (Exception e) {
            e.printStackTrace();
        }
        LOG.info("END:saving payment data");
        return res;
    }
}
