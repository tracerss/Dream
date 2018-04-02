package com.yivon.service;

import com.yivon.model.TDreamEntity;
import com.yivon.model.TStaffEntity;

public class SelectService {
    TStaffEntity staffEntity;
    TDreamEntity dreamEntity;

    public TStaffEntity getStaffEntity() {
        return staffEntity;
    }

    public void setStaffEntity(TStaffEntity staffEntity) {
        this.staffEntity = staffEntity;
    }

    public TDreamEntity getDreamEntity() {
        return dreamEntity;
    }

    public void setDreamEntity(TDreamEntity dreamEntity) {
        this.dreamEntity = dreamEntity;
    }
}
