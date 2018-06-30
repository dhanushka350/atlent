package com.atlent.atlent.models;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "t_registration")
public class Registration implements Serializable {
    private static final long serialVersionUID = -8483707310559649431L;
    @Id
    @Column(name = "regid")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;


    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "client_id", nullable = false)
    private Student student;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "stbranch", nullable = false)
    private Branch regBranch;

    @Column(name = "date")
    private String date;

    @Column(name = "fee")
    private String fee;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "student_reg_id", fetch = FetchType.LAZY)
    private List<ExamSchedule> examSchedules = new ArrayList<>();

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "registration", fetch = FetchType.LAZY)
    private List<RegistrationPackageDetails> packageDetails = new ArrayList<>();

    public Registration() {
    }


    public Registration(Student student, Branch regBranch, String date, String fee, List<ExamSchedule> examSchedules, List<RegistrationPackageDetails> packageDetails) {
        this.student = student;
        this.regBranch = regBranch;
        this.date = date;
        this.fee = fee;
        this.examSchedules = examSchedules;
        this.packageDetails = packageDetails;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Branch getRegBranch() {
        return regBranch;
    }

    public void setRegBranch(Branch regBranch) {
        this.regBranch = regBranch;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getFee() {
        return fee;
    }

    public void setFee(String fee) {
        this.fee = fee;
    }

    public List<ExamSchedule> getExamSchedules() {
        return examSchedules;
    }

    public void setExamSchedules(List<ExamSchedule> examSchedules) {
        this.examSchedules = examSchedules;
    }

    public List<RegistrationPackageDetails> getPackageDetails() {
        return packageDetails;
    }

    public void setPackageDetails(List<RegistrationPackageDetails> packageDetails) {
        this.packageDetails = packageDetails;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("Registration{");
        sb.append("id=").append(id);
        sb.append(", student=").append(student);
        sb.append(", regBranch=").append(regBranch);
        sb.append(", date='").append(date).append('\'');
        sb.append(", fee='").append(fee).append('\'');
        sb.append(", examSchedules=").append(examSchedules);
        sb.append(", packageDetails=").append(packageDetails);
        sb.append('}');
        return sb.toString();
    }
}
