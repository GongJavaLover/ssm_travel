<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@include file="../head.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Personal</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="renderer" content="webkit">
    <meta property="qc:admins" content="77103107776157736375" />
    <meta property="wb:webmaster" content="c4f857219bfae3cb" />
    <meta http-equiv="Access-Control-Allow-Origin" content="*" />
    <meta http-equiv="Cache-Control" content="no-transform " />
    <meta name="keywords" content="寻亲网" />
    <meta name="description" content="寻亲网" />
    <link rel="stylesheet" href="${basePath}/css/base.css" type="text/css" />
    <link rel="stylesheet" href="${basePath}/css/common-less(1).css" type="text/css" />
    <link rel="stylesheet" href="${basePath}/css/moco.min.css" type="text/css" />
    <link rel="stylesheet" href="${basePath}/css/common-less.css" type="text/css" />
    <link rel="stylesheet" href="${basePath}/css/profile-less.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="${basePath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${basePath}/css/common.css">
    <link rel="stylesheet" type="text/css" href="${basePath}/css/route-detail.css">
    <script src="${basePath}/js/jquery-3.3.1.js"></script>
    <script src="${basePath}/js/getParameter.js"></script>

</head>
<body>
<!--引入头部-->
<jsp:include page="header.jsp"></jsp:include>

<div id="main">
    <div class="page-settings">
        <div class="top">
            <div class="w960 mauto top_title">
                <p>个人中心</p>
            </div>
        </div>
        <div class="setting pb10">
            <div class="nav-tabs pa">
                <h class="baseinfo fl active">基本信息</h>
                <a href="http://www.baidu.com" class="countinfo fl">帐户信息</a>
                <a href="http://www.baidu.com" class="countinfo fl">收货地址</a>
                <a href="http://www.baidu.com" class="countinfo fl">实名认证</a>
                <div class="cb"></div>
            </div>
            <div class="contentBox">
                <div class="formBox">
                    <div id="setting-profile" class="setting-wrap setting-profile">

                        <div class="wlfg-wrap clearfix ">
                            <label class="label-name" >头像：</label>
                            <div class="rlf-group">
                                <img class="fl avator-img" id="js-portrait" src="http://img.mukewang.com/58492fe600012e8e01800180-200-200.jpg" data-portrait="58492fe600012e8e01800180" width="180" height="180">
                                <div class="fl ml20 pr">
                                    <div><input type="button" hidefocus="true" value="换一换" class="js-avator-try avator-try"></div>
                                    <div id="avator-btns" class="avator-btn-inner">
                                        <!--div class="avator-btn-snswrap">
                                            <span class="l-sns-btn l-sns-weibo" data-sns="weibo">从新浪微博同步头像</span>
                                        </div !-->


                                        <div class="avator-btn-wrap">
                                            <form target="uploadtarget" action="postpic" method="post" enctype="multipart/form-data">
                                                <a href="javascript:void(0)" hidefocus="true" class="avator-btn-fake">上传头像</a>
                                                <input class="hide" type="file" title="上传头像" name="fileField" id="upload" accept="image/*">
                                                <input class="hide" type="hidden" name="type" value="1">
                                            </form>
                                            <iframe src="about:blank" id="uploadtarget" name="uploadtarget" frameborder="0" style="display:none;"></iframe>
                                        </div>
                                    </div>
                                </div>
                                <div class="cb"></div>
                                <p class="rlf-tip-wrap errorHint color-red" ></p>
                            </div>
                        </div>

                        <form id="profile" >

                            <div class="wlfg-wrap clearfix">
                                <label class="label-name" for="nick" >昵称：</label>
                                <div class="rlf-group">
                                    <input type="text" name="nickname" id="nick"  autocomplete="off"  data-validate="require-nick"  class="moco-form-control" value="Sequin_YF" placeholder="请输入昵称."/>
                                    <p class="rlf-tip-wrap errorHint color-red" ></p>
                                </div>
                            </div>



                            <!--div class="wlfg-wrap clearfix">
                                <label class="label-name" for="job">职位：</label>
                                <div class="rlf-group">
                                    <select class="moco-form-control rlf-select" name="job" hidefocus="true" id="job" data-validate="require-select">
                                        <option value="">请选择职位</option>
                                        <option value="13" >学生</option>
                                        <option value="1" >页面重构设计</option>
                                        <option value="6" >Web前端工程师</option>
                                        <option value="5" >JS工程师</option>
                                        <option value="8" >PHP开发工程师</option>
                                        <option value="11" >JAVA开发工程师</option>
                                        <option value="7" >移动开发工程师</option>
                                        <option value="9" >软件测试工程师</option>
                                        <option value="10" >Linux系统工程师</option>
                                        <option value="2" >交互设计师</option>
                                        <option value="3" >产品经理</option>
                                        <option value="15" >数据库工程师</option>
                                        <option value="4" >UI设计师</option>
                                        <option value="17" >CG影视动画师</option>
                                        <option value="16" >全栈工程师</option>
                                    </select>
                                    <p class="rlf-tip-wrap errorHint color-red"></p>
                                </div>
                            </div!-->

                            <div class="wlfg-wrap clearfix">
                                <label class="label-name" for="province-select">城市：</label>
                                <div class="rlf-group profile-address">
                                    <select id="province-select" class='moco-form-control' hidefocus="true">
                                        <option value="0">选择省份</option>
                                        <option value="1">北京</option>
                                        <option value="2">天津</option>
                                        <option value="3">河北</option>
                                        <option value="4">山西</option>
                                        <option value="5">内蒙古</option>
                                        <option value="6">辽宁</option>
                                        <option value="7">吉林</option>
                                        <option value="8">黑龙江</option>
                                        <option value="9">上海</option>
                                        <option value="10">江苏</option>
                                        <option value="11">浙江</option>
                                        <option value="12">安徽</option>
                                        <option value="13">福建</option>
                                        <option value="14">江西</option>
                                        <option value="15">山东</option>
                                        <option value="16">河南</option>
                                        <option value="17">湖北</option>
                                        <option value="18">湖南</option>
                                        <option value="19">广东</option>
                                        <option value="20">海南</option>
                                        <option value="21">广西</option>
                                        <option value="22">甘肃</option>
                                        <option value="23">陕西</option>
                                        <option value="24">新疆</option>
                                        <option value="25">青海</option>
                                        <option value="26">宁夏</option>
                                        <option value="27">重庆</option>
                                        <option value="28">四川</option>
                                        <option value="29">贵州</option>
                                        <option value="30">云南</option>
                                        <option value="31">西藏</option>
                                        <option value="32">台湾</option>
                                        <option value="33">澳门</option>
                                        <option value="34">香港</option>
                                        <option value="100">其他</option>
                                    </select>
                                    <select class='moco-form-control' id="city-select" hidefocus="true">
                                        <option value="0">选择城市</option>
                                    </select>
                                    <select class='moco-form-control mr0' id="area-select" hidefocus="true">
                                        <option value="0">选择区县</option>
                                    </select>
                                    <div class="cb"></div>
                                    <p class="rlf-tip-wrap errorHint color-red"></p>
                                </div>
                            </div>

                            <div class="wlfg-wrap clearfix">
                                <label class="label-name h16 lh16" >性别：</label>
                                <div class="rlf-group rlf-radio-group">
                                    <label  class="lh16"><input type="radio" hidefocus="true" value="0"   name="sex">保密</label>
                                    <label  class="lh16"><input type="radio" hidefocus="true" value="1"  name="sex">男</label>
                                    <label  class="lh16"><input type="radio" hidefocus="true" value="2" checked="checked" name="sex">女</label>
                                    <p class="rlf-tip-wrap errorHint color-red"></p>
                                </div>
                            </div>
                            <div class="wlfg-wrap clearfix">
                                <label class="label-name" for="aboutme">个性签名：</label>
                                <div class="rlf-group">
                                    <div class="pr">
                                        <textarea name="aboutme"  id="aboutme"  rows="5" class="noresize js-sign moco-form-control"></textarea>
                                        <p class="numCanInput js-numCanInput ">还可以输入128个字符</p>
                                    </div>
                                </div>
                            </div>

                            <div class="wlfg-wrap clearfix">
                                <label class="label-name" for="profile-submit"></label>
                                <div class="rlf-group">
                                    <span id="profile-submit"  hidefocus="true"  aria-role="button" class="rlf-btn-green btn-block profile-btn">保存</span>
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>

    </div>

</div>

<!--引入头部-->
<jsp:include page="footer.jsp"></jsp:include>

<!--script-->
<script src="../ssologin.js?v=2.0"></script>
<script type="text/javascript" src="../sea.js"></script>
<script type="text/javascript" src="../sea_config.js?v=201612141100"></script>
<script type="text/javascript">seajs.use("../"+OP_CONFIG.module+"/"+OP_CONFIG.page);</script>





<div style="display: none">
    <script type="text/javascript">
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Ff0cfcccd7b1393990c78efdeebff3968' type='text/javascript'%3E%3C/script%3E"));
        (function (d) {
            window.bd_cpro_rtid="rHT4P1c";
            var s = d.createElement("script");s.type = "text/javascript";s.async = true;s.src = location.protocol + "//cpro.baidu.com/cpro/ui/rt.js";
            var s0 = d.getElementsByTagName("script")[0];s0.parentNode.insertBefore(s, s0);
        })(document);
    </script>
    <script>
        (function(){
            var bp = document.createElement('script');
            bp.src = '//push.zhanzhang.baidu.com/push.js';
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(bp, s);
        })();
    </script>
</div>
</body>
</html>