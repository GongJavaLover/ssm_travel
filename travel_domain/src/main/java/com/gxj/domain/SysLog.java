package com.gxj.domain;

import com.gxj.utils.DateUtils;

import java.util.Date;

//日志处理类
public class SysLog {
    private Integer lid; //日志id
    private Date visitTime;  //访问时间
    private String visitTimeStr;
    private String username;
    private String ip;
    private String url;
    private Long executionTime;  //执行时长
    private String method;   //访问方法

    public Integer getLid() {
        return lid;
    }

    public void setLid(Integer lid) {
        this.lid = lid;
    }

    public Date getVisitTime() {

        return visitTime;
    }

    public void setVisitTime(Date visitTime) {
        this.visitTime = visitTime;
    }

    public String getVisitTimeStr() {
        if(visitTime!=null){
            visitTimeStr = DateUtils.dateToString(visitTime, "yyyy-MM-dd HH:mm");

        }
        return visitTimeStr;
    }

    public void setVisitTimeStr(String visitTimeStr) {
        this.visitTimeStr = visitTimeStr;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Long getExecutionTime() {
        return executionTime;
    }

    public void setExecutionTime(Long executionTime) {
        this.executionTime = executionTime;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }
}
