package com.atlent.atlent.models;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "t_medical_report")
public class Medical implements Serializable {
    private static final long serialVersionUID = -6453998893625479708L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "mid")
    private int mid;
    @Column(name = "states")
    private String isCollected;
    @Column(name = "description")
    private String description;
    @Column(name = "date")
    private String date;
    @ManyToOne
    @JoinColumn(name = "client")
    private Student medStudent;

    public Medical() {
    }

    public Medical(String isCollected, String description, String date, Student medStudent) {
        this.isCollected = isCollected;
        this.description = description;
        this.date = date;
        this.medStudent = medStudent;
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public String getIsCollected() {
        return isCollected;
    }

    public void setIsCollected(String isCollected) {
        this.isCollected = isCollected;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Student getMedStudent() {
        return medStudent;
    }

    public void setMedStudent(Student medStudent) {
        this.medStudent = medStudent;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("Medical{");
        sb.append("mid=").append(mid);
        sb.append(", isCollected='").append(isCollected).append('\'');
        sb.append(", description='").append(description).append('\'');
        sb.append(", date='").append(date).append('\'');
        sb.append(", medStudent=").append(medStudent);
        sb.append('}');
        return sb.toString();
    }
}
