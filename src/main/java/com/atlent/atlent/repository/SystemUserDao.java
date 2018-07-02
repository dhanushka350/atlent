package com.atlent.atlent.repository;

import com.atlent.atlent.models.SystemUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SystemUserDao extends JpaRepository<SystemUser,Integer> {

    SystemUser findSystemUserByUserEqualsAndPasswordEquals(String name,String password)throws Exception;
    SystemUser findByUser(String name)throws Exception;

}
