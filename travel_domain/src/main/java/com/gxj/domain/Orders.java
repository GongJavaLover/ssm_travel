package com.gxj.domain;

import com.gxj.utils.DateUtils;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

public class Orders {
    private Integer oid;
    private String orderNum;
    private String orderTime;
    private int peopleCount;
    private String orderDesc;
    private Integer payType;
    private int orderStatus;
    private int route_id;
    private int memberId;
    private int travellerId;
    private Route route;
    private Member member;
    private List<Traveller> travellers;
    private String orderStatusStr;
    private String payTypeStr;

    public String getOrderStatusStr() {
        //0:未支付，1：已支付
        if (orderStatus == 0) {
            orderStatusStr="未支付";
        } else if (orderStatus == 1) {
            orderStatusStr="已支付";
        }
        return orderStatusStr;
    }

    public void setOrderStatusStr(String orderStatusStr) {
        this.orderStatusStr = orderStatusStr;
    }

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

    public String getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(String orderTime) {
        this.orderTime = orderTime;
    }

    public int getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(int orderStatus) {
        this.orderStatus = orderStatus;
    }

    public int getPeopleCount() {
        return peopleCount;
    }

    public void setPeopleCount(int peopleCount) {
        this.peopleCount = peopleCount;
    }

    public int getRoute_id() {
        return route_id;
    }

    public void setRoute_id(int route_id) {
        this.route_id = route_id;
    }

    public int getMemberId() {
        return memberId;
    }

    public void setMemberId(int memberId) {
        this.memberId = memberId;
    }

    public int getTravellerId() {
        return travellerId;
    }

    public void setTravellerId(int travellerId) {
        this.travellerId = travellerId;
    }

    public Route getRoute() {
        return route;
    }

    public void setRoute(Route route) {
        this.route = route;
    }

    public List<Traveller> getTravellers() {
        return travellers;
    }

    public void setTravellers(List<Traveller> travellers) {
        this.travellers = travellers;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public Integer getPayType() {

        return payType;
    }

    public void setPayType(Integer payType) {
        this.payType = payType;
    }

    public String getPayTypeStr() {
        if(payType==0){
            payTypeStr="支付宝";
        } else if (payType==1) {
            payTypeStr="微信";
        }else if (payType==2){
            payTypeStr="其他";
        }
        return payTypeStr;
    }

    public void setPayTypeStr(String payTypeStr) {
        this.payTypeStr = payTypeStr;
    }

    public String getOrderDesc() {
        if(orderDesc==null){
            orderDesc="没有其它要求";
        }
        return orderDesc;
    }

    public void setOrderDesc(String orderDesc) {
        this.orderDesc = orderDesc;
    }
}
