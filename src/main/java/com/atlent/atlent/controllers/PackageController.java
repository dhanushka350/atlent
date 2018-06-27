package com.atlent.atlent.controllers;

import com.atlent.atlent.dto.ExamDto;
import com.atlent.atlent.dto.PackageDto;
import com.atlent.atlent.service.Package_Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping(value = "/license/packages")
public class PackageController {
    private static final Logger LOG = LoggerFactory.getLogger(PackageController.class);

    @Autowired
    private Package_Service service;

    @RequestMapping(value = {"all/license/package/list"}, method = RequestMethod.GET, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public List<PackageDto> getAllLicensePackages() {
        LOG.info("START: get All License Packages");
        List<PackageDto> list = null;
        try {
            list = service.getAllPackages();
        } catch (Exception e) {
            e.printStackTrace();
        }
        LOG.info("END:  > found " + list.size() + " license packages.");
        return list;
    }

    @RequestMapping(value = {"get/license/package/by/name"}, method = RequestMethod.POST, consumes = "application/text", produces = "application/json")
    @ResponseBody
    public PackageDto getPackageDetailsByName(@RequestBody String name) {
        LOG.info("START:get package details using name - " + name);
        PackageDto dto = new PackageDto();
        try {
            dto = service.getPackageById(name);
        } catch (Exception e) {
            e.printStackTrace();
        }
        LOG.info("END:get package details by name - " + name + " package id = " + dto.getId() + " package fee = " + dto.getFee());
        return dto;
    }

    @RequestMapping(value = {"get/license/package/for/payment"}, method = RequestMethod.GET, consumes = "application/text", produces = "application/json")
    @ResponseBody
    public List<PackageDto> getPackageDetailsForPayment(@RequestParam String nic) {
        LOG.info("START:get package for payment nic - " + nic);
        List<PackageDto> list = new ArrayList<>();
        try {
           list = service.getPackagesByStudentNic(nic);
        } catch (Exception e) {
            e.printStackTrace();
        }
        LOG.info("END:get package for payment");
        return list;
    }
}
