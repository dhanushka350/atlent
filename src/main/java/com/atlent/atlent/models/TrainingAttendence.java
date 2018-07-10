package com.atlent.atlent.models;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "t_training_attendance")
public class TrainingAttendence implements Serializable {
    private static final long serialVersionUID = -8093426964677849238L;


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "attendance_id")
    private int attendanceId;


    @Column(name = "is_attended")
    private String isAttended;


    @Column(name = "vehical_no")
    private String vehicalNo;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "trainee", nullable = false)
    private Registration trainee;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "schedule", nullable = false)
    private TrainingDate schedule;

    public TrainingAttendence() {
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public int getAttendanceId() {
        return attendanceId;
    }

    public void setAttendanceId(int attendanceId) {
        this.attendanceId = attendanceId;
    }

    public String getIsAttended() {
        return isAttended;
    }

    public void setIsAttended(String isAttended) {
        this.isAttended = isAttended;
    }

    public String getVehicalNo() {
        return vehicalNo;
    }

    public void setVehicalNo(String vehicalNo) {
        this.vehicalNo = vehicalNo;
    }

    public Registration getTrainee() {
        return trainee;
    }

    public void setTrainee(Registration trainee) {
        this.trainee = trainee;
    }

    public TrainingDate getSchedule() {
        return schedule;
    }

    public void setSchedule(TrainingDate schedule) {
        this.schedule = schedule;
    }

    public TrainingAttendence(String isAttended, String vehicalNo, Registration trainee, TrainingDate schedule) {
        this.isAttended = isAttended;
        this.vehicalNo = vehicalNo;
        this.trainee = trainee;
        this.schedule = schedule;
    }

    @Override
    public String toString() {
        return "TrainingAttendence{" +
                "attendanceId=" + attendanceId +
                ", isAttended='" + isAttended + '\'' +
                ", vehicalNo='" + vehicalNo + '\'' +
                ", trainee=" + trainee +
                ", schedule=" + schedule +
                '}';
    }
}
