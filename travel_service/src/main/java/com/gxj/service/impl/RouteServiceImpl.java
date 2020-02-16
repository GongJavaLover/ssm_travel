package com.gxj.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.gxj.dao.RouteDao;
import com.gxj.domain.Route;
import com.gxj.service.RouteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class RouteServiceImpl implements RouteService {
    @Autowired
    private RouteDao routeDao;
    @Override
    public List<Route> findInternal(int page, int size) throws Exception {
        PageHelper.startPage(page,size);
        return routeDao.findInternal();
    }

    @Override
    public List<Route> findAllByExit(int page, int size) throws Exception {
        PageHelper.startPage(page,size);
        return routeDao.findAllByExit();
    }

    @Override
    public List<Route> findAll() throws Exception {
        return routeDao.findAll();
    }

    @Override
    public Route findOne(Integer route_id) throws Exception {
        return routeDao.findOne(route_id);
    }

    @Override
    public void alterFlag(Integer route_id) throws Exception {
        routeDao.alterFlag(route_id);
    }

    @Override
    public List<Route> findAllByName(String route_name) throws Exception {
        return routeDao.findAllByName(route_name);
    }

    @Override
    public List<Route> findAllByGangAo(Integer page, Integer size) throws Exception {
        PageHelper.startPage(page, size);
        return routeDao.findAllByGangAo();
    }

}
