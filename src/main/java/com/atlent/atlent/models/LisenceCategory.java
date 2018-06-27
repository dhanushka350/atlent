package com.atlent.atlent.models;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;

@Entity
@Table(name = "t_vehical_classes")
@XmlRootElement
public class LisenceCategory implements Serializable {

    private static final long serialVersionUID = 8892048219176107613L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "idt_vehical_classes")
    private int id;
    @Column(name = "Vehicle_Class")
    private String vehicle_class;
    @Column(name = "Description")
    private String Description;
    @Column(name = "Other_Classes")
    private String Other_Classes;
    @Column(name = "Old_Class")
    private String Old_Class;
    @Column(name = "price")
    private String price;
    @Column(name = "Pictograph")
    private String Pictograph;
    @ManyToOne
    @JoinColumn(name = "packageID")
    private Package aPackage;

    public LisenceCategory() {
    }

    public LisenceCategory(String vehicle_class, String description, String other_Classes, String old_Class, String price, String pictograph, Package aPackage) {
        this.vehicle_class = vehicle_class;
        Description = description;
        Other_Classes = other_Classes;
        Old_Class = old_Class;
        this.price = price;
        Pictograph = pictograph;
        this.aPackage = aPackage;
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
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public String getOther_Classes() {
        return Other_Classes;
    }

    public void setOther_Classes(String other_Classes) {
        Other_Classes = other_Classes;
    }

    public String getOld_Class() {
        return Old_Class;
    }

    public void setOld_Class(String old_Class) {
        Old_Class = old_Class;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPictograph() {
        return Pictograph;
    }

    public void setPictograph(String pictograph) {
        Pictograph = pictograph;
    }

    public Package getaPackage() {
        return aPackage;
    }

    public void setaPackage(Package aPackage) {
        this.aPackage = aPackage;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("LisenceCategory{");
        sb.append("id=").append(id);
        sb.append(", vehicle_class='").append(vehicle_class).append('\'');
        sb.append(", Description='").append(Description).append('\'');
        sb.append(", Other_Classes='").append(Other_Classes).append('\'');
        sb.append(", Old_Class='").append(Old_Class).append('\'');
        sb.append(", price='").append(price).append('\'');
        sb.append(", Pictograph='").append(Pictograph).append('\'');
        sb.append(", aPackage=").append(aPackage);
        sb.append('}');
        return sb.toString();
    }
}
