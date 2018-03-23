package com.yivon.controller;

import com.yivon.model.TProblemEntity;
import com.yivon.model.TStaffEntity;
import com.yivon.repository.TProblemRepository;
import com.yivon.repository.TStaffRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.stereotype.Controller;


import java.util.List;

@Controller
public class TproblemController {
    @Autowired
    TProblemRepository tProblemRepository;



    @RequestMapping(value = "/feedback", method = RequestMethod.GET)
    public String getUsers(ModelMap modelMap) {
        // 查询user表中所有记录
        List<TProblemEntity> feedbackList = tProblemRepository.findAll();

        // 将所有记录传递给要返回的jsp页面，放在userList当中
        modelMap.addAttribute("feedbackList", feedbackList);

        // 返回pages目录下的admin/users.jsp页面
        return "feedback";
    }
    }




