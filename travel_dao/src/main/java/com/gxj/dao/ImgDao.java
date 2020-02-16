package com.gxj.dao;

import com.gxj.domain.RouteImg;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ImgDao {

    @Select("select * from route_img where route_id=#{route_id}")
    List<RouteImg> findImgByRouteId(Integer route_id);
}
