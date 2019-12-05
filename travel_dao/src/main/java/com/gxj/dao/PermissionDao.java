package com.gxj.dao;

import com.gxj.domain.Permission;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface PermissionDao {

    @Select("select * from permission where pid in (select permissionId from role_permission where roleId=#{roleId})")
    List<Permission> findByRoleId(int roleId);

    //查找全部权限操作
    @Select("select * from permission")
    List<Permission> findAl() throws Exception;

    @Insert("insert into permission(permissionName,url)values(#{permissionName},#{url})")
    void save(Permission permission) throws Exception;
}
