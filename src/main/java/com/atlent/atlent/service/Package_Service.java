package com.atlent.atlent.service;

import com.atlent.atlent.dto.LisenceCategoryDto;
import org.springframework.stereotype.Service;

import java.util.List;

public interface Package_Service {
    public List<LisenceCategoryDto> getPackageList() throws Exception;
}
