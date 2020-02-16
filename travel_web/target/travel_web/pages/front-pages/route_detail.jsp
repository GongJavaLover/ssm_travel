<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@include file="../head.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>路线详情</title>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${basePath}/css/common.css">
    <link rel="stylesheet" type="text/css" href="${basePath}/css/route-detail.css">
    <script src="${basePath}/js/jquery-3.3.1.js"></script>
    <script src="${basePath}/js/getParameter.js"></script>
</head>

<body>
<!--引入头部-->
<jsp:include page="header.jsp"></jsp:include>
    <!-- 详情 start -->   
    <div class="wrap">
        <div class="bread_box">
            <a href="${basePath}/user/transfer.do">首页</a>
            <span> &gt;</span>
            <a>${route.category}</a><span> &gt;</span>
            <a href="#">${route.route_name}</a>
        </div>
        <div class="prosum_box">
            <dl class="prosum_left">
                <dt id="dt">
                    <img alt="" class="big_img" src="${basePath}/${routeImgList.get(0).bigPic}">
                </dt>
                <dd id="dd">
                    <a class="up_img up_img_disable"></a>
                    <c:forEach items="${routeImgList.listIterator()}" var="routeImg">
                        <a title="" class="little_img" data-bigpic="${basePath}/${routeImg.bigPic}" >
                            <img src="${basePth}/${routeImg.smallPic}">
                        </a>
                    </c:forEach>
                    <a class="down_img down_img_disable" style="margin-bottom: 0;"></a>
                </dd>
            </dl>
            <div class="prosum_right">
               <p class="pros_title" id="rname">${route.route_name}</p>
                <p class="hot" id="routeIntroduce">${route.routeIntroduce}</p>
                <div class="pros_other">
                    <p >经营商家  ：<span id="sname">国旅</span></p>
                    <p >咨询电话 : <span id="consphone">400-618-9090</span></p>
                    <p >地址 ： <span id="address">程序员</span></p>
                </div>
                <div class="pros_price">
                    <p class="price"><strong id="price">¥${route.price}</strong><span>起</span></p>
                    <p class="collect">
                        <a href="${basePath}/route/buy.do?route_id=${route.route_id}&username=<security:authentication property="principal.username"></security:authentication>" type="button" class="btn" id="buy" onclick="addMid()"><i class="glyphicon glyphicon-heart-empty"></i>购买</a>
                        <a type="button" class="btn" id="favorite" onclick="addFavorite()"><i class="glyphicon glyphicon-heart-empty"></i>点击收藏</a>

                        <!--<a  class="btn already" disabled="disabled"><i class="glyphicon glyphicon-heart-empty"></i>点击收藏</a>-->
                    </p>
                </div>        
            </div>
        </div>
        <div class="you_need_konw">
            <span>旅游须知</span>
            <div class="notice">
                <p>1、旅行社已投保旅行社责任险。建议游客购买旅游意外保险 <br>

                <p>2、旅游者参加打猎、潜水、海边游泳、漂流、滑水、滑雪、滑草、蹦极、跳伞、滑翔、乘热气球、骑马、赛车、攀岩、水疗、水上飞机等属于高风险性游乐项目的，敬请旅游者务必在参加前充分了解项目的安全须知并确保身体状况能适应此类活动；如旅游者不具备较好的身体条件及技能，可能会造成身体伤害。</p>

                <p>3、参加出海活动时，请务必穿着救生设备。参加水上活动应注意自己的身体状况，有心脏病、冠心病、高血压、感冒、发烧和饮酒及餐后不可以参加水上活动及潜水。在海里活动时，严禁触摸海洋中各种鱼类，水母，海胆，珊瑚等海洋生物，避免被其蛰伤。老人和小孩必须有成年人陪同才能参加合适的水上活动。在海边游玩时，注意保管好随身携带的贵重物品。</p>

                <p>4、根据中国海关总署的规定，旅客在境外购买的物品，在进入中国海关时可能需要征收关税。详细内容见《中华人民共和国海关总署公告2010年第54号文件》。</p>

                <p>5、建议出发时行李托运，贵重物品、常用物品、常用药品、御寒衣物等请随身携带，尽量不要托运。行李延误属于不可抗力因素，我司将全力协助客人跟进后续工作，但我司对此不承担任何责任。</p>
                <p>1、旅行社已投保旅行社责任险。建议游客购买旅游意外保险 <br>

                <p>2、旅游者参加打猎、潜水、海边游泳、漂流、滑水、滑雪、滑草、蹦极、跳伞、滑翔、乘热气球、骑马、赛车、攀岩、水疗、水上飞机等属于高风险性游乐项目的，敬请旅游者务必在参加前充分了解项目的安全须知并确保身体状况能适应此类活动；如旅游者不具备较好的身体条件及技能，可能会造成身体伤害。</p>

                <p>3、参加出海活动时，请务必穿着救生设备。参加水上活动应注意自己的身体状况，有心脏病、冠心病、高血压、感冒、发烧和饮酒及餐后不可以参加水上活动及潜水。在海里活动时，严禁触摸海洋中各种鱼类，水母，海胆，珊瑚等海洋生物，避免被其蛰伤。老人和小孩必须有成年人陪同才能参加合适的水上活动。在海边游玩时，注意保管好随身携带的贵重物品。</p>

                <p>4、根据中国海关总署的规定，旅客在境外购买的物品，在进入中国海关时可能需要征收关税。详细内容见《中华人民共和国海关总署公告2010年第54号文件》。</p>

                <p>5、建议出发时行李托运，贵重物品、常用物品、常用药品、御寒衣物等请随身携带，尽量不要托运。行李延误属于不可抗力因素，我司将全力协助客人跟进后续工作，但我司对此不承担任何责任。</p>
            </div>           
        </div>
    </div>
    <!-- 详情 end -->

    <!--引入头部-->
