package com.atlent.atlent.repository;

import com.atlent.atlent.models.Branch;
import com.atlent.atlent.models.SystemUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BranchDao extends JpaRepository <Branch,Integer>{

    Branch getByBranchID(int id);
}
