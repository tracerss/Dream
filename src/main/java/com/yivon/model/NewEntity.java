package com.yivon.model;

import java.io.Serializable;

public class NewEntity implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    private String ID;
    private String Name;
    private String department;
    private  String postion;
    private String createTime;
    private String dream;

    public NewEntity(){}

    public void NewEntity( String ID,String Name, String department, String postion,String createTime,String dream) {
        this.ID=ID;
        this.Name = Name;
        this.department =department;
        this.postion=postion;
        this.createTime=createTime;
        this.dream=dream;
    }

    public void setID(String ID) {
        this.ID= ID;
    }
    public String getID() {
        return ID;
    }


    public void setName(String Name) {
        this.Name = Name;
    }
    public String getName() {
        return Name;
    }

    public void setDepartment(String department) {
        this.department = department;
    }
    public String getDepartment() {
        return department;
    }

    public void setCreatime(String createTime) {
        this.createTime = createTime;
    }
    public String getCreatime() {
        return createTime;
    }

    public void setPostion(String postion) {
        this.postion= postion;
    }
    public String getPostion() {
        return postion;
    }

    public void setDream(String dream) {
        this.dream= dream;
    }
    public String getDream() {
        return dream;
    }
}