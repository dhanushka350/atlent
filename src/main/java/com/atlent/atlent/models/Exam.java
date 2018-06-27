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

    @Column(name = "time")
    private String time;

    @Column(name = "date")
    private String date;

    @Column(name = "type")
    private String type;

    @OneToMany(mappedBy = "exam", fetch = FetchType.LAZY)
    private List<ExamSchedule> examSchedules = new ArrayList<>();


    public Exam() {
    }

    public Exam(String time, String date, String type, List<ExamSchedule> examSchedules) {
        this.time = time;
        this.date = date;
        this.type = type;
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

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("Exam{");
        sb.append("id=").append(id);
        sb.append(", time='").append(time).append('\'');
        sb.append(", date='").append(date).append('\'');
        sb.append(", type='").append(type).append('\'');
        sb.append(", examSchedules=").append(examSchedules);
        sb.append('}');
        return sb.toString();
    }
}
