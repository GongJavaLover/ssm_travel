package com.gxj.service;

import com.gxj.domain.Route;

import java.util.List;

public interface RouteService {
    public List<Route> findInternal(int page,int size) throws Exception;

    List<Route> findAllByExit(int page,int size) throws Exception;

    List<Route> findAll() throws Exception;

    Route findOne(Integer route_id) throws Exception;

    void alterFlag(Integer route_id) throws Exception;

    List<Route> findAllByName(String route_name) throws Exception;

    List<Route> findAllByGangAo(Integer page, Integer size) throws Exception;

}
