package com.gxj.dao;

import com.github.pagehelper.PageHelper;
import com.gxj.domain.Member;
import com.gxj.domain.Orders;
import com.gxj.domain.Product;
import com.gxj.domain.Traveller;
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
            @Result(property = "product", column = "productId",
                    javaType = Product.class,one = @One(select = "com.gxj.dao.ProductDao.findById"))
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
            @Result(property = "product", column = "productId",
                    one = @One(select = "com.gxj.dao.ProductDao.findById")),
            @Result(property = "member",column = "memberId",
                    one = @One(select = "com.gxj.dao.MemberDao.findById")),
            @Result(property = "travellers", column = "oid",
                    many =@Many(select = "com.gxj.dao.TravellerDao.findByOrderId"))

    })
    public Orders findById(int orderId);
}
