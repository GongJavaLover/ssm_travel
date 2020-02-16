<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../head.jsp"%>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>旅游-搜索</title>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/common.css">
    <link rel="stylesheet" href="${basePath}/css/search.css">
    <script src="${basePath}/js/jquery-3.3.1.js"></script>
    <script src="${basePath}js/getParameter.js"></script>

</head>
<body>
<!--引入头部-->
<jsp:include page="header.jsp"></jsp:include>
    <div class="page_one">
        <div class="contant">
            <div class="crumbs">
                <img src="${basePath}/images/search.png" alt="">
                <p>迷你旅行><span>搜索结果</span></p>
            </div>
            <div class="xinxi clearfix">
                <div class="left">
                    <div class="header">
                        <span>商品信息</span>
                        <span class="jg">价格</span>
                    </div>
                    <ul id="route">
                        <c:forEach items="${pageInfo.list}" var="route">
                        <li>
                            <div class="img"><img src="${basePath}/${route.rimage}" alt=""></div>
                            <div class="text1">
                                <p>${route.route_name}</p>
                                <br/>
                                <p>${route.routeIntroduce}</p>
                            </div>
                            <div class="price">
                                <p class="price_num">
                                    <span>&yen;</span>
                                    <span>${route.price}</span>
                                    <span>起</span>
                                </p>
                                <p><a href="${basePath}/route/findOne.do?route_id=${route.route_id}">查看详情</a></p>
                            </div>
                        </li>
                        </c:forEach>
                    </ul>
                    <div class="page_num_inf">
                        <i></i> 共
                        <span id="totalPage">${pageInfo.pages}</span>页<span id="totalCount">${pageInfo.total}</span>条
                    </div>
                    <div class="pageNum">
                        <ul id="pageNum">
                            <li><a href="${basePath}/route/findInternal.do?page=1&size=${pageInfo.pageSize}">首页</a></li>
                            <li class="threeword"><a href="${basePath}/route/findInternal.do?page=${pageInfo.prePage}&size=${pageInfo.pageSize}">上一页</a></li>
                            <%--<li class="curPage"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">6</a></li>
                            <li><a href="#">7</a></li>
                            <li><a href="#">8</a></li>
                            <li><a href="#">9</a></li>
                            <li><a href="#">10</a></li>--%>
                            <c:forEach begin="1" end="${pageInfo.pages}" var="pageNum">
                            <li><a href="${basePath}/route/findInternal.do?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a></li>
                            </c:forEach>
                            <li class="threeword"><a href="${basePath}/route/findInternal.do?page=${pageInfo.nextPage}&size=${pageInfo.pageSize}">下一页</a></li>
                            <li class="threeword"><a href="${basePath}/route/findInternal.do?page=${pageInfo.pages}&size=${pageInfo.pageSize}">末页</a></li>
                        </ul>
                    </div>
                </div>
                <div class="right">
                    <div class="top">
                        <div class="hot">HOT</div>
                        <span>热门推荐</span>
                    </div>
                    <ul>
                        <c:forEach items="${pageInfo.list}" begin="0" end="4" var="hotRoute">
                            <li>
                                <div class="left"><img src="${basePath}/images/04-search_10.jpg" alt=""></div>
                                <div class="right">
                                    <p>${hotRoute.route_name}</p>
                                    <p>网付价<span>&yen;<span>${hotRoute.price}</span>起</span>
                                    </p>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!--引入头部-->
    <jsp:include page="footer.jsp"></jsp:include>
    <!--导入布局js，共享header和footer-->
    <script type="text/javascript" src="js/include.js"></script>
</body>

</html>