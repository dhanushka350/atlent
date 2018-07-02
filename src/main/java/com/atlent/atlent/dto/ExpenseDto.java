package com.atlent.atlent.dto;

import java.io.Serializable;

public class ExpenseDto implements Serializable{

    private static final long serialVersionUID = -5919653146991676202L;
    private int id;
    private String date;
    private String time;
    private String reason;
    private String amount;
    private String user;

    public ExpenseDto() {
    }

    public ExpenseDto(int id, String date, String time, String reason, String amount, String user) {
        this.id = id;
        this.date = date;
        this.time = time;
        this.reason = reason;
        this.amount = amount;
        this.user = user;
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

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }
}
