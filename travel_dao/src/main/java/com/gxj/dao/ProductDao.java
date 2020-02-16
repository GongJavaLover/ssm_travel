package com.gxj.dao;

import com.gxj.domain.Product;
import com.gxj.domain.Route;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import java.util.List;


public interface ProductDao {
    //根据id查询商品操作
    @Select("select * from route where route_id=#{route_id}")
    Product findById(Integer route_id) throws Exception;

    //查询所有商品操作
    @Select("select * from route")
    List<Route> findAll() throws Exception;

    //保存账户操作
    @Insert("insert into route (productNum,productName,cityName,departureTime,productPrice,productDesc,productStatus)values(#{productNum},#{productName},#{cityName},#{departureTime},#{productPrice},#{productDesc},#{productStatus})")
    void save(Route route);
}
