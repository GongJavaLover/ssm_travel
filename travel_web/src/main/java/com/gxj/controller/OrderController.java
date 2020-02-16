package com.gxj.controller;

import com.github.pagehelper.PageInfo;
import com.gxj.domain.*;
import com.gxj.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.security.RolesAllowed;
import java.util.List;

@Controller
@RequestMapping("/orders")
@SessionAttributes({"member"})
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
        mv.addObject("orders",orders);
        mv.setViewName("orders-show");
        return mv;

    }


    //添加联系人member
    @RequestMapping("/addMember.do")
    @RolesAllowed("ROLE_ADMIN")
    public ModelAndView addMember(Member mem) throws Exception{
        ModelAndView mv=new ModelAndView();
        orderService.addMember(mem);
        String m_name = mem.getName();
        Member member=orderService.findMemberByName(m_name);
        mv.addObject("member",member);
        mv.setViewName("front-pages/submit-order2");
        return mv;
    }

    //添加游客
    @RequestMapping("/addTraveller.do")
    @RolesAllowed("ROLE_ADMIN")
    public ModelAndView addTraveller(Traveller tra) throws Exception{
        ModelAndView mv=new ModelAndView();
        orderService.addTraveller(tra);
        String name = tra.getName();
        Traveller traveller = orderService.findTravellerByName(name);
        mv.addObject("traveller",traveller);
        mv.setViewName("front-pages/submit-order3");
        return mv;
    }

    //提交订单
    @RequestMapping("/submitOrder.do")
    @RolesAllowed("ROLE_ADMIN")
    public ModelAndView submitOrder(Orders thisOrder) throws Exception{
        ModelAndView mv=new ModelAndView();
        orderService.saveOrder(thisOrder);
        int travellerId = thisOrder.getTravellerId();
        String orderNum = thisOrder.getOrderNum();
        int orderId=orderService.findOrderByRid(orderNum);
        System.out.println(orderNum);
        System.out.println(travellerId+".."+orderId);
        orderService.saveOT(orderId,travellerId);
        mv.setViewName("redirect:http://localhost:8080//user/transfer.do");
        return mv;
    }

}
