package com.gxj.service;

import com.gxj.domain.Product;
import com.gxj.domain.Route;

import java.util.List;

public interface ProductService {
    public List<Route> findAll(int page,int size) throws Exception;

    void save(Route route) throws Exception;
}
