<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="../head.jsp"%>
<!-- 头部 start -->
<script src="${basePath}/js/getParameter.js"></script>
<script>
    $(function () {
        //主页显示用户名
        //查询主页分类数据
        $.get("user/findOne",{},function (data) {
            //{uid:1,name:李四}
            var msg="欢迎回来,"+data.name;
            $("#span_username").html(msg);
        });

//        $.get("category/findAll",{},function (data) {
//            //[{uid:1,cname:国内游}]
//            var lis='<li class="nav-active"><a href="index.html">首页</a></li>';
//            for(var i=0;i<data.length;i++){
//                var li='<li><a href="route_list.html?cid='+data[i].cid+'">'+data[i].cname+'</a></li>';
//                lis+=li;
//            }
//            lis+='<li><a href="favoriterank.html">收藏排行榜</a></li>';
//
//            //将lis字符串设置到ul中
//            $("#category").html(lis);
//        });

        //给搜索按钮绑定单击事件，获取输入框内容
        $("#search-button").click(function () {
            var rname = $("#search_input").val();
            alert(rname);
            //跳转路径到http://localhost/travel/route_list.html?cid=5拼接上rname=？
            //location.href="http://localhost/travel/route_list.html?cid=5&rname="+rname;
            //由于我们已经把获取参数cid的JS文件封装好了，现在直接引入JS插件后直接用
            var cid = getParameter("cid");
            //跳转
//            location.href="http://localhost/travel/route_list.html?cid="+cid+"&rname="+rname;
            location.href="/travel/route_list.html?cid="+cid+"&rname="+rname;

        });

    });
</script>
<header id="header">
    <div class="top_banner">
        <img src="${basePath}/images/top_banner.jpg" alt="">
    </div>
    <div class="shortcut">
        <!-- 未登录状态  -->
        <div class="login_out">
            <a href="${basePath}/front-pages/travel-login.jsp">登录</a>
            <a href="${basePath}/front-pages/travel-register.jsp">注册</a>
        </div>
        <!-- 登录状态  -->
        <div class="login">

            <span id="span_username"></span>
            <a href="myfavorite.html" class="collection">我的收藏</a>
            <a href="javascript:location.href='user/exit';">退出</a>
        </div>
    </div>
    <div class="header_wrap">
        <div class="topbar">
            <div class="logo">
                <a href="./index.html"><img src="${basePath}images/logo.jpg" alt=""></a>
            </div>
            <div class="search">
                <input name="" id="search_input" type="text" placeholder="请输入路线名称" class="search_input" autocomplete="off">
                <a href="javascript:;" id="search-button" class="search-button">搜索</a>
            </div>
            <div class="hottel">
                <div class="hot_pic">
                    <img src="${basePath}/images/hot_tel.jpg" alt="">
                </div>
                <div class="hot_tel">
                    <p class="hot_time">客服热线(9:00-6:00)</p>
                    <p class="hot_num">400-618-9090</p>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- 头部 end -->
<!-- 首页导航 -->
<div class="navitem">
    <ul id="category" class="nav">
               <li class="nav-active"><a href="index.html">首页</a></li>
                <li><a href="route_list.html">门票</a></li>
                <li><a href="route_list.html">酒店</a></li>
                <li><a href="route_list.html">香港车票</a></li>
                <li><a href="route_list.html">出境游</a></li>
                <li><a href="route_list.html">国内游</a></li>
                <li><a href="route_list.html">港澳游</a></li>
                <li><a href="route_list.html">抱团定制</a></li>
                <li><a href="route_list.html">全球自由行</a></li>
                <li><a href="favoriterank.html">收藏排行榜</a></li>
    </ul>
</div>

