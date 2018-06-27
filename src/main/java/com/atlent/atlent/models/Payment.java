package com.atlent.atlent.models;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "t_payment")
public class Payment implements Serializable {
    private static final long serialVersionUID = -9020791958908567599L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "paymentID")
    private int paymentID;

    @ManyToOne
    @JoinColumn(name = "pack_payment_id")
    private RegistrationPackageDetails registrationPackageDetails;

    @Column(name = "date")
    private String date;

    @Column(name = "full_amount")
    private String fullAmount;

    @Column(name = "paid_amount")
    private String paidAmount;

    @Column(name = "balance_payment")
    private String balancePayment;

    public Payment() {
    }

    public Payment(RegistrationPackageDetails registrationPackageDetails, String date, String fullAmount, String paidAmount, String balancePayment) {
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
        final StringBuffer sb = new StringBuffer("Payment{");
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
