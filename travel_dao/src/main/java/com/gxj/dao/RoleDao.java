package com.gxj.dao;

import com.gxj.domain.Permission;
import com.gxj.domain.Role;
import org.apache.ibatis.annotations.*;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface RoleDao {

    //通过用户id查找角色信息
    @Select("select * from role where rid in (select roleId from user_role where userId=#{userId})")
    @Results(id = "roleMap",value = {
            @Result(id = true,property = "rid",column = "rid"),
            @Result(property = "roleName",column = "roleName"),
            @Result(property = "roleDesc",column = "roleDesc"),
            @Result(property = "permissions",column = "rid",
                    many = @Many(select = "com.gxj.dao.PermissionDao.findByRoleId"))

    })
    public List<Role> findRoleByUserId(int userId) throws Exception;

    //查询所有角色
    @Select("select * from role")
    List<Role> findAll() throws Exception;

    @Insert("insert into role(roleName,roleDesc)values(#{roleName},#{roleDesc})")
    void save(Role role) throws Exception;

    //根据角色rid查找角色
    @Select("select * from role where rid=#{rid}")
    Role findRoleByRoleId(int rid);

    @Select("select * from permission where pid not in (select permissionId from role_permission where roleId=#{rid})")
    List<Permission> findOtherPerByRid(int rid);

    @Insert("insert into role_permission(permissionId,roleId)values(#{pid},#{rid})")
    void addPermissionToRole(@Param("rid") int rid,@Param("pid") int pid);
}
