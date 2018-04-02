package com.yivon.model;

import javax.persistence.*;

import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "t_account", schema = "datebase", catalog = "")
public class TAccountEntity {
    private int accountId;
    private int staffId;
    private double balance;
    private double drawTotal;
    private String happenYear;
    private Timestamp createtime;
    private Timestamp updatatime;

    @Id
    @Column(name = "account_id", nullable = false)
    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
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
    @Column(name = "balance", nullable = false, precision = 0)
    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    @Basic
    @Column(name = "draw_total", nullable = false, precision = 0)
    public double getDrawTotal() {
        return drawTotal;
    }

    public void setDrawTotal(double drawTotal) {
        this.drawTotal = drawTotal;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TAccountEntity that = (TAccountEntity) o;
        return accountId == that.accountId &&
                staffId == that.staffId &&
                Objects.equals(balance, that.balance) &&
                Objects.equals(drawTotal, that.drawTotal) &&
                Objects.equals(happenYear, that.happenYear) &&
                Objects.equals(createtime, that.createtime) &&
                Objects.equals(updatatime, that.updatatime);
    }

    @Override
    public int hashCode() {

        return Objects.hash(accountId, staffId, balance, drawTotal, happenYear, createtime, updatatime);
    }
}
