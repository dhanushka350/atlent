package com.atlent.atlent.dto;

public class IncomeDto {
    private String income_date;
    private String amount;
    private String staffMember;
    private String student;

    public IncomeDto() {
    }

    public IncomeDto(String income_date, String amount, String staffMember, String student) {
        this.income_date = income_date;
        this.amount = amount;
        this.staffMember = staffMember;
        this.student = student;
    }

    public String getIncome_date() {
        return income_date;
    }

    public void setIncome_date(String income_date) {
        this.income_date = income_date;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getStaffMember() {
        return staffMember;
    }

    public void setStaffMember(String staffMember) {
        this.staffMember = staffMember;
    }

    public String getStudent() {
        return student;
    }

    public void setStudent(String student) {
        this.student = student;
    }
}
