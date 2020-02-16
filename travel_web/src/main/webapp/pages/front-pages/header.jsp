<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="../head.jsp"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!-- 头部 start -->
<script src="${basePath}/js/getParameter.js"></script>
<script>
    $(function () {
        //给搜索按钮绑定单击事件，获取输入框内容
        $("#search-button").click(function () {
            var rname = $("#search_input").val();
            location.href="${basePath}/route/searchSome.do?route_name="+rname;
        });

    });
</script>
<header id="header">
    <div class="shortcut">

    </div>
    <div class="header_wrap">
        <div class="topbar">
            <div class="logo">
                <a href="${basePath}/user/transfer.do"><img src="${basePath}images/logo.PNG" alt=""></a>
            </div>
            <div class="search">
                <input name="" id="search_input" type="text" placeholder="请输入路线名称" class="search_input" autocomplete="off">
                <%--想一下为什么需要写javscript:;--%>
                <%--写了之后就随便写在入口函数里面--%>
                <a href="javascript:;" id="search-button" class="search-button">搜索</a>

                <!-- 登录状态  -->
                <div class="login" style="color: #9DC3FC">
                    <span id="span_username" ><security:authentication property="principal.username"></security:authentication>,欢迎您</span>
                    <a href="${basePath}/pages/front-pages/personal.jsp" class="collection">个人中心</a>
                    <a href="${basePath}/logout.do" class="collection">退出</a>
                    <%--对非管理员用户隐藏--%>
                    <security:authorize access="hasRole('ROLE_ADMIN')">
                        <a href="${basePath}/pages/main.jsp" class="collection">后台管理</a>
                    </security:authorize>
                </div>
            </div>

        </div>
    </div>
</header>
<!-- 头部 end -->
<!-- 首页导航 -->
<div class="navitem">
    <ul id="category" class="nav">
                <li class="nav-active"><a href="${basePath}/user/transfer.do">首页</a></li>
                <li><a href="${basePath}/route/findInternal.do?page=1&size=5">国内游</a></li>
                <li><a href="${basePath}/route/findAllByExit.do?page=1&size=5">出境游</a></li>
                <li><a href="${basePath}/route/findAllByGangAo.do?page=1&size=5">港澳游</a></li>
                <li><a href="route_list.html">抱团定制</a></li>
                <li><a href="route_list.html">全球自由行</a></li>
                <li><a href="route_list.html">酒店</a></li>
                <li><a href="favoriterank.html">收藏排行榜</a></li>
    </ul>
</div>

