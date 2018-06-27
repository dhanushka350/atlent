package com.atlent.atlent.dto;

import com.atlent.atlent.models.Registration;

public class RegisteredPackageDetailsDto {


    private int pid;

    private String licenseStates;

    private Registration registration;

    private Package aPackage;

    public RegisteredPackageDetailsDto() {
    }

    public RegisteredPackageDetailsDto(int pid, String licenseStates, Registration registration, Package aPackage) {
        this.pid = pid;
        this.licenseStates = licenseStates;
        this.registration = registration;
        this.aPackage = aPackage;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getLicenseStates() {
        return licenseStates;
    }

    public void setLicenseStates(String licenseStates) {
        this.licenseStates = licenseStates;
    }

    public Registration getRegistration() {
        return registration;
    }

    public void setRegistration(Registration registration) {
        this.registration = registration;
    }

    public Package getaPackage() {
        return aPackage;
    }

    public void setaPackage(Package aPackage) {
        this.aPackage = aPackage;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("RegisteredPackageDetailsDto{");
        sb.append("pid=").append(pid);
        sb.append(", licenseStates='").append(licenseStates).append('\'');
        sb.append(", registration=").append(registration);
        sb.append(", aPackage=").append(aPackage);
        sb.append('}');
        return sb.toString();
    }
}
