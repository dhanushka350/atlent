package com.atlent.atlent.repository;

import com.atlent.atlent.dto.IncomeDto;
import com.atlent.atlent.dto.PaymentDto;
import com.atlent.atlent.models.Package;
import com.atlent.atlent.models.Payment;
import com.atlent.atlent.models.RegistrationPackageDetails;
import com.atlent.atlent.models.SystemUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PaymentDao extends JpaRepository<Payment,Integer>{
    Payment getFirstByRegistrationPackageDetails(RegistrationPackageDetails details);
    List<Payment> getAllByRegistrationPackageDetails(RegistrationPackageDetails details)throws Exception;

}
