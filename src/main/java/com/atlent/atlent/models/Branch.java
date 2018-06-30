package com.atlent.atlent.models;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "t_branch")
public class Branch implements Serializable{

    private static final long serialVersionUID = -1543304227593151358L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "idt_branch")
    private Integer branchID;

    @Column(name = "branch")
    private String branch;

    @OneToMany(mappedBy = "branch", fetch = FetchType.LAZY)
    private List<SystemUser> userList = new ArrayList<>();

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "regBranch", fetch = FetchType.LAZY)
    private List<Registration> membersList = new ArrayList<>();

    public Branch() {
    }

    public Branch(String branch, List<SystemUser> userList, List<Registration> membersList) {
        this.branch = branch;
        this.userList = userList;
        this.membersList = membersList;
    }

    public List<Registration> getMembersList() {
        return membersList;
    }

    public void setMembersList(List<Registration> membersList) {
        this.membersList = membersList;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getBranchID() {
        return branchID;
    }

    public void setBranchID(Integer branchID) {
        this.branchID = branchID;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public List<SystemUser> getUserList() {
        return userList;
    }

    public void setUserList(List<SystemUser> userList) {
        this.userList = userList;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("Branch{");
        sb.append("branchID=").append(branchID);
        sb.append(", branch='").append(branch).append('\'');
        sb.append(", userList=").append(userList);
        sb.append(", membersList=").append(membersList);
        sb.append('}');
        return sb.toString();
    }
}
