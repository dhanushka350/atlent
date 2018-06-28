package com.atlent.atlent.dto;

import java.io.Serializable;

public class StaffDto implements Serializable {

    private static final long serialVersionUID = 1675392886014859459L;

    private String nic;
    private String branch;
    private String name;
    private String pass;
    private String mobile;
    private String address;

    public StaffDto() {

    }

    public StaffDto(String nic, String branch, String name, String pass, String mobile, String address) {
        this.nic = nic;
        this.branch = branch;
        this.name = name;
        this.pass = pass;
        this.mobile = mobile;
        this.address = address;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }


}
