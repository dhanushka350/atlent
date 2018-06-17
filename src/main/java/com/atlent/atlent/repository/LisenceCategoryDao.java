package com.atlent.atlent.repository;

import com.atlent.atlent.models.LisenceCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LisenceCategoryDao extends JpaRepository<LisenceCategory,Integer>{
}
