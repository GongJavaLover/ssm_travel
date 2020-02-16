package com.gxj.controller;

import com.github.pagehelper.PageInfo;
import com.gxj.dao.UserDao;
import com.gxj.domain.Route;
import com.gxj.domain.RouteImg;
import com.gxj.domain.Traveller;
import com.gxj.domain.UserInfo;
import com.gxj.service.RouteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.security.RolesAllowed;
import java.util.List;

@Controller
@RequestMapping("/route")
@SessionAttributes({"route","user"})
public class RouteController {

    @Autowired
    private RouteService routeService;
    @Autowired
    private UserDao userDao;


    public List<Route> findAll() throws Exception{
        List<Route> routes=routeService.findAll();
        return routes;
    }

    //国内游路线
    @RequestMapping("/findInternal.do")
    @RolesAllowed("ROLE_ADMIN")
    public ModelAndView findInternal(@RequestParam(value = "page",required = true,defaultValue = "1") Integer page,@RequestParam(value = "size",required = true,defaultValue = "5") Integer size) throws Exception{
        ModelAndView mv=new ModelAndView();
        List<Route> routes = routeService.findInternal(page, size);
        PageInfo pageInfo=new PageInfo(routes);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("front-pages/route_list_internal");
        return mv;
    }

    //出境游路线
    @RequestMapping("/findAllByExit.do")
    @RolesAllowed("ROLE_ADMIN")
    public ModelAndView findAllByExit(@RequestParam(value = "page",required = true,defaultValue = "1") Integer page,@RequestParam(value = "size",required = true,defaultValue = "5") Integer size) throws Exception{
        ModelAndView mv=new ModelAndView();
        List<Route> routes=routeService.findAllByExit(page,size);
        PageInfo pageInfo=new PageInfo(routes);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("front-pages/route_list_exit");
        return mv;
    }
    //出境游路线
    @RequestMapping("/findAllByGangAo.do")
    @RolesAllowed("ROLE_ADMIN")
    public ModelAndView findAllGangAo(@RequestParam(value = "page",required = true,defaultValue = "1") Integer page,@RequestParam(value = "size",required = true,defaultValue = "5") Integer size) throws Exception{
        ModelAndView mv=new ModelAndView();
        List<Route> routes=routeService.findAllByGangAo(page,size);
        PageInfo pageInfo=new PageInfo(routes);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("front-pages/route_list_gang");
        return mv;
    }

    //查询某个路线详情
    @RequestMapping("/findOne.do")
    @RolesAllowed("ROLE_ADMIN")
    public ModelAndView findOne(@RequestParam(value = "route_id",required = true) Integer route_id) throws Exception{
        ModelAndView mv=new ModelAndView();
        Route route=routeService.findOne(route_id);
        List<RouteImg> routeImgList = route.getRouteImgList();
        mv.addObject("route",route);
        mv.addObject("routeImgList",routeImgList);
        mv.setViewName("/front-pages/route_detail");
        return mv;
    }

    //添加到收藏
    @RequestMapping("/addFavorite.do")
    @RolesAllowed("ROLE_ADMIN")
    public void addFavorite(@RequestParam(value = "rflag",required = true) Integer rflag,@RequestParam(value = "route_id",required = true) Integer route_id) throws Exception{
        routeService.alterFlag(route_id);
    }

    //点击购买再次查询商品信息
    @RequestMapping("/buy.do")
    @RolesAllowed("ROLE_ADMIN")
    public ModelAndView buy(@RequestParam(value = "route_id",required = true) Integer route_id,@RequestParam(value = "username",required = true) String username) throws Exception{
        ModelAndView mv=new ModelAndView();
        Route route=routeService.findOne(route_id);
        UserInfo user = userDao.findByUsername(username);
        mv.addObject("route",route);
        mv.addObject("user",user);
        mv.setViewName("front-pages/submit-order1");
        return mv;
    }

    //提交订单
    @RequestMapping("/submitOrder.do")
    @RolesAllowed("ROLE_ADMIN")
    public ModelAndView submitOrder(Traveller traveller){
        ModelAndView mv=new ModelAndView();
        return mv;
    }

    //根据字符查询需要查到的路线
    @RequestMapping(value = "/searchSome.do")
    @RolesAllowed("ROLE_ADMIN")
    @ResponseBody
    public ModelAndView searchSome(@RequestParam(value = "route_name",required = true) String route_name) throws Exception{
        System.out.println(route_name);
        ModelAndView mv=new ModelAndView();
        List<Route> routes=routeService.findAllByName(route_name);
        PageInfo pageInfo=new PageInfo(routes);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("front-pages/route_list_exit");
        return mv;
    }

}
