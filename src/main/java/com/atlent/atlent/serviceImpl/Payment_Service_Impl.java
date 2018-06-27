package com.atlent.atlent.serviceImpl;

import com.atlent.atlent.dto.NewPayment;
import com.atlent.atlent.dto.PaymentDto;
import com.atlent.atlent.models.*;
import com.atlent.atlent.models.Package;
import com.atlent.atlent.repository.*;
import com.atlent.atlent.service.Payment_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class Payment_Service_Impl implements Payment_Service {
    @Autowired
    private RegistrationDao registrationDao;
    @Autowired
    private StudentDao studentDao;
    @Autowired
    private PaymentDao paymentDao;
    @Autowired
    private RegistrationPackageDetailsDao packageDetailsDao;
    @Autowired
    private PackageDao packageDao;

    @Override
    public List<PaymentDto> getStudentPackagePayments(String nic, String packageID) throws Exception {
        PaymentDto dto = null;
        List<PaymentDto> list = new ArrayList<>();
        Registration registration = studentDao.getByNic(nic).getRegistration();
        Package pack = packageDao.getPackageById(Integer.parseInt(packageID));
        for (Payment payment : packageDetailsDao.getByAPackageAndAndRegistration(pack, registration).getPaymentDetails()) {
            dto = new PaymentDto();
            double x = Double.parseDouble(payment.getBalancePayment());
            if (x < 1) {
                dto.setBalancePayment("payment complete");
            } else {
                dto.setBalancePayment(payment.getBalancePayment());
            }
            dto.setDate(payment.getDate());
            dto.setFullAmount(payment.getFullAmount());
            dto.setPaidAmount(payment.getPaidAmount());
            dto.setPaymentID(payment.getPaymentID());
            list.add(dto);
        }
        ;
        return list;

    }

    @Override
    public boolean savePayment(NewPayment payment) throws Exception {
        Student student = studentDao.getByNic(payment.getStudentNIC());
        Registration registration = registrationDao.getByStudent(student);
        Package packageID = packageDao.getPackageById(payment.getPaymentID());
        RegistrationPackageDetails registrationPackageDetails = packageDetailsDao.getByAPackageAndAndRegistration(packageID, registration);

        Payment payment1 = new Payment();
        payment1.setRegistrationPackageDetails(registrationPackageDetails);
        payment1.setPaidAmount(payment.getPaidAmount());
        payment1.setFullAmount(payment.getFullAmount());
        payment1.setBalancePayment(payment.getBalancePayment());
        payment1.setDate(payment.getDate());
        Payment save = paymentDao.save(payment1);
        if (save != null) {
            return true;
        }

        return false;
    }
}
