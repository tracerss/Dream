package com.yivon.Servlet;

import com.yivon.model.TApplicationEntity;
import com.yivon.model.TDreamEntity;
import com.yivon.model.TStaffEntity;

/**
 * Created by K550JX on 2018/4/1.
 */
public class ApplyDetailSelect {

    TApplicationEntity tApplicationEntity;
    TStaffEntity tStaffEntity;
    TDreamEntity tDreamEntity;
    public TApplicationEntity gettApplicationEntity() {
        return tApplicationEntity;
    }
    public void settApplicationEntity(TApplicationEntity tApplicationEntity){
        this.tApplicationEntity =tApplicationEntity;
    }
    public TStaffEntity getStaffEntity() {
        return tStaffEntity;
    }
    public void  settStaffEntity(TStaffEntity tStaffEntity){
        this.tStaffEntity = tStaffEntity;
    }
    public TDreamEntity getDreamEntity() {
        return tDreamEntity;
    }
    public void settDreamEntity(TDreamEntity tDreamEntity){
        this.tDreamEntity =tDreamEntity;

    }

}
