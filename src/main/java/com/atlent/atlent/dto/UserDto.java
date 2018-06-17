package com.atlent.atlent.dto;

import java.io.Serializable;

public class UserDto implements Serializable {
    private static final long serialVersionUID = 6921131386869801728L; // meka aniwaryenma danna ona

    private String user;
    private String pass;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    @Override
    public String toString() {
        return "UserDto{" +
                "user='" + user + '\'' +
                ", pass='" + pass + '\'' +
                '}';
    }
}
