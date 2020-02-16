package com.gxj.dao;

import com.gxj.domain.Route;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface RouteDao {
    @Select("select * from route WHERE category='国内游'")
    List<Route> findInternal() throws Exception;

    @Select("select * from route WHERE category='出境游'")
    List<Route> findAllByExit() throws Exception;

    @Select("select * from route")
    List<Route> findAll() throws Exception;

    @Select("select * from route where route_id=#{route_id}")
    @Results(value = {
            @Result(id = true,column = "route_id",property = "route_id"),
            @Result(column = "route_name",property = "route_name"),
            @Result(column = "price",property = "price"),
            @Result(column = "routeIntroduce",property = "routeIntroduce"),
            @Result(column = "rflag",property = "rflag"),
            @Result(column = "rdate",property = "rdate"),
            @Result(column = "isThemeTour",property = "isThemeTour"),
            @Result(column = "count",property = "count"),
            @Result(column = "rimage",property = "rimage"),
            @Result(column = "seller_id",property = "seller_id"),
            @Result(column = "sourceId",property = "sourceId"),
            @Result(column = "category",property = "category"),
            @Result(property = "routeImgList",column = "route_id",
                    many =@Many(select = "com.gxj.dao.ImgDao.findImgByRouteId"))
    })
    Route findOne(Integer route_id) throws Exception;

    @Update("UPDATE route SET rflag=1 WHERE route_id =#{route_id}")
    void alterFlag(Integer route_id);

    @Select({"select * from route where route_name like '%${route_name}%' or routeIntroduce like '%${route_name}%' "})
    @Results(value = {
            @Result(id = true,column = "route_id",property = "route_id"),
            @Result(column = "route_name",property = "route_name"),
            @Result(column = "price",property = "price"),
            @Result(column = "routeIntroduce",property = "routeIntroduce"),
            @Result(column = "rflag",property = "rflag"),
            @Result(column = "rdate",property = "rdate"),
            @Result(column = "isThemeTour",property = "isThemeTour"),
            @Result(column = "count",property = "count"),
            @Result(column = "rimage",property = "rimage"),
            @Result(column = "seller_id",property = "seller_id"),
            @Result(column = "sourceId",property = "sourceId"),
            @Result(column = "category",property = "category")
    })
    List<Route> findAllByName(@Param("route_name") String route_name) throws Exception;

    @Select("select * from route WHERE category='港澳游'")
    List<Route> findAllByGangAo() throws Exception;

}
