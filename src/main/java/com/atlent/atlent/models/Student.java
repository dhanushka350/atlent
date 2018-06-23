package com.atlent.atlent.models;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "t_student")
@XmlRootElement
public class Student implements Serializable {

    private static final long serialVersionUID = -8865499562678933283L;

    @Id
    @Column(name = "nic")
    private String nic;


    @Column(name = "name")
    private String name;


    @Column(name = "password")
    private String password;


    @Column(name = "gender")
    private String gender;


    @Column(name = "date_of_birth")
    private String date_of_birth;


    @Column(name = "age")
    private String age;


    @Column(name = "mobile")
    private int mobile;


    @Column(name = "address")
    private String address;

    @OneToOne(fetch = FetchType.LAZY,
            cascade = CascadeType.ALL,
            mappedBy = "student")
    private Registration registration;

    public Student() {
    }

    public Student(String nic, String name, String password, String gender, String date_of_birth, String age, int mobile, String address, Registration registration) {
        this.nic = nic;
        this.name = name;
        this.password = password;
        this.gender = gender;
        this.date_of_birth = date_of_birth;
        this.age = age;
        this.mobile = mobile;
        this.address = address;
        this.registration = registration;
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

    public Registration getRegistration() {
        return registration;
    }

    public void setRegistration(Registration registration) {
        this.registration = registration;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("Student{");
        sb.append("nic='").append(nic).append('\'');
        sb.append(", name='").append(name).append('\'');
        sb.append(", password='").append(password).append('\'');
        sb.append(", gender='").append(gender).append('\'');
        sb.append(", date_of_birth='").append(date_of_birth).append('\'');
        sb.append(", age='").append(age).append('\'');
        sb.append(", mobile=").append(mobile);
        sb.append(", address='").append(address).append('\'');
        sb.append(", registration=").append(registration);
        sb.append('}');
        return sb.toString();
    }
}
