package com.yivon.model;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "t_problem", schema = "springdemo", catalog = "")
public class TProblemEntity {
    private int problemId;
    private Integer staffId;
    private String problem;
    private byte problemType;
    private String email;
    private byte status;
    private Timestamp createTime;
    private Timestamp updateTime;

    @Id
    @Column(name = "problem_id", nullable = false)
    public int getProblemId() {
        return problemId;
    }

    public void setProblemId(int problemId) {
        this.problemId = problemId;
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
    @Column(name = "problem", nullable = false, length = 1000)
    public String getProblem() {
        return problem;
    }

    public void setProblem(String problem) {
        this.problem = problem;
    }

    @Basic
    @Column(name = "problem_type", nullable = false)
    public byte getProblemType() {
        return problemType;
    }

    public void setProblemType(byte problemType) {
        this.problemType = problemType;
    }

    @Basic
    @Column(name = "email", nullable = false, length = 100)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "status", nullable = false)
    public byte getStatus() {
        return status;
    }

    public void setStatus(byte status) {
        this.status = status;
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

        TProblemEntity that = (TProblemEntity) o;

        if (problemId != that.problemId) return false;
        if (problemType != that.problemType) return false;
        if (status != that.status) return false;
        if (staffId != null ? !staffId.equals(that.staffId) : that.staffId != null) return false;
        if (problem != null ? !problem.equals(that.problem) : that.problem != null) return false;
        if (email != null ? !email.equals(that.email) : that.email != null) return false;
        if (createTime != null ? !createTime.equals(that.createTime) : that.createTime != null) return false;
        if (updateTime != null ? !updateTime.equals(that.updateTime) : that.updateTime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = problemId;
        result = 31 * result + (staffId != null ? staffId.hashCode() : 0);
        result = 31 * result + (problem != null ? problem.hashCode() : 0);
        result = 31 * result + (int) problemType;
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (int) status;
        result = 31 * result + (createTime != null ? createTime.hashCode() : 0);
        result = 31 * result + (updateTime != null ? updateTime.hashCode() : 0);
        return result;
    }
}
