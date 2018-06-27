package com.atlent.atlent.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class PackageDto implements Serializable {

    private static final long serialVersionUID = 6390090940147887974L;

    private int id;
    private String name;
    private String fee;
    private List<LisenceCategoryDto> list = new ArrayList<>();

    public PackageDto() {
    }

    public PackageDto(int id, String name, String fee, List<LisenceCategoryDto> list) {
        this.id = id;
        this.name = name;
        this.fee = fee;
        this.list = list;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFee() {
        return fee;
    }

    public void setFee(String fee) {
        this.fee = fee;
    }

    public List<LisenceCategoryDto> getList() {
        return list;
    }

    public void setList(List<LisenceCategoryDto> list) {
        this.list = list;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("PackageDto{");
        sb.append("id=").append(id);
        sb.append(", name='").append(name).append('\'');
        sb.append(", fee='").append(fee).append('\'');
        sb.append(", list=").append(list);
        sb.append('}');
        return sb.toString();
    }
}
