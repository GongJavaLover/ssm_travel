package com.gxj.service.impl;

import com.gxj.dao.RoleDao;
import com.gxj.domain.Permission;
import com.gxj.domain.Role;
import com.gxj.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Service
@Transactional
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleDao roleDao;
    //添加角色


    //查找所有角色
    @Override
    public List<Role> findAll() throws Exception {
        return roleDao.findAll();
    }

    //添加角色
    @Override
    public void save(Role role) throws Exception {
        roleDao.save(role);
    }

    @Override
    public Role findById(int rid) throws Exception {
        return roleDao.findRoleByRoleId(rid);
    }

    @Override
    public List<Permission> findOtherPermission(int rid) throws Exception {
        return roleDao.findOtherPerByRid(rid);
    }

    //为角色添加权限
    @Override
    public void addPermissionToRole(int rid, int[] pids) throws Exception {
        for (int pid : pids) {
        roleDao.addPermissionToRole(rid,pid);
        }
    }
}
