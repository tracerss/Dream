package com.yivon.model;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;

/**
 * Created by K550JX on 2018/3/26.
 */
@Entity
@Table(name = "t_application", schema = "springmvcdb", catalog = "")
public class TApplicationEntity  implements java.io.Serializable  {
    private int applyId;
    private int staffId;
    private double applyNum;
    private int applyType;
    private String applyYear;
    private Date createtime;
    private int status;
    private String picUrl;
    private Date manageTime;
    private Date updatetime;
    private String remark;

    @Id
    @Column(name = "apply_id")
    public int getApplyId() {
        return applyId;
    }

    public void setApplyId(int applyId) {
        this.applyId = applyId;
    }

    @Basic
    @Column(name = "staff_id")
    public int getStaffId() {
        return staffId;
    }

    public void setStaffId(int staffId) {
        this.staffId = staffId;
    }

    @Basic
    @Column(name = "apply_num")
    public double getApplyNum() {
        return applyNum;
    }

    public void setApplyNum(double applyNum) {
        this.applyNum = applyNum;
    }

    @Basic
    @Column(name = "apply_type")
    public int getApplyType() {
        return applyType;
    }

    public void setApplyType(int applyType) {
        this.applyType = applyType;
    }

    @Basic
    @Column(name = "apply_year")
    public String getApplyYear() {
        return applyYear;
    }

    public void setApplyYear(String applyYear) {
        this.applyYear = applyYear;
    }

    @Basic
    @Column(name = "createtime")
    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    @Basic
    @Column(name = "status")
    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Basic
    @Column(name = "pic_url")
    public String getPicUrl() {
        return picUrl;
    }

    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl;
    }

    @Basic
    @Column(name = "manage_time")
    public Date getManageTime() {
        return manageTime;
    }

    public void setManageTime(Date manageTime) {
        this.manageTime = manageTime;
    }

    @Basic
    @Column(name = "updatetime")
    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    @Basic
    @Column(name = "remark")
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TApplicationEntity that = (TApplicationEntity) o;

        if (applyId != that.applyId) return false;
        if (staffId != that.staffId) return false;
        if (applyType != that.applyType) return false;
        if (status != that.status) return false;
        if (applyNum != that.applyNum ) return false;
        if (applyYear != null ? !applyYear.equals(that.applyYear) : that.applyYear != null) return false;
        if (createtime != null ? !createtime.equals(that.createtime) : that.createtime != null) return false;
        if (picUrl != null ? !picUrl.equals(that.picUrl) : that.picUrl != null) return false;
        if (manageTime != null ? !manageTime.equals(that.manageTime) : that.manageTime != null) return false;
        if (updatetime != null ? !updatetime.equals(that.updatetime) : that.updatetime != null) return false;
        if (remark != null ? !remark.equals(that.remark) : that.remark != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = applyId;
        result = 31 * result + staffId;
        result = 31 * result +  (int)applyNum;
        result = 31 * result + applyType;
        result = 31 * result + (applyYear != null ? applyYear.hashCode() : 0);
        result = 31 * result + (createtime != null ? createtime.hashCode() : 0);
        result = 31 * result + status;
        result = 31 * result + (picUrl != null ? picUrl.hashCode() : 0);
        result = 31 * result + (manageTime != null ? manageTime.hashCode() : 0);
        result = 31 * result + (updatetime != null ? updatetime.hashCode() : 0);
        result = 31 * result + (remark != null ? remark.hashCode() : 0);
        return result;
    }
}
