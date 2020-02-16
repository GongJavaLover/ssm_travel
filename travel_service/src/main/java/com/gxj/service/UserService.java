package com.gxj.service;

import com.gxj.domain.Role;
import com.gxj.domain.Route;
import com.gxj.domain.UserInfo;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;

public interface UserService extends UserDetailsService {

    List<UserInfo> findAll() throws Exception;

    void save(UserInfo userInfo) throws Exception;

    void register(UserInfo userInfo) throws Exception;

    UserInfo findById(int id) throws Exception;

    List<Role> findOtherRoleById(int uid) throws Exception;

    void addRoleToUser(int uid, int[] rids)throws Exception;

}
