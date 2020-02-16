<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../head.jsp"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>旅游网</title>
    <!-- Bootstrap -->
    <link href="${basePath}/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${basePath}/css/common.css">
    <link rel="stylesheet" type="text/css" href="${basePath}/css/index.css">

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${basePath}/js/jquery-3.3.1.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${basePath}/js/bootstrap.min.js"></script>
    <!--导入布局js，共享header和footer-->
    <script type="text/javascript" src="${basePath}/js/include.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!--引入头部-->
<jsp:include page="header.jsp"></jsp:include>
<!-- banner start-->
<section id="banner">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="2000">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            <li data-target="#carousel-example-generic" data-slide-to="4"></li>
            <li data-target="#carousel-example-generic" data-slide-to="5"></li>

        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="${basePath}/images/banner_1.png" alt="">
            </div>
            <div class="item">
                <img src="${basePath}/images/banner_2.png" alt="">
            </div>
            <div class="item">
                <img src="${basePath}/images/banner_3.png" alt="">
            </div>
            <div class="item">
                <img src="${basePath}/images/banner_4.png" alt="">
            </div>
            <div class="item">
                <img src="${basePath}/images/banner_5.png" alt="">
            </div>
        </div>
        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</section>
<!-- banner end-->
<!-- 旅游 start-->
<section id="content">
    <!-- 精选start-->
    <section class="hemai_jx">
        <div class="jx_top">
            <div class="jx_tit">
                <img src="${basePath}/images/icon_5.jpg" alt="">
                <span>精选</span>
            </div>

        </div>
        <div class="jx_content">
            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="popularity">
                    <div class="row">

                        <c:forEach items="${routes.listIterator()}" var="route" begin="9" end="12">
                            <div class="col-md-3">
                                <a href="${basePath}/route/findOne.do?route_id=${route.route_id}">
                                    <img src="${basePath}/${route.rimage}" alt="">
                                    <div class="has_border">
                                        <h3>${route.routeIntroduce}</h3>
                                        <div class="price">网付价<em>￥</em><strong>${route.price}</strong></div>
                                    </div>
                                </a>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 黑马精选end-->
    <!-- 国内游 start-->
    <section class="hemai_jx">
        <div class="jx_top">
            <div class="jx_tit">
                <img src="${basePath}/images/icon_6.jpg" alt="">
                <span>国内游</span>
            </div>
        </div>
        <div class="heima_gn">
            <div class="guonei_l">
                <img src="${basePath}/images/guonei_1.jpg" alt="">
            </div>
            <div class="guone_r">
                <div class="row">

                        <c:forEach items="${routes.listIterator()}" var="route" begin="0" end="5">
                            <div class="col-md-4">
                                <a href="${basePath}/route/findOne.do?route_id=${route.route_id}">
                                    <img src="${basePath}/${route.rimage}" alt="">
                                    <div class="has_border">
                                        <h3>${route.routeIntroduce}</h3>
                                        <div class="price">网付价<em>￥</em><strong>${route.price}</strong></div>
                                    </div>
                                </a>
                            </div>
                        </c:forEach>
                </div>
            </div>
        </div>
    </section>
    <!-- 国内游 end-->
    <!-- 境外游 start-->
    <section class="hemai_jx">
        <div class="jx_top">
            <div class="jx_tit">
                <img src="${basePath}/images/icon_7.jpg" alt="">
                <span>境外游</span>
            </div>
        </div>
        <div class="heima_gn">
            <div class="guonei_l">
                <img src="${basePath}/images/jiangwai_1.jpg" alt="">
            </div>
            <div class="guone_r">
                <div class="row">
                        <c:forEach items="${routes.listIterator()}" var="route" begin="14" end="19">
                            <div class="col-md-4">
                                <a href="${basePath}/route/findOne.do?route_id=${route.route_id}">
                                    <img src="${basePath}/${route.rimage}" alt="">
                                    <div class="has_border">
                                        <h3>${route.routeIntroduce}</h3>
                                        <div class="price">网付价<em>￥</em><strong>${route.price}</strong></div>
                                    </div>
                                </a>
                            </div>
                        </c:forEach>
                </div>
            </div>
        </div>
    </section>
    <!-- 境外游 end-->
</section>
<!-- 旅游 end-->
<!--导入底部-->
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>