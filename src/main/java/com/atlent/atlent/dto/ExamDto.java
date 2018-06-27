package com.atlent.atlent.dto;

import java.io.Serializable;

public class ExamDto implements Serializable {
    private static final long serialVersionUID = -1023977818483348494L;

    private int id;
    private String date;
    private String time;
    private String type;

    public ExamDto() {
    }

    public ExamDto(int id, String date, String time, String type) {
        this.id = id;
        this.date = date;
        this.time = time;
        this.type = type;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("ExamDto{");
        sb.append("id=").append(id);
        sb.append(", date='").append(date).append('\'');
        sb.append(", time='").append(time).append('\'');
        sb.append(", type='").append(type).append('\'');
        sb.append('}');
        return sb.toString();
    }
}
