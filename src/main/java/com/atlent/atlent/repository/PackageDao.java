package com.atlent.atlent.repository;

import com.atlent.atlent.models.Package;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PackageDao extends JpaRepository<Package,Integer> {
    Package getPackageById(int id)throws Exception;
}
