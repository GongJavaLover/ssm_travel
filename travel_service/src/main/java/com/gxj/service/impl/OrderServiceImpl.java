package com.gxj.service.impl;

import com.github.pagehelper.PageHelper;
import com.gxj.dao.OrderDao;
import com.gxj.domain.Orders;
import com.gxj.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderDao orderDao;
    @Override
    public List<Orders> findAll(int page,int size) throws Exception{
        PageHelper.startPage(page,size);
        return orderDao.findAll();
    }

    @Override
    public Orders findById(int orderId) {
        return orderDao.findById(orderId);
    }
}
