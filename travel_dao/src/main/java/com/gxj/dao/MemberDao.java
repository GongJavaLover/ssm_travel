package com.gxj.dao;

import com.gxj.domain.Member;
import org.apache.ibatis.annotations.Select;

public interface MemberDao {
    @Select("select * from member where mid=#{mid}")
    public Member findById(int mid)throws Exception;
}
