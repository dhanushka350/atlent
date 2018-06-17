package com.atlent.atlent.serviceImpl;

import com.atlent.atlent.dto.LisenceCategoryDto;
import com.atlent.atlent.models.LisenceCategory;
import com.atlent.atlent.repository.LisenceCategoryDao;
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
}
