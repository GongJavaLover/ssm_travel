package com.gxj.service.impl;

import com.github.pagehelper.PageHelper;
import com.gxj.dao.ProductDao;
import com.gxj.domain.Product;
import com.gxj.domain.Route;
import com.gxj.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductDao productDao;

    @Override
    public List<Route> findAll(int page,int size) throws Exception {
        PageHelper.startPage(page,size);
        return productDao.findAll();
    }

    @Override
    public void save(Route route) throws Exception{
        productDao.save(route);
    }
}
