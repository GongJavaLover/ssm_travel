package com.gxj.service;

import com.gxj.domain.Member;
import com.gxj.domain.Orders;
import com.gxj.domain.Traveller;

import java.util.List;

public interface OrderService {
    public List<Orders> findAll(int page,int size) throws Exception;

    public Orders findById(int orderId);

    void addMember(Member member) throws Exception;

    void addTraveller(Traveller traveller) throws Exception;

    Member findMemberByName(String name) throws Exception;

    Traveller findTravellerByName(String t_name) throws Exception;

    void saveOrder(Orders order) throws Exception;


    void saveOT(Integer orderId, Integer travellerId) throws Exception;

    int findOrderByRid(String orderNum) throws Exception;
}
