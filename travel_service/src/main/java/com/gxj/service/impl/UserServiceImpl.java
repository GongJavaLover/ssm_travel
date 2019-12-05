package com.gxj.service.impl;

import com.gxj.dao.UserDao;
import com.gxj.domain.Role;
import com.gxj.domain.UserInfo;
import com.gxj.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public UserInfo findById(int uid) throws Exception {
        return userDao.findById(uid);
    }

    @Override
    public List<Role> findOtherRoleById(int uid) throws Exception {
        return userDao.findOtherRoleById(uid);
    }

    @Override
    public void addRoleToUser(int uid, int[] rids) throws Exception {
        for (int rid : rids) {
        userDao.addRoleToUser(uid,rid);
        }
    }

    @Override
    public void save(UserInfo userInfo) {
        userInfo.setPassword(bCryptPasswordEncoder.encode(userInfo.getPassword()));
        userDao.save(userInfo);
    }

    @Override
    public List<UserInfo> findAll() throws Exception {
        return userDao.findAll();
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserInfo userInfo = userDao.findByUsername(username);
        List<Role> roles=userInfo.getRoles();
        List<SimpleGrantedAuthority> authority = getAuthority(roles);
        //处理自己的用户对象封装成UserDetail,查看user源码发现可以设置是否可用，账户是否为空等等操作,{noop}表示未加密前缀，当在配置文件中对密码进行加密配置时就可以不用写{noop}
        User user=new User(userInfo.getUsername(),userInfo.getPassword(),userInfo.getStatus()==0?false:true,true,true,true,authority);
        return user;
    }

    private List<SimpleGrantedAuthority> getAuthority(List<Role> roles){
        List<SimpleGrantedAuthority> list=new ArrayList<>();
        for (Role role:roles){
        list.add(new SimpleGrantedAuthority("ROLE_"+role.getRoleName()));
        }
        return list;
    }
}
