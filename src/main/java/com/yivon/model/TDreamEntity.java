package com.yivon.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "t_dream", schema = "datebase", catalog = "")
public class TDreamEntity {
    private int dreamId;
    private Integer staffId;
    private String dream;
    private Timestamp createTime;
    private Timestamp updateTime;

    @Id
    @Column(name = "dream_id", nullable = false)
    public int getDreamId() {
        return dreamId;
    }

    public void setDreamId(int dreamId) {
        this.dreamId = dreamId;
    }

    @Basic
    @Column(name = "staff_id", nullable = true)
    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    @Basic
    @Column(name = "dream", nullable = false, length = 800)
    public String getDream() {
        return dream;
    }

    public void setDream(String dream) {
        this.dream = dream;
    }

    @Basic
    @Column(name = "create_time", nullable = false)
    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    @Basic
    @Column(name = "update_time", nullable = false)
    public Timestamp getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Timestamp updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TDreamEntity that = (TDreamEntity) o;
        return dreamId == that.dreamId &&
                Objects.equals(staffId, that.staffId) &&
                Objects.equals(dream, that.dream) &&
                Objects.equals(createTime, that.createTime) &&
                Objects.equals(updateTime, that.updateTime);
    }

    @Override
    public int hashCode() {

        return Objects.hash(dreamId, staffId, dream, createTime, updateTime);
    }
}
