package com.atlent.atlent.controllers;

import com.atlent.atlent.MailingSystem.AuroraMailSystem;
import com.atlent.atlent.dto.LisenceCategoryDto;
import com.atlent.atlent.service.Package_Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;


@RestController
@RequestMapping(value = "/Category")
public class LisenceCategoryController {
    private static final Logger LOG = LoggerFactory.getLogger(LisenceCategoryController.class);

    @Autowired
    private Package_Service packageService;
    @Autowired
    private AuroraMailSystem mailSystem;

    @RequestMapping(value = {"all/license/categories"}, method = RequestMethod.GET, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public List<LisenceCategoryDto> getAllLicensePackages() {
        LOG.info("START:get all license packages");
        List<LisenceCategoryDto> list = null;
        try {
            list = packageService.getPackageList();
        } catch (Exception e) {
            e.printStackTrace();
            mailSystem.reportException(e);
        }
        LOG.info("END:get all license packages. > found " + list.size() + " items");
        return list;
    }
}
