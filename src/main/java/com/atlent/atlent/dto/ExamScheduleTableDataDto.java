package com.atlent.atlent.dto;

public class ExamScheduleTableDataDto {
    private String student_name;
    private String nic;
    private String exam_date;
    private String exam_type;
    private String states;
    private String result;

    public ExamScheduleTableDataDto() {
    }

    public ExamScheduleTableDataDto(String student_name, String nic, String exam_date, String exam_type, String states, String result) {
        this.student_name = student_name;
        this.nic = nic;
        this.exam_date = exam_date;
        this.exam_type = exam_type;
        this.states = states;
        this.result = result;
    }

    public String getStudent_name() {
        return student_name;
    }

    public void setStudent_name(String student_name) {
        this.student_name = student_name;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getExam_date() {
        return exam_date;
    }

    public void setExam_date(String exam_date) {
        this.exam_date = exam_date;
    }

    public String getExam_type() {
        return exam_type;
    }

    public void setExam_type(String exam_type) {
        this.exam_type = exam_type;
    }

    public String getStates() {
        return states;
    }

    public void setStates(String states) {
        this.states = states;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }
}
