package com.atlent.atlent.models;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "t_training_schedule")
public class TrainingDate implements Serializable {
    private static final long serialVersionUID = 9176831005295238806L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "tsid")
    private int tsid;


    @Column(name = "date")
    private String tdate;


    @Column(name = "time")
    private String trtime;

    @OneToMany(mappedBy = "schedule", fetch = FetchType.LAZY)
    private List<TrainingAttendence> trainingAttendences = new ArrayList<>();

    public TrainingDate(String tdate, String trtime, List<TrainingAttendence> trainingAttendences) {
        this.tdate = tdate;
        this.trtime = trtime;
        this.trainingAttendences = trainingAttendences;
    }

    public TrainingDate() {
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public int getTsid() {
        return tsid;
    }

    public void setTsid(int tsid) {
        this.tsid = tsid;
    }

    public String getTdate() {
        return tdate;
    }

    public void setTdate(String tdate) {
        this.tdate = tdate;
    }

    public String getTrtime() {
        return trtime;
    }

    public void setTrtime(String trtime) {
        this.trtime = trtime;
    }

    public List<TrainingAttendence> getTrainingAttendences() {
        return trainingAttendences;
    }


    public void setTrainingAttendences(List<TrainingAttendence> trainingAttendences) {
        this.trainingAttendences = trainingAttendences;

    }

    @Override
    public String toString() {
        return "TrainingDate{" +
                "tsid=" + tsid +
                ", tdate='" + tdate + '\'' +
                ", trtime='" + trtime + '\'' +
                ", trainingAttendences=" + trainingAttendences +
                '}';
    }
}
