package com.atlent.atlent.repository;

import com.atlent.atlent.models.Package;
import com.atlent.atlent.models.Registration;
import com.atlent.atlent.models.RegistrationPackageDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RegistrationPackageDetailsDao extends JpaRepository<RegistrationPackageDetails, Integer> {
    RegistrationPackageDetails getFirstByRegistration(Registration registration);

    RegistrationPackageDetails getByAPackageAndAndRegistration(Package aPackage, Registration registration) throws Exception;
}