<jsp:include page="footer.jsp"></jsp:include>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${basePath}/js/jquery-3.3.1.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${basePath}/js/bootstrap.min.js"></script>
    <!--导入布局js，共享header和footer-->
    <script type="text/javascript" src="${basePath}/js/include.js"></script>
    <script>
    $(document).ready(function() {
     goImg();
    });

    function goImg() {
        //焦点图效果
        //点击图片切换图片
        $('.little_img').on('mousemove', function() {
            $('.little_img').removeClass('cur_img');
            var big_pic = $(this).data('bigpic');
            $('.big_img').attr('src', big_pic);
            $(this).addClass('cur_img');
        });
        //上下切换
        var picindex = 0;
        var nextindex = 4;
        $('.down_img').on('click',function(){
            var num = $('.little_img').length;
            if((nextindex + 1) <= num){
                $('.little_img:eq('+picindex+')').hide();
                $('.little_img:eq('+nextindex+')').show();
                picindex = picindex + 1;
                nextindex = nextindex + 1;
            }
        });
        $('.up_img').on('click',function(){
            var num = $('.little_img').length;
            if(picindex > 0){
                $('.little_img:eq('+(nextindex-1)+')').hide();
                $('.little_img:eq('+(picindex-1)+')').show();
                picindex = picindex - 1;
                nextindex = nextindex - 1;
            }
        });
        //自动播放
        // var timer = setInterval("auto_play()", 5000);
    }

    //自动轮播方法
    function auto_play() {
        var cur_index = $('.prosum_left dd').find('a.cur_img').index();
        cur_index = cur_index - 1;
        var num = $('.little_img').length;
        var max_index = 3;
        if ((num - 1) < 3) {
            max_index = num - 1;
        }
        if (cur_index < max_index) {
            var next_index = cur_index + 1;
            var big_pic = $('.little_img:eq(' + next_index + ')').data('bigpic');
            $('.little_img').removeClass('cur_img');
            $('.little_img:eq(' + next_index + ')').addClass('cur_img');
            $('.big_img').attr('src', big_pic);
        } else {
            var big_pic = $('.little_img:eq(0)').data('bigpic');
            $('.little_img').removeClass('cur_img');
            $('.little_img:eq(0)').addClass('cur_img');
            $('.big_img').attr('src', big_pic);
        }
    }

    </script>
    <script>


        $(function () {
//                alert("66666");
                if(${route.rflag}){
                    //<a  class="btn already" disabled="disabled">
                    //已经收藏过了
                    //给上面的收藏按钮添加属性并设置属性的值
                    $("#favorite").addClass("already");
                    $("#favorite").attr("disabled","disabled");
                    $("#favorite").removeAttr("onclick");
                    $("#favorite").html("已收藏")
                }else {
                    //没有收藏过
                    $("#favorite").click(function () {
                        $.ajax({
                            url:"${basePath}/route/addFavorite.do?rflag=${route.rflag}&route_id=${route.route_id}",
                            type:"GET",
                            success:function () {
                                location.reload();
                            },
                            error:function () {
                                location.reload();
                            }
                        });
                    })
                }
        })
    </script>
</body>

</html>