package com.gxj.domain;

import java.io.Serializable;
import java.util.List;

public class Route implements Serializable{
    private int route_id;//线路id，必输
    private String route_name;//线路名称，必输
    private double price;//价格，必输
    private String routeIntroduce;//线路介绍
    private String rflag;   //是否上架，必输，0代表没有上架，1代表是上架
    private String rdate;   //出发时间
    private Integer isThemeTour;//1代表开启，0代表关闭
    private String isThemeTourStr;
    private int count;//收藏数量
    private String rimage;//缩略图
    private int seller_id;//所属商家
    private String sourceId;//抓取数据的来源id
    private String category;
    private Seller seller;//所属商家
    private List<RouteImg> routeImgList;//商品详情图片列表

    public int getRoute_id() {
        return route_id;
    }

    public void setRoute_id(int route_id) {
        this.route_id = route_id;
    }

    public String getRoute_name() {
        return route_name;
    }

    public void setRoute_name(String route_name) {
        this.route_name = route_name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getRouteIntroduce() {
        return routeIntroduce;
    }

    public void setRouteIntroduce(String routeIntroduce) {
        this.routeIntroduce = routeIntroduce;
    }

    public String getRflag() {
        return rflag;
    }

    public void setRflag(String rflag) {
        this.rflag = rflag;
    }

    public String getRdate() {
        return rdate;
    }

    public void setRdate(String rdate) {
        this.rdate = rdate;
    }

    public Integer getIsThemeTour() {
        return isThemeTour;
    }

    public void setIsThemeTour(Integer isThemeTour) {
        this.isThemeTour = isThemeTour;
    }

    public String getIsThemeTourStr() {
        if(isThemeTour!=null) {
            if (isThemeTour == 0) {
                isThemeTourStr = "关闭";
            }
            if (isThemeTour == 1) {
                isThemeTourStr = "开启";
            }
        }
        return isThemeTourStr;
    }

    public void setIsThemeTourStr(String isThemeTourStr) {
        this.isThemeTourStr = isThemeTourStr;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getRimage() {
        return rimage;
    }

    public void setRimage(String rimage) {
        this.rimage = rimage;
    }

    public int getSeller_id() {
        return seller_id;
    }

    public void setSeller_id(int seller_id) {
        this.seller_id = seller_id;
    }

    public String getSourceId() {
        return sourceId;
    }

    public void setSourceId(String sourceId) {
        this.sourceId = sourceId;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Seller getSeller() {
        return seller;
    }

    public void setSeller(Seller seller) {
        this.seller = seller;
    }

    public List<RouteImg> getRouteImgList() {
        return routeImgList;
    }

    public void setRouteImgList(List<RouteImg> routeImgList) {
        this.routeImgList = routeImgList;
    }
}
