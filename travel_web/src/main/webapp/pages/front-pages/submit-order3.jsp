<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@include file="../head.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>旅游-搜索</title>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/common.css">
    <link rel="stylesheet" href="${basePath}/css/search.css">
    <script src="${basePath}/js/jquery-3.3.1.js"></script>
    <script src="${basePath}js/getParameter.js"></script>
    <link rel="stylesheet" href="${basePath}/css/order.css">
    <meta
            content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
            name="viewport">
    <META HTTP-EQUIV="pragma" CONTENT="no-cache">
    <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate">
    <META HTTP-EQUIV="expires" CONTENT="Wed, 26 Feb 1997 08:21:57 GMT">


    <link rel="stylesheet"
          href="${basePath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${basePath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${basePath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet"
          href="${basePath}/plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="${basePath}/plugins/morris/morris.css">
    <link rel="stylesheet"
          href="${basePath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet"
          href="${basePath}/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet"
          href="${basePath}/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet"
          href="${basePath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet"
          href="${basePath}/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet"
          href="${basePath}/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet"
          href="${basePath}/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet"
          href="${basePath}/plugins/select2/select2.css">
    <link rel="stylesheet"
          href="${basePath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet"
          href="${basePath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet"
          href="${basePath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="${basePath}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet"
          href="${basePath}/css/style.css">
    <link rel="stylesheet"
          href="${basePath}/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet"
          href="${basePath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet"
          href="${basePath}/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet"
          href="${basePath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>
<body>

<!--引入头部-->
<jsp:include page="header.jsp"></jsp:include>
<div class="public-shop-account">
    <div class="content">
        <div class="shop-account-head"> 填写并核对订单信息 </div>
        <div class="shop-account-info">
            <div class="edit-address">

                <div class="address-head">
                    <span>商品信息</span>
                </div>
                <div class="prosum_right">
                    <p class="pros_title" id="rname">${route.route_name}</p>
                    <p class="hot" id="routeIntroduce">${route.routeIntroduce}</p>
                    <div class="pros_price">
                        <p class="price"><strong id="price">¥${route.price}</strong><span></span></p>
                    </div>
                </div>

                <%--<div class="address-info">--%>
                <form id="sb-member" onsubmit="return false" action="#" method="get">

                    <div class="font-size">
                        联系人信息
                    </div>
                    <div class="panel panel-default">
                        <div class="row data-type">

                            <div class="col-md-2 title">姓名</div>
                            <div class="col-md-4 data">
                                <input type="text" class="form-control" name="name"
                                       placeholder="姓名" value="${member.name}" readonly="readonly">
                            </div>
                            <div class="col-md-2 title">称呼</div>
                            <div class="col-md-4 data">
                                <input type="text" class="form-control" name="nickname"
                                       placeholder="称呼" value="${member.nickname}" readonly="readonly">
                            </div>
                            <div class="col-md-2 title">联系号码</div>
                            <div class="col-md-4 data">
                                <input type="text" class="form-control" name="phoneNum"
                                       placeholder="联系号码" value="${member.phoneNum}" readonly="readonly">
                            </div>
                            <div class="col-md-2 title">邮箱</div>
                            <div class="col-md-4 data">
                                <input type="text" class="form-control" name="email"
                                       placeholder="邮箱" value="${member.email}" readonly="readonly">
                            </div>
                        </div>
                    </div>
                    <%--<div class="member-btn"><button onclick="addMember()" type="button">保存</button></div>--%>
                </form>

                    <form id="sb-traveller" onsubmit="return false" method="get" action="#">
                        <!-- 正文区域 -->
                        <div class="address-head">
                            <span class="font-size">游客信息</span>
                        </div>
                            <div class="panel panel-default">
                                <div class="row data-type">

                                    <div class="col-md-2 title">姓名</div>
                                    <div class="col-md-4 data">
                                        <input type="text" class="form-control" name="name"
                                               placeholder="姓名" value="${traveller.name}" readonly="readonly">
                                    </div>
                                    <div class="col-md-2 title">性别</div>
                                    <div class="col-md-4 data">
                                        <input type="text" class="form-control" name="sex"
                                               placeholder="性别" value="${traveller.sex}" readonly="readonly">
                                    </div>
                                    <div class="col-md-2 title">联系号码</div>
                                    <div class="col-md-4 data">
                                        <input type="text" class="form-control" name="phoneNum"
                                               placeholder="联系号码" value="${traveller.phoneNum}" readonly="readonly">
                                    </div>
                                    <div class="col-md-2 title">证件号码</div>
                                    <div class="col-md-4 data">
                                        <input type="text" class="form-control" name="credentialsNum"
                                               placeholder="证件号码" value="${traveller.credentialsNum}" readonly="readonly">
                                    </div>


                                </div>
                            </div>
                        <!-- 正文区域 /-->
                    </form>
                <%--</div>--%>
            </div>
            <form action="${basePath}/orders/submitOrder.do?travellerId=${traveller.id}" method="get">

            <div class="font-size">其他信息</div>
            <div class="col-md-4 data">
                <input type="text" class="form-control" name="orderDesc"
                       placeholder="其他信息" value="">
            </div>
            <div>
                <input type="text" name="orderNum" id="result" hidden>
            </div>

            <div>
                <input type="text" name="orderTime" id="time" hidden>
            </div>

            <div>
                 <input type="text" name="route_id" value="${route.route_id}" hidden>
            </div>

            <div>
                <input type="text" name="memberId" value="${member.mid}" hidden>
            </div>

                <div>
                    <input type="text" name="travellerId" value="${traveller.id}" hidden>
                </div>
            <div class="edit-pay">
                <div class="pay-head">支付方式</div>
                <div class="pay-info">
                    <span>在线支付</span>
                    <a href="">更多>></a>
                </div>
            </div>
            <div class="shop-account-detail">
                <div class="account-address">
                    <span><i>1</i> 件商品，总商品金额：</span>
                    <span>${route.price}</span>
                    <span>运费：</span>
                    <span><i>&yen;0.00</i></span>
                    <span>商品优惠：</span>
                    <span>￥0.00</span>
                </div>
                <div class="account-pay">
                    <span> 应付总额： <i>&yen;${route.price} </i></span>
                    <span>下单用户：${user.username} 电话：${user.phoneNum}</span>
                </div>
                <div class="account-btn"><button type="submit">提交订单</button></div>
            </div>
            </form>
        </div>



    </div>
    </div>


