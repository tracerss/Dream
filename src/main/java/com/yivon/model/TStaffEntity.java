package com.yivon.model;

import javax.persistence.*;

@Entity
@Table(name = "t_staff", schema = "springdemo", catalog = "")
public class TStaffEntity {
    private int staffId;
    private String account;
    private String psd;
    private String name;
    private String phone;
    private String department;
    private String postion;

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
    @Column(name = "department", nullable = false, length = 30)
    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    @Basic
    @Column(name = "postion", nullable = false, length = 30)
    public String getPostion() {
        return postion;
    }

    public void setPostion(String postion) {
        this.postion = postion;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TStaffEntity that = (TStaffEntity) o;

        if (staffId != that.staffId) return false;
        if (account != null ? !account.equals(that.account) : that.account != null) return false;
        if (psd != null ? !psd.equals(that.psd) : that.psd != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (phone != null ? !phone.equals(that.phone) : that.phone != null) return false;
        if (department != null ? !department.equals(that.department) : that.department != null) return false;
        if (postion != null ? !postion.equals(that.postion) : that.postion != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = staffId;
        result = 31 * result + (account != null ? account.hashCode() : 0);
        result = 31 * result + (psd != null ? psd.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (phone != null ? phone.hashCode() : 0);
        result = 31 * result + (department != null ? department.hashCode() : 0);
        result = 31 * result + (postion != null ? postion.hashCode() : 0);
        return result;
    }
}
