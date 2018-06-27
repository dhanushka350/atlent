package com.atlent.atlent.models;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "t_package_registration_details")
public class RegistrationPackageDetails implements Serializable {
    private static final long serialVersionUID = 2880723497788669629L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "idt_package_payment_details")
    private int pid;

    @Column(name = "license_state")
    private String licenseStates;

    @ManyToOne
    @JoinColumn(name = "client_reg_id")
    private Registration registration;

    @ManyToOne
    @JoinColumn(name = "pack_id")
    private Package aPackage;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "registrationPackageDetails", fetch = FetchType.LAZY)
    private List<Payment> paymentDetails = new ArrayList<>();

    public RegistrationPackageDetails() {
    }

    public RegistrationPackageDetails(String licenseStates, Registration registration, Package aPackage, List<Payment> paymentDetails) {
        this.licenseStates = licenseStates;
        this.registration = registration;
        this.aPackage = aPackage;
        this.paymentDetails = paymentDetails;
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

    public List<Payment> getPaymentDetails() {
        return paymentDetails;
    }

    public void setPaymentDetails(List<Payment> paymentDetails) {
        this.paymentDetails = paymentDetails;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("RegistrationPackageDetails{");
        sb.append("pid=").append(pid);
        sb.append(", licenseStates='").append(licenseStates).append('\'');
        sb.append(", registration=").append(registration);
        sb.append(", aPackage=").append(aPackage);
        sb.append(", paymentDetails=").append(paymentDetails);
        sb.append('}');
        return sb.toString();
    }
}
