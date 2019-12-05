package com.gxj.service;

import com.gxj.domain.Orders;

import java.util.List;

public interface OrderService {
    public List<Orders> findAll(int page,int size) throws Exception;

    public Orders findById(int orderId);
}
