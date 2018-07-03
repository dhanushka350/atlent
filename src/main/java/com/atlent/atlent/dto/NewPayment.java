package com.atlent.atlent.dto;

import com.atlent.atlent.models.RegistrationPackageDetails;

public class NewPayment {
    private int paymentID;
    private String studentNIC;
    private String date;
    private String fullAmount;
    private String paidAmount;
    private String balancePayment;
    private String staffMember;

    public NewPayment() {
    }

    public NewPayment(int paymentID, String studentNIC, String date, String fullAmount, String paidAmount, String balancePayment, String staffMember) {
        this.paymentID = paymentID;
        this.studentNIC = studentNIC;
        this.date = date;
        this.fullAmount = fullAmount;
        this.paidAmount = paidAmount;
        this.balancePayment = balancePayment;
        this.staffMember = staffMember;
    }

    public String getStaffMember() {
        return staffMember;
    }

    public void setStaffMember(String staffMember) {
        this.staffMember = staffMember;
    }

    public int getPaymentID() {
        return paymentID;
    }

    public void setPaymentID(int paymentID) {
        this.paymentID = paymentID;
    }

    public String getStudentNIC() {
        return studentNIC;
    }

    public void setStudentNIC(String studentNIC) {
        this.studentNIC = studentNIC;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getFullAmount() {
        return fullAmount;
    }

    public void setFullAmount(String fullAmount) {
        this.fullAmount = fullAmount;
    }

    public String getPaidAmount() {
        return paidAmount;
    }

    public void setPaidAmount(String paidAmount) {
        this.paidAmount = paidAmount;
    }

    public String getBalancePayment() {
        return balancePayment;
    }

    public void setBalancePayment(String balancePayment) {
        this.balancePayment = balancePayment;
    }
}
