package com.atlent.atlent.models;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "t_exam_details")
public class ExamSchedule implements Serializable {
    private static final long serialVersionUID = 5708082000718670740L;
    @Id
    @Column(name = "idt_exam_details")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @ManyToOne
    @JoinColumn(name = "exam")
    private Exam exam;

    @ManyToOne
    @JoinColumn(name = "student")
    private Registration student_reg_id;

    @Column(name = "States")
    private String states;

    public ExamSchedule() {
    }

    public ExamSchedule(Exam exam, Registration student_reg_id, String states) {
        this.exam = exam;
        this.student_reg_id = student_reg_id;
        this.states = states;
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

    public Exam getExam() {
        return exam;
    }

    public void setExam(Exam exam) {
        this.exam = exam;
    }

    public Registration getStudent_reg_id() {
        return student_reg_id;
    }

    public void setStudent_reg_id(Registration student_reg_id) {
        this.student_reg_id = student_reg_id;
    }

    public String getStates() {
        return states;
    }

    public void setStates(String states) {
        this.states = states;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("ExamSchedule{");
        sb.append("id=").append(id);
        sb.append(", exam=").append(exam);
        sb.append(", student_reg_id=").append(student_reg_id);
        sb.append(", states='").append(states).append('\'');
        sb.append('}');
        return sb.toString();
    }
}
