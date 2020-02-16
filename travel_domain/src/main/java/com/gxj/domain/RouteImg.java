package com.gxj.domain;

import java.io.Serializable;

public class RouteImg implements Serializable {
    private int rgid;//商品图片id
    private int route_id;//旅游商品id
    private String bigPic;//详情商品大图
    private String smallPic;//详情商品小图

    public int getRgid() {
        return rgid;
    }

    public void setRgid(int rgid) {
        this.rgid = rgid;
    }

    public int getRoute_id() {
        return route_id;
    }

    public void setRoute_id(int route_id) {
        this.route_id = route_id;
    }

    public String getBigPic() {
        return bigPic;
    }

    public void setBigPic(String bigPic) {
        this.bigPic = bigPic;
    }

    public String getSmallPic() {
        return smallPic;
    }

    public void setSmallPic(String smallPic) {
        this.smallPic = smallPic;
    }
}
