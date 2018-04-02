package com.yivon.model;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "t_detail", schema = "datebase", catalog = "")
public class TDetailEntity {
    private int billId;
    private int staffId;
    private Serializable money;
    private byte moneyType;
    private String happenYear;
    private Timestamp createtime;
    private Timestamp updatatime;
    private String remark;

    @Id
    @Column(name = "bill_id", nullable = false)
    public int getBillId() {
        return billId;
    }

    public void setBillId(int billId) {
        this.billId = billId;
    }

    @Basic
    @Column(name = "staff_id", nullable = false)
    public int getStaffId() {
        return staffId;
    }

    public void setStaffId(int staffId) {
        this.staffId = staffId;
    }

    @Basic
    @Column(name = "money", nullable = false, precision = 0)
    public Serializable getMoney() {
        return money;
    }

    public void setMoney(Serializable money) {
        this.money = money;
    }

    @Basic
    @Column(name = "money_type", nullable = false)
    public byte getMoneyType() {
        return moneyType;
    }

    public void setMoneyType(byte moneyType) {
        this.moneyType = moneyType;
    }

    @Basic
    @Column(name = "happen_year", nullable = false, length = 4)
    public String getHappenYear() {
        return happenYear;
    }

    public void setHappenYear(String happenYear) {
        this.happenYear = happenYear;
    }

    @Basic
    @Column(name = "createtime", nullable = false)
    public Timestamp getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Timestamp createtime) {
        this.createtime = createtime;
    }

    @Basic
    @Column(name = "updatatime", nullable = false)
    public Timestamp getUpdatatime() {
        return updatatime;
    }

    public void setUpdatatime(Timestamp updatatime) {
        this.updatatime = updatatime;
    }

    @Basic
    @Column(name = "remark", nullable = false, length = 200)
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
        TDetailEntity that = (TDetailEntity) o;
        return billId == that.billId &&
                staffId == that.staffId &&
                moneyType == that.moneyType &&
                Objects.equals(money, that.money) &&
                Objects.equals(happenYear, that.happenYear) &&
                Objects.equals(createtime, that.createtime) &&
                Objects.equals(updatatime, that.updatatime) &&
                Objects.equals(remark, that.remark);
    }

    @Override
    public int hashCode() {

        return Objects.hash(billId, staffId, money, moneyType, happenYear, createtime, updatatime, remark);
    }
}
