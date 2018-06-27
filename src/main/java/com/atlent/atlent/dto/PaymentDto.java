package com.atlent.atlent.dto;

import com.atlent.atlent.models.RegistrationPackageDetails;

public class PaymentDto {

    private int paymentID;
    private RegistrationPackageDetails registrationPackageDetails;
    private String date;
    private String fullAmount;
    private String paidAmount;
    private String balancePayment;

    public PaymentDto() {
    }

    public PaymentDto(int paymentID, RegistrationPackageDetails registrationPackageDetails, String date, String fullAmount, String paidAmount, String balancePayment) {
        this.paymentID = paymentID;
        this.registrationPackageDetails = registrationPackageDetails;
        this.date = date;
        this.fullAmount = fullAmount;
        this.paidAmount = paidAmount;
        this.balancePayment = balancePayment;
    }

    public int getPaymentID() {
        return paymentID;
    }

    public void setPaymentID(int paymentID) {
        this.paymentID = paymentID;
    }

    public RegistrationPackageDetails getRegistrationPackageDetails() {
        return registrationPackageDetails;
    }

    public void setRegistrationPackageDetails(RegistrationPackageDetails registrationPackageDetails) {
        this.registrationPackageDetails = registrationPackageDetails;
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

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("PaymentDto{");
        sb.append("paymentID=").append(paymentID);
        sb.append(", registrationPackageDetails=").append(registrationPackageDetails);
        sb.append(", date='").append(date).append('\'');
        sb.append(", fullAmount='").append(fullAmount).append('\'');
        sb.append(", paidAmount='").append(paidAmount).append('\'');
        sb.append(", balancePayment='").append(balancePayment).append('\'');
        sb.append('}');
        return sb.toString();
    }
}
