package com.atlent.atlent.serviceImpl;

import com.atlent.atlent.dto.BranchDto;
import com.atlent.atlent.models.Branch;
import com.atlent.atlent.repository.BranchDao;
import com.atlent.atlent.service.Branch_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class Branch_Service_Impl implements Branch_Service {

    @Autowired
    private BranchDao branchDao;

    @Override
    public List<BranchDto> getAllBranch() throws Exception {
        List<BranchDto> list = new ArrayList<>();
        BranchDto branchDto = null;
        for (Branch branch : branchDao.findAll()) {
            branchDto = new BranchDto();
            branchDto.setId(branch.getBranchID());
            branchDto.setName(branch.getBranch());
            list.add(branchDto);
        }
        ;
        return list;
    }
}
