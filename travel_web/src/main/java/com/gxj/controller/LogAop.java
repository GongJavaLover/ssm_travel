package com.gxj.controller;

import com.gxj.domain.SysLog;
import com.gxj.service.SysLogService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Date;

//日志操作类
@Component
@Aspect
public class LogAop {
    private Date visitTime;//访问时间
    private Class visitClass;//访问的类
    private Method visitMethod;//访问的方法
    @Autowired
    private HttpServletRequest request;
    @Autowired
    private SysLogService sysLogService;
    //定义切入点表达式
//    @Pointcut("execution(* com.gxj.controller.*.*(..))")
//    public void pt(){}

    //前置通知
    @Before("execution(* com.gxj.controller.*.*(..))")
    public void doBefore(JoinPoint jp) throws NoSuchMethodException {
        visitTime=new Date(); //获取访问时间
        visitClass= jp.getTarget().getClass(); //具体要访问的类
        String method=jp.getSignature().getName(); //获取要访问的方法名称
        Object[] args = jp.getArgs();//获取要访问方法的参数
        if(args==null||args.length==0){
            visitMethod=visitClass.getMethod(method);  //获取到无参方法
        }else {
            Class[] classArgs=new Class[args.length];
            for (int i = 0; i < args.length; i++) {
                classArgs[i]=args[i].getClass();
            }
            visitClass.getMethod(method,classArgs);
        }



    }
    //后置通知
    @After("execution(* com.gxj.controller.*.*(..))")
    public void doAfter(JoinPoint jp) throws Exception {
        long executionTime=new Date().getTime()-visitTime.getTime();
        String url="";
        //获取url
        if(visitClass!=null&&visitMethod!=null&&visitClass!=LogAop.class){
            //获取类上面的注解名称
            RequestMapping classAnnotation =(RequestMapping) visitClass.getAnnotation(RequestMapping.class);
            if(classAnnotation!=null){
                String[] classValue = classAnnotation.value();
                //获取方法上的注解名称
                RequestMapping methodAnnotation = visitMethod.getAnnotation(RequestMapping.class);
                if(methodAnnotation!=null){
                    String[] methodValue = methodAnnotation.value();
                    url=classValue[0]+methodValue[0];

                //获取ip
                String ip = request.getRemoteAddr();
                //获取当前操作的用户，因为我们现在的登录什么的都被SpringSecurity控制了，所以要想获取只能通过SpringSecurity来获取
                SecurityContext context= SecurityContextHolder.getContext();//从上下文中获取当前登录的用户
                Authentication authentication = context.getAuthentication();
                //获取当前的用户，这个user是security中的
                User user=(User) authentication.getPrincipal();
                String username = user.getUsername();
                SysLog sysLog=new SysLog();
                sysLog.setVisitTime(visitTime);
                sysLog.setUsername(username);
                sysLog.setIp(ip);
                sysLog.setUrl(url);
                sysLog.setExecutionTime(executionTime);
                sysLog.setMethod("[类名]:"+visitClass.getName()+"[方法名]:"+visitMethod.getName());
                sysLogService.save(sysLog);
                }
            }
        }
    }
}
