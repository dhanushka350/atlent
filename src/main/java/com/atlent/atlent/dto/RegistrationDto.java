package com.atlent.atlent.dto;

import com.atlent.atlent.models.Student;

public class RegistrationDto {

    private int id;
    private Student student;
    private String date;
    private String fee;

    public RegistrationDto() {
    }

    public RegistrationDto(int id, Student student, String date, String fee) {
        this.id = id;
        this.student = student;
        this.date = date;
        this.fee = fee;
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
}
