package com.gxj.service;

import com.gxj.domain.Product;

import java.util.List;

public interface ProductService {
    public List<Product> findAll(int page,int size) throws Exception;

    void save(Product product) throws Exception;
}
