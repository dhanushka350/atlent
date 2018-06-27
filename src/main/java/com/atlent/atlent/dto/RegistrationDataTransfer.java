package com.atlent.atlent.dto;

import java.io.Serializable;

public class RegistrationDataTransfer implements Serializable {

    private static final long serialVersionUID = -5803794189678405073L;
    private String s_nic;
    private String s_name;
    private String s_password;
    private String s_gender;
    private String s_date_of_birth;
    private String s_age;
    private String s_mobile;
    private String s_address;

    private String p_packageID;

    private String r_date;
    private String r_fee;

    private String p_fullAmount;
    private String p_paidAmount;
    private String p_balancePayment;

    private String m_isCollected;
    private String m_description;

    public RegistrationDataTransfer() {
    }

    public RegistrationDataTransfer(String s_nic, String s_name, String s_password, String s_gender, String s_date_of_birth, String s_age, String s_mobile, String s_address, String p_packageID, String r_date, String r_fee, String p_fullAmount, String p_paidAmount, String p_balancePayment, String m_isCollected, String m_description) {
        this.s_nic = s_nic;
        this.s_name = s_name;
        this.s_password = s_password;
        this.s_gender = s_gender;
        this.s_date_of_birth = s_date_of_birth;
        this.s_age = s_age;
        this.s_mobile = s_mobile;
        this.s_address = s_address;
        this.p_packageID = p_packageID;
        this.r_date = r_date;
        this.r_fee = r_fee;
        this.p_fullAmount = p_fullAmount;
        this.p_paidAmount = p_paidAmount;
        this.p_balancePayment = p_balancePayment;
        this.m_isCollected = m_isCollected;
        this.m_description = m_description;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getS_nic() {
        return s_nic;
    }

    public void setS_nic(String s_nic) {
        this.s_nic = s_nic;
    }

    public String getS_name() {
        return s_name;
    }

    public void setS_name(String s_name) {
        this.s_name = s_name;
    }

    public String getS_password() {
        return s_password;
    }

    public void setS_password(String s_password) {
        this.s_password = s_password;
    }

    public String getS_gender() {
        return s_gender;
    }

    public void setS_gender(String s_gender) {
        this.s_gender = s_gender;
    }

    public String getS_date_of_birth() {
        return s_date_of_birth;
    }

    public void setS_date_of_birth(String s_date_of_birth) {
        this.s_date_of_birth = s_date_of_birth;
    }

    public String getS_age() {
        return s_age;
    }

    public void setS_age(String s_age) {
        this.s_age = s_age;
    }

    public String getS_mobile() {
        return s_mobile;
    }

    public void setS_mobile(String s_mobile) {
        this.s_mobile = s_mobile;
    }

    public String getS_address() {
        return s_address;
    }

    public void setS_address(String s_address) {
        this.s_address = s_address;
    }

    public String getP_packageID() {
        return p_packageID;
    }

    public void setP_packageID(String p_packageID) {
        this.p_packageID = p_packageID;
    }

    public String getR_date() {
        return r_date;
    }

    public void setR_date(String r_date) {
        this.r_date = r_date;
    }

    public String getR_fee() {
        return r_fee;
    }

    public void setR_fee(String r_fee) {
        this.r_fee = r_fee;
    }

    public String getP_fullAmount() {
        return p_fullAmount;
    }

    public void setP_fullAmount(String p_fullAmount) {
        this.p_fullAmount = p_fullAmount;
    }

    public String getP_paidAmount() {
        return p_paidAmount;
    }

    public void setP_paidAmount(String p_paidAmount) {
        this.p_paidAmount = p_paidAmount;
    }

    public String getP_balancePayment() {
        return p_balancePayment;
    }

    public void setP_balancePayment(String p_balancePayment) {
        this.p_balancePayment = p_balancePayment;
    }

    public String getM_isCollected() {
        return m_isCollected;
    }

    public void setM_isCollected(String m_isCollected) {
        this.m_isCollected = m_isCollected;
    }

    public String getM_description() {
        return m_description;
    }

    public void setM_description(String m_description) {
        this.m_description = m_description;
    }
}
