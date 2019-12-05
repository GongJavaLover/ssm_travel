package com.gxj.controller;

import com.github.pagehelper.PageInfo;
import com.gxj.domain.Product;
import com.gxj.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.security.RolesAllowed;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {
    @Autowired
    private ProductService productService;

    //产品添加
    @RequestMapping("/save.do")
    public String save(Product product) throws Exception{
        productService.save(product);
        return "redirect:findAll.do";
    }


    //产品查询,未进行分页的
/*    @RequestMapping("/findAll.do")
    public ModelAndView findAll() throws Exception {
        ModelAndView mv=new ModelAndView();
        List<Product> products = productService.findAll();
        mv.addObject("productList",products);
        mv.setViewName("product-list1");
        return mv;

    }*/
    //产品查询,进行分页的查询所有
    @RequestMapping("/findAll.do")
    @RolesAllowed("ROLE_ADMIN")
    public ModelAndView findAll(@RequestParam(value = "page",required = true,defaultValue = "1") Integer page,@RequestParam(value = "size",required = true,defaultValue = "5") Integer size) throws Exception {
        ModelAndView mv=new ModelAndView();
        List<Product> products = productService.findAll(page,size);
        PageInfo pageInfo=new PageInfo(products);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("product-list");
        return mv;
    }
}
