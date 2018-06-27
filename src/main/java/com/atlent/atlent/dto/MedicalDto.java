package com.atlent.atlent.dto;

public class MedicalDto {
    private int mid;
    private String isCollected;
    private String description;
    private String date;

    public MedicalDto() {
    }

    public MedicalDto(int mid, String isCollected, String description, String date) {
        this.mid = mid;
        this.isCollected = isCollected;
        this.description = description;
        this.date = date;
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public String getIsCollected() {
        return isCollected;
    }

    public void setIsCollected(String isCollected) {
        this.isCollected = isCollected;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("MedicalDto{");
        sb.append("mid=").append(mid);
        sb.append(", isCollected='").append(isCollected).append('\'');
        sb.append(", description='").append(description).append('\'');
        sb.append(", date='").append(date).append('\'');
        sb.append('}');
        return sb.toString();
    }
}
