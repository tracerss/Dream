package com.yivon.controller;

import com.yivon.Servlet.ApplyDetailSelect;
import com.yivon.model.TApplicationEntity;
import com.yivon.model.TDreamEntity;
import com.yivon.model.TStaffEntity;
import com.yivon.repository.TApplicationRepository;
import com.yivon.repository.TDreamRepository;
import com.yivon.repository.TStaffRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by K550JX on 2018/3/26.
 */
@Controller
public class TapplicationFormController {
    @Autowired
    TApplicationRepository tApplicationRepository;
    @Autowired
    TStaffRepository applyRepository;
    @Autowired
    TDreamRepository tDreamRepository;

    @RequestMapping(value = "/applicationForm", method = RequestMethod.GET)
    public String getApplies(ModelMap modelmap) {
        List<TApplicationEntity> application = tApplicationRepository.findAllByStatus(2);
        if (application == null || application.size() < 1) {
            return "applicationForm";
        } else {
            modelmap.addAttribute("applyList", application);
            return "applicationForm";
        }
    }
    @RequestMapping(value = "/applicationForm", method = RequestMethod.POST)
    public String getApplies2(ModelMap modelmap) {
        List<TApplicationEntity> application = tApplicationRepository.findAllByStatus(2);
        if (application == null || application.size() < 1) {
            return "applicationForm";
        } else {
            modelmap.addAttribute("applyList", application);
            return "applicationForm";
        }
    }
    @RequestMapping(value = "/Apply/applydetail/{id}", method = RequestMethod.GET)
    public String getApplydetail(@PathVariable("id") Integer userId, ModelMap modelMap){
       TStaffEntity getUser = applyRepository.findOne(userId);
       TApplicationEntity getApply = tApplicationRepository.findOne(userId);
       TDreamEntity getDream = tDreamRepository.findOne(userId);
        ApplyDetailSelect applyDetailSelect = new ApplyDetailSelect();
        applyDetailSelect.settApplicationEntity(getApply);
        applyDetailSelect.settStaffEntity(getUser);
        applyDetailSelect.settDreamEntity(getDream);
        modelMap.addAttribute("getUser", applyDetailSelect);
            return "Apply/applydetail";

    }
    @RequestMapping(value = "/Apply/applydetail/success/{id}", method = RequestMethod.GET)
     public String successApply(@PathVariable("id") Integer userId){
        TApplicationEntity getUser = tApplicationRepository.findOne(userId);
        tApplicationRepository.delete(userId);
        getUser.setStatus(1);
        tApplicationRepository.saveAndFlush(getUser);
        return "redirect:/applicationForm";
    }

    @RequestMapping(value = "/Apply/applydetail/default/{id}", method = RequestMethod.POST)
    public Object defaultApply( @PathVariable("id") Integer userId,  String defaultreason ){
        TApplicationEntity getUser = tApplicationRepository.findOne(userId);
        tApplicationRepository.delete(userId);
        getUser.setStatus(0);
        getUser.setRemark(defaultreason);
        tApplicationRepository.saveAndFlush(getUser);
        return "redirect:/applicationForm";
    }
}