<!--引入尾部-->
<jsp:include page="footer.jsp"></jsp:include>
</body>
<script type="text/javascript">

        function addMember() {
            $.ajax({
                url:"${basePath}/orders/addMember.do",
                type:"GET",
                data:$("#sb-member").serialize(),
                success:function () {
                    location
                },
                error:function () {


                }
            })
            
        }
        function addTraveller() {
            $.ajax({
                url:"${basePath}/orders/addTraveller.do",
                type:"GET",
                data:$("#sb-traveller").serialize(),
                success:function () {
                    alert("保存成功")
                },
                error:function () {
                    alert("保存成功")
                }
            })

        }

        $(function () {
                var nums = '0123456789',
                    lowerCase = 'abcdefghijklmnopqrstuvwxyz',
                    chars = nums + lowerCase + lowerCase.toUpperCase();

                var len =10,
                    charsLen = chars.length;
                result = '';

                if (isNaN(len)) {
                    alert('生成位数必须是数字！');
                    return;
                }

                for (i = 0; i < len; i++) {
                    result += chars.charAt(Math.floor(Math.random() * charsLen));
                }
                document.getElementById('result').value = result;
        });

    $(function () {

        Date.prototype.format = function(fmt) {
            var o = {
                "M+" : this.getMonth()+1,                 //月份
                "d+" : this.getDate(),                    //日
                "h+" : this.getHours(),                   //小时
                "m+" : this.getMinutes(),                 //分
                "s+" : this.getSeconds(),                 //秒
                "q+" : Math.floor((this.getMonth()+3)/3), //季度
                "S"  : this.getMilliseconds()             //毫秒
            };
            if(/(y+)/.test(fmt)) {
                fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
            }
            for(var k in o) {
                if(new RegExp("("+ k +")").test(fmt)){
                    fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
                }
            }
            return fmt;
        }
       var t = new Date().format("yyyy-MM-dd");
        document.getElementById("time").value=t.toLocaleString();
    });

</script>
</html>