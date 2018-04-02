package com.yivon.controller;

import com.yivon.model.*;
import com.yivon.repository.*;
import com.yivon.service.SelectService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by dzkan on 2016/3/8.
 */
@Controller
public class MainController extends CommonController {



    // 自动装配数据库接口，不需要再写原始的Connection来操作数据库
    @Autowired


/*    UserRepository userRepository;*/
    TStaffRepository tStaffRepository;
    @Autowired
    TaccountRepository account;
    @Autowired

    TDreamRepository tDreamRepository;
    @Autowired
    TdetailRepository tdetailRepository;
    @Autowired
    TProblemRepository tProblemRepository;



    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/index", method = RequestMethod.POST)
    public String result() {

        return "index";

    }




    @RequestMapping(value = "/addUser", method = RequestMethod.GET)
    public String result4() {

        return "addUer";

    }



    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String result5() {

        return "admin/users";

    }
    @RequestMapping(value = "/staff", method = RequestMethod.GET)
    public String result6() {

        return "admin/staff";

    }
/*    @RequestMapping(value = "/detail", method = RequestMethod.GET)
    public String result7() {

        return "admin/detail";

    }*/



    @RequestMapping(value = "/index/show/{id}", method = RequestMethod.GET)
    public String show(@PathVariable("id") Integer userId, ModelMap modelMap) {

        // 找到userId所表示的用户
        TStaffEntity tStaffEntity =tStaffRepository.findOne(userId);
        TDreamEntity tDreamEntity =tDreamRepository.findOne(userId);
        SelectService newview=new SelectService();
        /*newview.staffEntity.setName(tStaffEntity.getName());
        newview.dreamEntity.setDream(tDreamEntity.getDream());*/
        newview.setStaffEntity(tStaffEntity);
        newview.setDreamEntity(tDreamEntity);
        // 传递给请求页面
        modelMap.addAttribute("user",newview);
        return "admin/staff";
    }



    @RequestMapping(value = "/admin/detail/{sid}", method = RequestMethod.GET)
    public String showMoney(@PathVariable("sid") Integer SId, ModelMap Map) {

        // 找到userId所表示的用户
        TAccountEntity tAccountEntity = account.findOne(SId);



        // 传递给请求页面
        Map.addAttribute("account",tAccountEntity);



        return "admin/detail";
    }



    @RequestMapping(value = "/distributiveFund", method = RequestMethod.GET)
    public String distributiveFund() {

        return "/distributiveFund";

    }

    @RequestMapping(value = "/inquire", method = RequestMethod.GET)
    public String inquire() {

        return "/inquire";

    }

    @RequestMapping(value = "/result", method = RequestMethod.GET)
    public String getUsers(ModelMap modelMap) {
        // 查询user表中所有记录
        List<TStaffEntity> userList = tStaffRepository.findAll();

        // 将所有记录传递给要返回的jsp页面，放在userList当中
        modelMap.addAttribute("userList", userList);

        // 返回pages目录下的admin/users.jsp页面
        return "result";
    }








    // post请求，处理添加用户请求，并重定向到用户管理页面
    @RequestMapping(value = "/index/addP", method = RequestMethod.POST)
    public String addUserPost(@ModelAttribute("user") TStaffEntity tStaffEntity) {
        // 注意此处，post请求传递过来的是一个UserEntity对象，里面包含了该用户的信息
        // 通过@ModelAttribute()注解可以获取传递过来的'user'，并创建这个对象

        // 数据库中添加一个用户，该步暂时不会刷新缓存
        //userRepository.save(userEntity);

        // 数据库中添加一个用户，并立即刷新缓存
        tStaffRepository.saveAndFlush(tStaffEntity);

        // 重定向到用户管理页面，方法为 redirect:url
        return "redirect:/result";
    }


    // 删除用户
    @RequestMapping(value = "/index/delete/{staffId}", method = RequestMethod.GET)
    public String deleteUser(@PathVariable("staffId") Integer userId) {

        // 删除id为userId的用户
        tStaffRepository.delete(userId);
        // 立即刷新
        tStaffRepository.flush();
        return "redirect:/result";
    }

    @RequestMapping(value = "/feedback", method = RequestMethod.GET)
    public String getProblem(ModelMap modelMap) {
        // 查询user表中所有记录
        List<TProblemEntity> feedbackList = tProblemRepository.findAll();

        // 将所有记录传递给要返回的jsp页面，放在userList当中
        modelMap.addAttribute("feedbackList", feedbackList);

        // 返回pages目录下的admin/users.jsp页面
        return "feedback";
    }





}

