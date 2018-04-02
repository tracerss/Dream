package com.yivon.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "t_staff", schema = "datebase", catalog = "")
public class TStaffEntity {
    private int staffId;
    private String account;
    private String psd;
    private String name;
    private String phone;
    private String postion;
    private String department;
    private String entrytime;
    private Timestamp creatime;
    private Timestamp updatetime;

    @Id
    @Column(name = "staff_id", nullable = false)
    public int getStaffId() {
        return staffId;
    }

    public void setStaffId(int staffId) {
        this.staffId = staffId;
    }

    @Basic
    @Column(name = "account", nullable = false, length = 36)
    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    @Basic
    @Column(name = "psd", nullable = false, length = 36)
    public String getPsd() {
        return psd;
    }

    public void setPsd(String psd) {
        this.psd = psd;
    }

    @Basic
    @Column(name = "name", nullable = false, length = 18)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "phone", nullable = false, length = 12)
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "postion", nullable = false, length = 30)
    public String getPostion() {
        return postion;
    }

    public void setPostion(String postion) {
        this.postion = postion;
    }

    @Basic
    @Column(name = "department", nullable = false, length = 30)
    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    @Basic
    @Column(name = "entrytime", nullable = false, length = 12)
    public String getEntrytime() {
        return entrytime;
    }

    public void setEntrytime(String entrytime) {
        this.entrytime = entrytime;
    }

    @Basic
    @Column(name = "creatime", nullable = false)
    public Timestamp getCreatime() {
        return creatime;
    }

    public void setCreatime(Timestamp creatime) {
        this.creatime = creatime;
    }

    @Basic
    @Column(name = "updatetime", nullable = false)
    public Timestamp getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Timestamp updatetime) {
        this.updatetime = updatetime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TStaffEntity that = (TStaffEntity) o;
        return staffId == that.staffId &&
                Objects.equals(account, that.account) &&
                Objects.equals(psd, that.psd) &&
                Objects.equals(name, that.name) &&
                Objects.equals(phone, that.phone) &&
                Objects.equals(postion, that.postion) &&
                Objects.equals(department, that.department) &&
                Objects.equals(entrytime, that.entrytime) &&
                Objects.equals(creatime, that.creatime) &&
                Objects.equals(updatetime, that.updatetime);
    }

    @Override
    public int hashCode() {

        return Objects.hash(staffId, account, psd, name, phone, postion, department, entrytime, creatime, updatetime);
    }
}
