package com.atlent.atlent.dto;

import java.io.Serializable;

public class LisenceCategoryDto implements Serializable {
    private static final long serialVersionUID = 6185103673885665044L;

    private int id;
    private String vehicle_class;
    private String description;
    private String otherClasses;
    private String oldClass;
    private String price;
    private String pictograph;

    public LisenceCategoryDto() {
    }

    public LisenceCategoryDto(int id, String vehicle_class, String description, String other_Classes, String old_Class, String price, String pictograph) {
        this.id = id;
        this.vehicle_class = vehicle_class;
        this.description = description;
        otherClasses = other_Classes;
        oldClass = old_Class;
        this.price = price;
        this.pictograph = pictograph;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getVehicle_class() {
        return vehicle_class;
    }

    public void setVehicle_class(String vehicle_class) {
        this.vehicle_class = vehicle_class;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getOtherClasses() {
        return otherClasses;
    }

    public void setOtherClasses(String otherClasses) {
        this.otherClasses = otherClasses;
    }

    public String getOldClass() {
        return oldClass;
    }

    public void setOldClass(String oldClass) {
        this.oldClass = oldClass;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPictograph() {
        return pictograph;
    }

    public void setPictograph(String pictograph) {
        this.pictograph = pictograph;
    }
}
