package com.atlent.atlent.serviceImpl;

import com.atlent.atlent.dto.LisenceCategoryDto;
import com.atlent.atlent.dto.PackageDto;
import com.atlent.atlent.models.*;
import com.atlent.atlent.models.Package;
import com.atlent.atlent.repository.LisenceCategoryDao;
import com.atlent.atlent.repository.PackageDao;
import com.atlent.atlent.repository.RegistrationDao;
import com.atlent.atlent.repository.StudentDao;
import com.atlent.atlent.service.Package_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class Package_Service_Impl implements Package_Service {

    @Autowired
    private LisenceCategoryDao categoryDao;

    @Autowired
    private PackageDao packageDao;

    @Autowired
    private RegistrationDao registrationDao;

    @Autowired
    private StudentDao studentDao;

    @Override
    public List<PackageDto> getAllPackages() throws Exception {
        List<PackageDto> list = new ArrayList<>();
        PackageDto dto = null;
        for (Package aPackage : packageDao.findAll()) {
            dto = new PackageDto();
            dto.setFee(aPackage.getFee());
            dto.setId(aPackage.getId());
            dto.setName(aPackage.getName());
            list.add(dto);
        }
        ;
        return list;
    }

    @Override
    public PackageDto getPackageById(String id) throws Exception {
        Package packageByName = packageDao.getPackageById(Integer.parseInt(id));
        PackageDto dto = new PackageDto();
        LisenceCategoryDto dto1 = null;
        List<LisenceCategoryDto> list = new ArrayList<>();
        dto.setName(packageByName.getName());
        dto.setFee(packageByName.getFee());
        dto.setId(packageByName.getId());

        for (LisenceCategory category : packageByName.getList()) {
            dto1 = new LisenceCategoryDto();
            dto1.setVehicle_class(category.getVehicle_class());
            dto1.setPrice(category.getPrice());
            dto1.setPictograph(category.getPictograph());
            dto1.setDescription(category.getDescription());
            dto1.setId(category.getId());
            dto1.setOldClass(category.getOld_Class());
            dto1.setOtherClasses(category.getOther_Classes());
            list.add(dto1);
        }
        ;
        dto.setList(list);
        return dto;
    }

    @Override
    public List<LisenceCategoryDto> getPackageList() throws Exception {
        List<LisenceCategoryDto> list = new ArrayList<>();

        for (LisenceCategory category : categoryDao.findAll()) {
            LisenceCategoryDto dto = new LisenceCategoryDto();
            dto.setId(category.getId());
            dto.setDescription(category.getDescription());
            dto.setOldClass(category.getOld_Class());
            dto.setOtherClasses(category.getOther_Classes());
            dto.setPictograph(category.getPictograph());
            dto.setPrice(category.getPrice());
            dto.setVehicle_class(category.getVehicle_class());
            list.add(dto);
        }
        ;
        return list;
    }

    @Override
    public List<PackageDto> getPackagesByStudentNic(String nic) throws Exception {
        List<PackageDto> list = new ArrayList<>();
        PackageDto dto = null;
        Student byNic = studentDao.getByNic(nic);

        if (byNic != null) {
            Registration registration = byNic.getRegistration();
            if (registration != null) {
                for (RegistrationPackageDetails packageDetails : registration.getPackageDetails()) {
                    dto = new PackageDto();
                    dto.setId(packageDetails.getaPackage().getId());
                    dto.setName(packageDetails.getaPackage().getName());
                    dto.setFee(packageDetails.getaPackage().getFee());
                    list.add(dto);
                }
                ;
            }


        }
        return list;
    }
}
