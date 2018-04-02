package com.yivon.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "t_problem", schema = "datebase", catalog = "")
public class TProblemEntity {
    private int problemId;
    private int staffId;
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
    @Column(name = "staff_id", nullable = false)
    public int getStaffId() {
        return staffId;
    }

    public void setStaffId(int staffId) {
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
        return problemId == that.problemId &&
                staffId == that.staffId &&
                problemType == that.problemType &&
                status == that.status &&
                Objects.equals(problem, that.problem) &&
                Objects.equals(email, that.email) &&
                Objects.equals(createTime, that.createTime) &&
                Objects.equals(updateTime, that.updateTime);
    }

    @Override
    public int hashCode() {

        return Objects.hash(problemId, staffId, problem, problemType, email, status, createTime, updateTime);
    }
}
