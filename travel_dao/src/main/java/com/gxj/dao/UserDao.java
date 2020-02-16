package com.gxj.dao;

import com.gxj.domain.Role;
import com.gxj.domain.UserInfo;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface UserDao {

    @Select("select * from user where username=#{username}")
    @Results(id = "userMap",value = {
            @Result(id = true,property = "uid",column = "uid"),
            @Result(property = "username",column = "username"),
            @Result(property = "password",column = "password"),
            @Result(property = "email",column = "email"),
            @Result(property = "phoneNum",column = "phoneNum"),
            @Result(property = "status",column = "status"),
            @Result(property = "roles",column = "uid",
                    many = @Many(select = "com.gxj.dao.RoleDao.findRoleByUserId"))
    })
    UserInfo findByUsername(String username);

    @Select("select * from user")
    List<UserInfo> findAll() throws Exception;

    @Insert("insert into user (username,password,email,phoneNum,status)values(#{username},#{password},#{email},#{phoneNum},#{status})")
    void save(UserInfo userInfo);

    @Select("select * from user where uid=#{uid}")
    @ResultMap(value = "userMap")
    UserInfo findById(int uid);

    @Select("select * from Role where rid not in (select roleId from user_role where userId=#{uid})")
    List<Role> findOtherRoleById(int uid);

    @Insert("insert into user_role(userId,roleId)values(#{uid},#{rid})")
    void addRoleToUser(@Param("uid")int uid,@Param("rid")int rid);

 /*   //根据用户名查询用户
    UserInfo findByUserName(String username) throws Exception;*/
}
