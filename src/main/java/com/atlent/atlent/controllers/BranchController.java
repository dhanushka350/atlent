package com.atlent.atlent.controllers;

import com.atlent.atlent.dto.BranchDto;
import com.atlent.atlent.dto.ExamDto;
import com.atlent.atlent.service.Branch_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping(value = "control/branches")
public class BranchController {

    @Autowired
    private Branch_Service service;

    @RequestMapping(value = {"all/branch/list"}, method = RequestMethod.GET, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public List<BranchDto> getAllBranches() {
        List<BranchDto> list = new ArrayList<>();
        try {
            list = service.getAllBranch();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
