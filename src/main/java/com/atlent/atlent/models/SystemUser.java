package com.atlent.atlent.models;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;

@Entity
@Table(name = "t_user")
@XmlRootElement
public class SystemUser implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "iduser")
    private Integer user_id;

    @Column(name = "name")
    private String user;

    @Column(name = "password")
    private String password;

    @Column(name = "mobile")
    private String mobile;

    @Column(name = "address")
    private String address;

    @Column(name = "nic")
    private String nic;

    @ManyToOne
    @JoinColumn(name = "branch")
    private Branch branch;

    public SystemUser() {
    }

    public SystemUser(String user, String password, String mobile, String address, String nic, Branch branch) {
        this.user = user;
        this.password = password;
        this.mobile = mobile;
        this.address = address;
        this.nic = nic;
        this.branch = branch;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public Branch getBranch() {
        return branch;
    }

    public void setBranch(Branch branch) {
        this.branch = branch;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("SystemUser{");
        sb.append("user_id=").append(user_id);
        sb.append(", user='").append(user).append('\'');
        sb.append(", password='").append(password).append('\'');
        sb.append(", mobile='").append(mobile).append('\'');
        sb.append(", address='").append(address).append('\'');
        sb.append(", nic='").append(nic).append('\'');
        sb.append(", branch=").append(branch);
        sb.append('}');
        return sb.toString();
    }
}

