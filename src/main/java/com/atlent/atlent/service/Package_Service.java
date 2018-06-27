package com.atlent.atlent.service;

import com.atlent.atlent.dto.LisenceCategoryDto;
import com.atlent.atlent.dto.PackageDto;
import com.atlent.atlent.models.Package;
import org.springframework.stereotype.Service;

import java.util.List;

public interface Package_Service {
    public List<PackageDto> getAllPackages() throws Exception;

    public PackageDto getPackageById(String id) throws Exception;

    public List<LisenceCategoryDto> getPackageList() throws Exception;

    public List<PackageDto> getPackagesByStudentNic(String nic) throws Exception;
}
