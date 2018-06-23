package com.atlent.atlent.models;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "t_exam")
public class Exam implements Serializable {
    private static final long serialVersionUID = -5333475085026213180L;

    @Id
    @Column(name = "idt_exam")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name = "state")
    private String states;

    @Column(name = "date")
    private String date;

    @OneToMany(mappedBy = "exam", fetch = FetchType.LAZY)
    private List<ExamSchedule> examSchedules = new ArrayList<>();


    public Exam() {
    }

    public Exam(int id, String states, String date, List<ExamSchedule> examSchedules) {
        this.id = id;
        this.states = states;
        this.date = date;
        this.examSchedules = examSchedules;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStates() {
        return states;
    }

    public void setStates(String states) {
        this.states = states;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public List<ExamSchedule> getExamSchedules() {
        return examSchedules;
    }

    public void setExamSchedules(List<ExamSchedule> examSchedules) {
        this.examSchedules = examSchedules;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("Exam{");
        sb.append("id=").append(id);
        sb.append(", states='").append(states).append('\'');
        sb.append(", date='").append(date).append('\'');
        sb.append(", examSchedules=").append(examSchedules);
        sb.append('}');
        return sb.toString();
    }
}
