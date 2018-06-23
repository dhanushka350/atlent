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

    @JoinColumn(name = "date")
    private String date;

    @JoinColumn(name = "fee")
    private String fee;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "student_reg_id", fetch = FetchType.LAZY)
    private List<ExamSchedule> examSchedules = new ArrayList<>();
}
