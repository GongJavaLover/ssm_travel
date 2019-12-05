package com.gxj.controller;

import com.gxj.domain.Permission;
import com.gxj.domain.Role;
import com.gxj.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/role")
public class RoleController {
    @Autowired
    private RoleService roleService;

    //为用户添加权限操作
    @RequestMapping("/addPermissionToRole.do")
    public String addPermissionToRole(@RequestParam(name = "roleId",required = true)int rid,@RequestParam(name = "pids",required = true)int[] pids) throws Exception{
        roleService.addPermissionToRole(rid,pids);
        return "redirect:findAll.do";
    }

    //根据rid查询角色和该角色下为拥有的权限
    @RequestMapping("/findRoleByIdAndAllPermission.do")
    public ModelAndView findRoleByIdAndAllPermission(@RequestParam(value = "rid",required = true) int rid) throws Exception{
        ModelAndView mv=new ModelAndView();
        Role role=roleService.findById(rid);
        List<Permission>permissions=roleService.findOtherPermission(rid);
        mv.addObject("role",role);
        mv.addObject("permissionList",permissions);
        mv.setViewName("role-permission-add");
        return mv;
    }

    //添加角色
    @RequestMapping("/save.do")
    public String save(Role role) throws Exception{
        roleService.save(role);
        return "redirect:findAll.do";
    }

    //查找所有角色操作
    @RequestMapping("/findAll.do")
    public ModelAndView findAll() throws Exception{
        ModelAndView mv=new ModelAndView();
        List<Role> roles=roleService.findAll();
        mv.addObject("roleList",roles);
        mv.setViewName("role-list");
        return mv;
    }
}
