package com.yivon.controller;

import com.yivon.model.TStaffEntity;
import com.yivon.repository.TStaffRepository;
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
/*
    @RequestMapping(value = "/result", method = RequestMethod.GET)
    public String result2() {

        return "result";

    }*/


    @RequestMapping(value = "/addUser", method = RequestMethod.GET)
    public String result4() {

        return "addUer";

    }

    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String result5() {

        return "admin/users";

    }
    @RequestMapping(value = "/applicationForm", method = RequestMethod.GET)
    public String applicationForm() {

        return "/applicationForm";

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
    @RequestMapping(value = "/index/add", method = RequestMethod.GET)
    public String result3() {

        return "admin/addUser";

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




/*    @RequestMapping(value = "/admin/users", method = RequestMethod.GET)
    public String getUsers(ModelMap modelMap) {
        // 查询user表中所有记录
        List<UserEntity> userList = userRepository.findAll();

        // 将所有记录传递给要返回的jsp页面，放在userList当中
        modelMap.addAttribute("userList", userList);

        // 返回pages目录下的admin/users.jsp页面
        return "admin/users";

    }*/


/*
    // get请求，访问添加用户 页面
    @RequestMapping(value = "/admin/users/add", method = RequestMethod.GET)
    public String addUser() {
        // 转到 admin/addUser.jsp页面
        return "admin/addUser";
    }
*/

    // post请求，处理添加用户请求，并重定向到用户管理页面
  /*  @RequestMapping(value = "/admin/users/addP", method = RequestMethod.POST)
    public String addUserPost(@ModelAttribute("user") UserEntity userEntity) {
        // 注意此处，post请求传递过来的是一个UserEntity对象，里面包含了该用户的信息
        // 通过@ModelAttribute()注解可以获取传递过来的'user'，并创建这个对象

        // 数据库中添加一个用户，该步暂时不会刷新缓存
        //userRepository.save(userEntity);

        // 数据库中添加一个用户，并立即刷新缓存
        userRepository.saveAndFlush(userEntity);

        // 重定向到用户管理页面，方法为 redirect:url
        return "redirect:/admin/users";

    }
    // 查看用户详情
// @PathVariable可以收集url中的变量，需匹配的变量用{}括起来
// 例如：访问 localhost:8080/admin/users/show/1 ，将匹配 id = 1
    @RequestMapping(value = "/admin/users/show/{id}", method = RequestMethod.GET)
    public String showUser(@PathVariable("id") Integer userId, ModelMap modelMap) {

        // 找到userId所表示的用户
        UserEntity userEntity = userRepository.findOne(userId);

        // 传递给请求页面
        modelMap.addAttribute("user", userEntity);
        return "admin/userDetail";
    }

    // 更新用户信息 页面
    @RequestMapping(value = "/admin/users/update/{id}", method = RequestMethod.GET)
    public String updateUser(@PathVariable("id") Integer userId, ModelMap modelMap) {

        // 找到userId所表示的用户
        UserEntity userEntity = userRepository.findOne(userId);

        // 传递给请求页面
        modelMap.addAttribute("user", userEntity);
        return "admin/updateUser";
    }

    // 更新用户信息 操作
    @RequestMapping(value = "/admin/users/updateP", method = RequestMethod.POST)
    public String updateUserPost(@ModelAttribute("userP") UserEntity user) {

        // 更新用户信息
        userRepository.updateUser(user.getNickname(), user.getFirstName(),
                user.getLastName(), user.getPassword(), user.getId());
        userRepository.flush(); // 刷新缓冲区
        return "redirect:/admin/users";
    }
    // 删除用户
    @RequestMapping(value = "/admin/users/delete/{id}", method = RequestMethod.GET)
    public String deleteUser(@PathVariable("id") Integer userId) {

        // 删除id为userId的用户
        userRepository.delete(userId);
        // 立即刷新
        userRepository.flush();
        return "redirect:/admin/users";
    }*/
}
/*
public class MainController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "index";
    }
}
*/
