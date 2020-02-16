package com.gxj.dao;

import com.github.pagehelper.PageHelper;
import com.gxj.domain.*;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface OrderDao {


    @Select("select * from orders")
    @Results(id = "orderResult",value = {
            @Result(id = true, property = "oid", column = "oid"),
            @Result(property = "orderNum", column = "orderNum"),
            @Result(property = "orderTime", column = "orderTime"),
            @Result(property = "orderStatus", column = "orderStatus"),
            @Result(property = "peopleCount", column = "peopleCount"),
            @Result(property = "payType", column = "payType"),
            @Result(property = "orderDesc", column = "orderDesc"),
            @Result(property = "route", column = "route_id",
                    javaType = Route.class,one = @One(select = "com.gxj.dao.RouteDao.findOne"))
    })
    public List<Orders> findAll();

    //多表操作
    @Select("select * from orders where oid=#{orderId}")
    @Results({
            @Result(id = true,property = "oid",column = "oid"),
            @Result(property = "orderNum", column = "orderNum"),
            @Result(property = "orderTime", column = "orderTime"),
            @Result(property = "orderStatus", column = "orderStatus"),
            @Result(property = "peopleCount", column = "peopleCount"),
            @Result(property = "payType", column = "payType"),
            @Result(property = "orderDesc", column = "orderDesc"),
            @Result(property = "route", column = "route_id",
                    one = @One(select = "com.gxj.dao.RouteDao.findOne")),
            @Result(property = "member",column = "memberId",
                    one = @One(select = "com.gxj.dao.MemberDao.findById")),
            @Result(property = "travellers", column = "oid",
                    many =@Many(select = "com.gxj.dao.TravellerDao.findByOrderId"))

    })
    public Orders findById(int orderId);


    //添加联系人member
    @Insert("insert into member(name,nickname,phoneNum,email)values(#{name},#{nickname},#{phoneNum},#{email})")
    void addMember(Member member);

    //添加游客traveller
    @Insert("INSERT INTO traveller(name,sex,phoneNum,credentialsNum)VALUES(#{name},#{sex},#{phoneNum},#{credentialsNum})")
    void addTraveller(Traveller traveller);

    @Select("select * from member where name=#{name}")
    Member findMemberByName(String name);

    @Select("select * from traveller where name=#{name}")
    Traveller findTravellerByName(String t_name);

    @Insert("insert into orders(orderNum,orderTime,orderDesc,route_id,memberId,travellerId)values(#{orderNum},#{orderTime},#{orderDesc},#{route_id},#{memberId},#{travellerId})")
    void saveOrder(Orders order);

    @Select("select oid from orders where orderNum=#{orderNum}")
    int findOrderByRid(String orderNum);

    @Insert("insert into order_traveller(orderId,travellerId)values(#{orderId},#{travellerId})")
    void saveOT(@Param("orderId") Integer orderId,@Param("travellerId") Integer travellerId);
}
