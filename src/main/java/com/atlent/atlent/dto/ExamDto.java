package com.atlent.atlent.dto;

import java.io.Serializable;

public class ExamDto implements Serializable {
    private static final long serialVersionUID = -1023977818483348494L;

    private int id;
    private String date;
    private String states;

    public ExamDto() {
    }

    public ExamDto(int id, String date, String states) {
        this.id = id;
        this.date = date;
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

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getStates() {
        return states;
    }

    public void setStates(String states) {
        this.states = states;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("ExamDto{");
        sb.append("id=").append(id);
        sb.append(", date='").append(date).append('\'');
        sb.append(", states='").append(states).append('\'');
        sb.append('}');
        return sb.toString();
    }
}
