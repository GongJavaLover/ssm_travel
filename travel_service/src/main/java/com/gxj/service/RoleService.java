package com.gxj.service;

import com.gxj.domain.Permission;
import com.gxj.domain.Role;

import java.util.List;

public interface RoleService {

    List<Role> findAll() throws Exception;

    void save(Role role) throws Exception;

    Role findById(int rid) throws Exception;

    List<Permission> findOtherPermission(int rid) throws Exception;

    void addPermissionToRole(int rid, int[] pids) throws Exception;
}
