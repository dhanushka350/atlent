package com.atlent.atlent.service;

import com.atlent.atlent.dto.*;
import com.atlent.atlent.models.*;
import com.atlent.atlent.models.Package;


import java.util.List;

public interface User_Service {

    public boolean check_login(UserDto userDto) throws Exception;

    public boolean saveStudent(RegistrationDataTransfer transfer) throws Exception;

    public boolean saveStaff(StaffDto staffDto) throws Exception;

    public List<StudentDto> getAllStudentList() throws Exception;

    public Registration saveRegistrationDetails(Registration registration) throws Exception;

    public boolean savePayment(Payment payment);

    public RegistrationPackageDetails saveRegisteredPackageDetails(RegistrationPackageDetails packageDetails) throws Exception;

    public Medical saveMedical(Medical medical) throws Exception;

    public RegistrationDataTransfer getStudentDetailsForRegistration(String nic) throws Exception;

    public List<StaffDto> getAllStaffMembers() throws Exception;

}
