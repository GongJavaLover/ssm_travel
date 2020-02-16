package com.gxj.controller;

import com.gxj.dao.UserDao;
import com.gxj.domain.Role;
import com.gxj.domain.Route;
import com.gxj.domain.UserInfo;
import com.gxj.service.RouteService;
import com.gxj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private RouteService routeService;



    //为用户添加角色操作
    @RequestMapping("/addRoleToUser.do")
    public String addRoleToUser(@RequestParam(name = "userId",required = true)Integer uid,@RequestParam(name = "rids",required = true)int[] rids) throws Exception {
        userService.addRoleToUser(uid,rids);
        return "redirect:findAll.do";
    }

    //查询用户以及他可以添加的角色信息
    @RequestMapping("/findUserByIdAndAllRole.do")
    public ModelAndView findUserByIdAndAllRole(@RequestParam(name = "uid",required = true) Integer uid) throws Exception {
        ModelAndView mv=new ModelAndView();
        //根据id查找用户信息
        UserInfo userInfo = userService.findById(uid);
        //根据id查找与用户相关联的角色
        List<Role> otherRole=userService.findOtherRoleById(uid);
        mv.addObject("user",userInfo);
        mv.addObject("roleList",otherRole);
        mv.setViewName("user-role-add");
        return mv;
    }

    //查询指定用户详情
    @RequestMapping("/findById.do")
    public ModelAndView findById(Integer uid) throws Exception {
        ModelAndView mv=new ModelAndView();
        UserInfo userInfo=userService.findById(uid);
        mv.addObject("user",userInfo);
        mv.setViewName("user-show");
        return mv;
    }

    //添加用户操作
    @RequestMapping("/save.do")
    public String sava(UserInfo userInfo) throws Exception{
        userService.save(userInfo);
        return "redirect:findAll.do";
    }

    //查找全部用户方法
    @RequestMapping("/findAll.do")
    public ModelAndView findAll() throws Exception {
        ModelAndView mv=new ModelAndView();
        List<UserInfo> users=userService.findAll();
        mv.addObject("userList",users);
        mv.setViewName("user-list");
        return mv;
    }

    //用户注册操作
    @RequestMapping("/register.do")
    public String register(UserInfo userInfo) throws Exception{
        userService.register(userInfo);
        return "../login";
    }

    //后台跳转到前台
    @RequestMapping("/transfer.do")
    public ModelAndView transfer() throws Exception{
        ModelAndView mv=new ModelAndView();
        List<Route> routes = routeService.findAll();
        mv.addObject("routes",routes);
        mv.setViewName("/front-pages/travel-index");
        return mv;
    }

}
