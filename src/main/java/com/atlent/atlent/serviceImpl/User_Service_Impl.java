package com.atlent.atlent.serviceImpl;


import com.atlent.atlent.dto.*;

import com.atlent.atlent.models.*;

import com.atlent.atlent.models.Package;
import com.atlent.atlent.repository.*;
import com.atlent.atlent.service.User_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

@Service
public class User_Service_Impl implements User_Service {

    @Autowired
    private SystemUserDao dao;
    @Autowired
    private StudentDao studentDao;
    @Autowired
    private RegistrationDao registrationDao;
    @Autowired
    private RegistrationPackageDetailsDao packageDetailsDao;
    @Autowired
    private PaymentDao paymentDao;
    @Autowired
    private MedicalDao medicalDao;
    @Autowired
    private PackageDao packageDao;
    @Autowired
    private BranchDao branchDao;


    @Override
    public boolean check_login(UserDto userDto) throws Exception {

        boolean res = false;
        SystemUser systemUser = dao.findSystemUserByUserEqualsAndPasswordEquals(userDto.getUser(), userDto.getPass());
        if (systemUser != null) {
            res = true;
        }
        return res;
    }

    @Override
    @Transactional
    public boolean saveStudent(RegistrationDataTransfer transfer) throws Exception {
        boolean res = false;
        System.out.println(transfer.getR_fee()+"4444444444444444444444444444444444444444444444444");
        Student student = studentDao.getByNic(transfer.getS_nic());
        if (student == null) {
            student = new Student();
        }
        student.setName(transfer.getS_name());
        student.setAddress(transfer.getS_address());
        student.setAge(transfer.getS_age());
        student.setDate_of_birth(transfer.getS_date_of_birth());
        student.setGender(transfer.getS_gender());
        student.setMobile(Integer.parseInt(transfer.getS_mobile()));
        student.setNic(transfer.getS_nic());
        student.setPassword(transfer.getS_password());
        Student save = studentDao.save(student);

        saveMedical(makeMedicalEntity(transfer, save));
        Registration registration = saveRegistrationDetails(makeRegistrationEntity(transfer, save));
        RegistrationPackageDetails registrationPackageDetails = saveRegisteredPackageDetails(makeRegisterPackageDetails(transfer, makePackageEntity(transfer), registration));
        boolean b = savePayment(makePaymentEntity(transfer, registrationPackageDetails));

        if (b) {
            res = true;
        }
        return res;
    }

    @Override
    public boolean saveStaff(StaffDto staffDto) throws Exception {

        boolean res = false;

        SystemUser user = new SystemUser();

        user.setPassword(staffDto.getPass());
        user.setNic(staffDto.getNic());
        user.setUser(staffDto.getName());
        Branch byBranchID = branchDao.getByBranchID(Integer.parseInt(staffDto.getBranch()));
        user.setBranch(byBranchID);
        user.setMobile(staffDto.getMobile());
        user.setAddress(staffDto.getAddress());
        SystemUser save = dao.save(user);
        if (save != null) {
            res = true;
        }
        return res;
    }

    private Medical makeMedicalEntity(RegistrationDataTransfer transfer, Student student) {
        Medical medical = new Medical();
        medical.setDescription(transfer.getM_description());
        medical.setDate(transfer.getR_date());
        medical.setIsCollected(transfer.getM_isCollected());
        medical.setMedStudent(student);
        return medical;
    }

    private Payment makePaymentEntity(RegistrationDataTransfer transfer, RegistrationPackageDetails packageDetails) {
        Payment payment = new Payment();
        payment.setDate(transfer.getR_date());
        payment.setBalancePayment(transfer.getP_balancePayment());
        payment.setFullAmount(transfer.getP_fullAmount());
        payment.setPaidAmount(transfer.getP_paidAmount());
        payment.setRegistrationPackageDetails(packageDetails);
        return payment;
    }

    private RegistrationPackageDetails makeRegisterPackageDetails(RegistrationDataTransfer transfer, Package aPackage, Registration registration) {
        RegistrationPackageDetails details = new RegistrationPackageDetails();
        details.setaPackage(aPackage);
        details.setLicenseStates("not complete.");
        details.setRegistration(registration);
        return details;
    }

    private Package makePackageEntity(RegistrationDataTransfer transfer) throws Exception {
        return packageDao.getPackageById(Integer.parseInt(transfer.getP_packageID()));
    }

