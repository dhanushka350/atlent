package com.atlent.atlent.dto;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;

public class StudentDto implements Serializable{

    private static final long serialVersionUID = -337617102463222826L;

    private String nic;

    private String name;

    private String password;

    private String gender;

    private String date_of_birth;

    private String age;

    private int mobile;

    private String address;

    public StudentDto() {
    }

    public StudentDto(String nic, String name, String password, String gender, String date_of_birth, String age, int mobile, String address) {
        this.nic = nic;
        this.name = name;
        this.password = password;
        this.gender = gender;
        this.date_of_birth = date_of_birth;
        this.age = age;
        this.mobile = mobile;
        this.address = address;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDate_of_birth() {
        return date_of_birth;
    }

    public void setDate_of_birth(String date_of_birth) {
        this.date_of_birth = date_of_birth;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public int getMobile() {
        return mobile;
    }

    public void setMobile(int mobile) {
        this.mobile = mobile;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("StudentDto{");
        sb.append("nic=").append(nic);
        sb.append(", name='").append(name).append('\'');
        sb.append(", password='").append(password).append('\'');
        sb.append(", gender='").append(gender).append('\'');
        sb.append(", date_of_birth='").append(date_of_birth).append('\'');
        sb.append(", age='").append(age).append('\'');
        sb.append(", mobile=").append(mobile);
        sb.append(", address='").append(address).append('\'');
        sb.append('}');
        return sb.toString();
    }
}
