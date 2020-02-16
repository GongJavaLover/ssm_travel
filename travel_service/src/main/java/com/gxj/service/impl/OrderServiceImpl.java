package com.gxj.service.impl;

import com.github.pagehelper.PageHelper;
import com.gxj.dao.OrderDao;
import com.gxj.domain.Member;
import com.gxj.domain.Orders;
import com.gxj.domain.Traveller;
import com.gxj.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

    @Override
    public void addMember(Member member) throws Exception {
        orderDao.addMember(member);
    }

    @Override
    public void addTraveller(Traveller traveller) throws Exception {
        orderDao.addTraveller(traveller);
    }

    @Override
    public Member findMemberByName(String name) throws Exception {
        return orderDao.findMemberByName(name);
    }

    @Override
    public Traveller findTravellerByName(String t_name) throws Exception {
        return orderDao.findTravellerByName(t_name);
    }

    @Override
    public void saveOrder(Orders order) throws Exception {
        orderDao.saveOrder(order);
    }

    @Override
    public int findOrderByRid(String orderNum) throws Exception {
        return orderDao.findOrderByRid(orderNum);
    }

    @Override
    public void saveOT(Integer orderId, Integer travellerId) throws Exception {
        orderDao.saveOT(orderId,travellerId);
    }
}
