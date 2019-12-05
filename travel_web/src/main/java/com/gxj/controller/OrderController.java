package com.gxj.controller;

import com.github.pagehelper.PageInfo;
import com.gxj.domain.Orders;
import com.gxj.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/orders")
public class OrderController {
    @Autowired
    private OrderService orderService;

    //查询所有订单，未分页的
/*    @RequestMapping("findAll.do")
    public ModelAndView findAll() throws Exception {
        ModelAndView mv=new ModelAndView();
        List<Orders> orders = orderService.findAll();
        for (int i = 0; i < orders.size(); i++) {
            System.out.println(orders.get(i));
        }
        mv.addObject("ordersList",orders);
        mv.setViewName("orders-list");

        return mv;
    }*/
    //分页查询所有订单
    @RequestMapping("findAll.do")
    public ModelAndView findAll(@RequestParam(value = "page",required = true,defaultValue = "1") Integer page,@RequestParam(value = "size",required = true,defaultValue = "5") Integer size) throws Exception {
        ModelAndView mv=new ModelAndView();
        List<Orders> orders = orderService.findAll(page, size);
        PageInfo pageInfo=new PageInfo(orders);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("orders-list");
        return mv;
    }

    //根据id查询订单详情
    @RequestMapping("/findById")
    public ModelAndView findById(@RequestParam(value = "oid",required = true) Integer orderId){
        ModelAndView mv=new ModelAndView();
        Orders orders=orderService.findById(orderId);
        String s = orders.toString();
        System.out.println(s);
        mv.addObject("orders",orders);
        mv.setViewName("orders-show");
        return mv;

    }

}