    private Registration makeRegistrationEntity(RegistrationDataTransfer transfer, Student student) throws Exception {
        Registration registration = registrationDao.getByStudent(student);
        if (registration == null) {
            registration = new Registration();
            registration.setDate(transfer.getR_date());
            registration.setFee(transfer.getR_fee());
            registration.setRegBranch(branchDao.getByBranchID(Integer.parseInt(transfer.getS_branch())));
            registration.setStudent(student);
        }
        return registration;
    }

    @Override
    public List<StudentDto> getAllStudentList() throws Exception {
        List<StudentDto> list = new ArrayList<>();
        StudentDto dto = null;
        for (Student student : studentDao.findAll()) {
            dto = new StudentDto();
            dto.setNic(student.getNic());
            dto.setAddress(student.getAddress());
            dto.setAge(student.getAge());
            dto.setDate_of_birth(student.getDate_of_birth());
            dto.setGender(student.getGender());
            dto.setMobile(student.getMobile());
            dto.setName(student.getName());
            dto.setBranch(student.getRegistration().getRegBranch().getBranch());
            list.add(dto);
        }
        ;
        return list;
    }

    @Override
    public Registration saveRegistrationDetails(Registration registration) throws Exception {
        return registrationDao.save(registration);
    }

    @Override
    public boolean savePayment(Payment payment) {
        boolean res = false;
        Payment save = paymentDao.save(payment);
        if (save != null) {
            res = true;
        }
        return res;
    }

    @Override
    public RegistrationPackageDetails saveRegisteredPackageDetails(RegistrationPackageDetails packageDetails) throws Exception {
        return packageDetailsDao.save(packageDetails);
    }

    @Override
    public Medical saveMedical(Medical medical) throws Exception {
        return medicalDao.save(medical);
    }

    @Override
    public RegistrationDataTransfer getStudentDetailsForRegistration(String nic) throws Exception {
        RegistrationDataTransfer transfer = null;
        Student byNic = studentDao.getByNic(nic);
        if (byNic != null) {
            transfer = new RegistrationDataTransfer();
            transfer.setS_address(byNic.getAddress());
            transfer.setS_age(byNic.getAge());
            transfer.setS_date_of_birth(byNic.getDate_of_birth());
            transfer.setS_gender(byNic.getGender());
            transfer.setS_gender(byNic.getGender());
            transfer.setS_name(byNic.getName());
            transfer.setS_nic(byNic.getNic());
            transfer.setS_password(byNic.getPassword());
            transfer.setS_mobile(byNic.getMobile() + "");
            transfer.setS_branch(byNic.getRegistration().getRegBranch().getBranch());
            transfer = setMedicalData(transfer, byNic);
            transfer = setRegistrationData(transfer, byNic);

        }
        return transfer;
    }

    @Override
    public List<StaffDto> getAllStaffMembers() throws Exception {
        List<StaffDto> list = new ArrayList<>();
        StaffDto staffDto = null;
        for (SystemUser user : dao.findAll()) {
            staffDto = new StaffDto();
            staffDto.setAddress(user.getAddress());
            staffDto.setBranch(user.getBranch().getBranch());
            staffDto.setMobile(user.getMobile());
            staffDto.setName(user.getUser());
            staffDto.setNic(user.getNic());
            list.add(staffDto);
        }
        ;
        return list;
    }

    private RegistrationDataTransfer setRegistrationData(RegistrationDataTransfer transfer, Student byNic) {
        Registration rData = registrationDao.getByStudent(byNic);
        if (rData != null) {
            transfer.setR_date(rData.getDate());
            transfer.setR_fee(rData.getFee());
            RegistrationPackageDetails details = packageDetailsDao.getFirstByRegistration(rData);
            if (details != null) {
                transfer.setP_packageID(details.getaPackage().getId() + "");
            }
            Payment payment = paymentDao.getFirstByRegistrationPackageDetails(details);
            if (payment != null) {
                transfer.setP_balancePayment(payment.getBalancePayment());
                transfer.setP_fullAmount(payment.getFullAmount());
                transfer.setP_paidAmount(payment.getPaidAmount());

            }
        }
        return transfer;
    }

    private RegistrationDataTransfer setMedicalData(RegistrationDataTransfer transfer, Student student) {

        Medical firstByMedStudent = medicalDao.getFirstByMedStudent(student);
        if (firstByMedStudent != null) {
            transfer.setM_description(firstByMedStudent.getDescription());
            transfer.setM_isCollected(firstByMedStudent.getIsCollected());

        }
        return transfer;
    }
}
