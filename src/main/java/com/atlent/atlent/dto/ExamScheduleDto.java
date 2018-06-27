package com.atlent.atlent.dto;

public class ExamScheduleDto {
    private String studentNIC;
    private String examID;
    private String state;

    public ExamScheduleDto() {
    }

    public ExamScheduleDto(String studentNIC, String examID, String state) {
        this.studentNIC = studentNIC;
        this.examID = examID;
        this.state = state;
    }

    public String getStudentNIC() {
        return studentNIC;
    }

    public void setStudentNIC(String studentNIC) {
        this.studentNIC = studentNIC;
    }

    public String getExamID() {
        return examID;
    }

    public void setExamID(String examID) {
        this.examID = examID;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("ExamScheduleDto{");
        sb.append("studentNIC='").append(studentNIC).append('\'');
        sb.append(", examID='").append(examID).append('\'');
        sb.append(", state='").append(state).append('\'');
        sb.append('}');
        return sb.toString();
    }
}
