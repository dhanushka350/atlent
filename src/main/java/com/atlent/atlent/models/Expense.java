package com.atlent.atlent.models;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "t_expenses")
public class Expense implements Serializable {
    private static final long serialVersionUID = -7317917853314820214L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "idt_expenses")
    private int id;
    @Column(name = "ex_date")
    private String date;
    @Column(name = "ex_time")
    private String time;
    @Column(name = "reason")
    private String reason;
    @Column(name = "amount")
    private String amount;
    @ManyToOne
    @JoinColumn(name = "staff")
    private SystemUser user;

    public Expense() {
    }

    public Expense(String date, String time, String reason, String amount, SystemUser user) {
        this.date = date;
        this.time = time;
        this.reason = reason;
        this.amount = amount;
        this.user = user;
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

    public SystemUser getUser() {
        return user;
    }

    public void setUser(SystemUser user) {
        this.user = user;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("Expense{");
        sb.append("id=").append(id);
        sb.append(", date='").append(date).append('\'');
        sb.append(", time='").append(time).append('\'');
        sb.append(", reason='").append(reason).append('\'');
        sb.append(", amount='").append(amount).append('\'');
        sb.append(", user=").append(user);
        sb.append('}');
        return sb.toString();
    }
}
