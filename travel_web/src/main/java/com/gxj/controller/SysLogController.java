package com.gxj.controller;

import com.gxj.domain.SysLog;
import com.gxj.service.SysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/sysLog")
public class SysLogController {
    @Autowired
    private SysLogService sysLogService;

    @RequestMapping("findAll.do")
    public ModelAndView findAll() throws Exception {
        ModelAndView mv=new ModelAndView();
        List<SysLog> sysLog=sysLogService.findAll();
        mv.addObject("sysLogs",sysLog);
        mv.setViewName("syslog-list");
        return mv;
    }
}
