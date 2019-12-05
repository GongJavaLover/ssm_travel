package com.gxj.service.impl;

import com.gxj.dao.PermissionDao;
import com.gxj.domain.Permission;
import com.gxj.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class PermissionServiceImpl implements PermissionService{
    @Autowired
    private PermissionDao permissionDao;
    @Override
    public List<Permission> findAll() throws Exception {
        return permissionDao.findAl();
    }

    @Override
    public void save(Permission permission) throws Exception{
        permissionDao.save(permission);
    }
}
