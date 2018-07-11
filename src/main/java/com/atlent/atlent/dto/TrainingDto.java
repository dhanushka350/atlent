package com.atlent.atlent.dto;

import java.io.Serializable;

public class TrainingDto implements Serializable {

    private static final long serialVersionUID = 9135666894685207949L;

    private int id;
    private String date;
    private String time;

    public TrainingDto() {
    }

    public TrainingDto(int id, String date, String time) {
        this.id = id;
        this.date = date;
        this.time = time;
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

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "TrainingDto{" +
                "id=" + id +
                ", date='" + date + '\'' +
                ", time='" + time + '\'' +
                '}';
    }
}
