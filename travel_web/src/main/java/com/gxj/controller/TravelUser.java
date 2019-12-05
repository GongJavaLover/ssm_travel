package com.gxj.controller;

import com.gxj.utils.CheckCodeUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/travel/user")
public class TravelUser {
    @RequestMapping("/register.do")
    public ModelAndView register(@RequestParam("checkCode")String checkCode,@RequestParam("username")String username){
        ModelAndView mv=new ModelAndView();
        System.out.println(checkCode+","+username);
        mv.setViewName("/front-pages/travel-index");
        return mv;
    }
}
