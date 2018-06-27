package com.atlent.atlent.service;

import com.atlent.atlent.dto.NewPayment;
import com.atlent.atlent.dto.PaymentDto;
import com.atlent.atlent.models.Payment;

import java.util.List;

public interface Payment_Service {
    List<PaymentDto> getStudentPackagePayments(String nic, String packageID) throws Exception;

    boolean savePayment(NewPayment payment) throws Exception;
}
