package com.atlent.atlent.models;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "t_package")
public class Package implements Serializable {
    private static final long serialVersionUID = 4202593941802011956L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "idt_package")
    private int id;
    @Column(name = "package_name")
    private String name;
    @Column(name = "fee")
    private String fee;
    @OneToMany(mappedBy = "aPackage", fetch = FetchType.LAZY)
    private List<LisenceCategory> list = new ArrayList<>();
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "aPackage", fetch = FetchType.LAZY)
    private List<RegistrationPackageDetails> packageDetails = new ArrayList<>();

    public Package() {
    }

    public Package(String name, String fee, List<LisenceCategory> list, List<RegistrationPackageDetails> packageDetails) {
        this.name = name;
        this.fee = fee;
        this.list = list;
        this.packageDetails = packageDetails;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFee() {
        return fee;
    }

    public void setFee(String fee) {
        this.fee = fee;
    }

    public List<LisenceCategory> getList() {
        return list;
    }

    public void setList(List<LisenceCategory> list) {
        this.list = list;
    }

    public List<RegistrationPackageDetails> getPackageDetails() {
        return packageDetails;
    }

    public void setPackageDetails(List<RegistrationPackageDetails> packageDetails) {
        this.packageDetails = packageDetails;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("Package{");
        sb.append("id=").append(id);
        sb.append(", name='").append(name).append('\'');
        sb.append(", fee='").append(fee).append('\'');
        sb.append(", list=").append(list);
        sb.append(", packageDetails=").append(packageDetails);
        sb.append('}');
        return sb.toString();
    }
}
