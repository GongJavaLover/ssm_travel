<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="../head.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>注册</title>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/common.css">
    <link rel="stylesheet" href="${basePath}/css/register.css">
    <!--导入jquery-->
    <script src="${basePath}/js/jquery-3.3.1.js"></script>

    <script>
        function checkUsername() {
            //1获取用户名
            var username = $("#username").val();
            //2定义正则表达式
            var reg_username=/^\w{8,20}$/;
            //3判断，给出提示信息
            var flag = reg_username.test(username);
            if(flag){
                //用户名合法
                $("#username").css("border","");
            }else {
                //用户名非法
                $("#username").css("border","1px solid red");
            }

            return flag;
        };
        function checkPassword() {
            //1获取用户名
            var password = $("#password").val();
            //2定义正则表达式
            var reg_password=/^\w{8,20}$/;
            //3判断，给出提示信息
            var flag = reg_password.test(password);
            if(flag){
                //用户名合法
                $("#password").css("border","");
            }else {
                //用户名非法
                $("#password").css("border","1px solid red");
            }

            return flag;
        }

        //校验邮箱
        function checkEmail() {
            //1获取邮箱
            var email = $("#email").val();
            //定义正则表达式gong993996@163.com
            var reg_email=/^\w+@\w+\.\w+$/;
            //判断
            var flag = reg_email.test(email);
            if(flag){
                //合法
                $("#email").css("border","");

            }else {
                //不合法
                $("#email").css("border","1px solid red");
            }

            return flag;
        }

        //验证姓名
        function checkName() {
            //获取姓名
            var name = $("#name").val();
            //定义正则表达式
            var reg_name= /^[\u4E00-\u9FA5A-Za-z]+$/;
            //判断
            var flag = reg_name.test(name);
            if(flag){
                $("#name").css("border","");
            }else {
                $("#name").css("border","1px solid red");
            }
            return flag;

        }

        //验证电话号码
        function checkTelephone() {
            //获取姓名
            var telephone = $("#telephone").val();
            //定义正则表达式
            var reg_telephone=/^(((13|14|15|18|17)\d{9}))$/;
            //判断
            var flag = reg_telephone.test(telephone);
            if(flag){
                $("#telephone").css("border","");
            }else {
                $("#telephone").css("border","1px solid red");
            }
            return flag;

        }

   /*     $(function () {
            //当表单提交时
            $("#registerForm").submit(function () {
                //发送数据到服务器
                if(checkUsername()&&checkPassword()&&checkEmail()&&checkName()&&checkName()){
                    //校验通过，发送ajax请求，提交表单数据,serialize()表示序列表格内容为字符串
                    $.post("user/regist",$(this).serialize(),function (data) {
                        //处理服务器响应数据data
                        if(data.flag){
                            //注册成功,跳转页面
                            location.href="register_ok.html";
                        }else {
                            //注册失败，弹出提示信息
                            $("#errorMsg").html(data.errorMsg);
                        }

                    });
                }

                return false;
            });

            //焦点事件
            $("#username").blur(checkUsername);
            $("#password").blur(checkPassword);
            $("#email").blur(checkEmail);
            $("#name").blur(checkName);
            $("#telephone").blur(checkTelephone);

        });*/
    </script>


</head>
<body>
<!--引入头部-->
<jsp:include page="header.jsp"></jsp:include>
<!-- 头部 end -->
<div class="rg_layout">
    <div class="rg_form clearfix">
        <div class="rg_form_left">
            <p>新用户注册</p>
            <p>USER REGISTER</p>
        </div>
        <div class="rg_form_center">
            <div id="errorMsg" style="color: red;text-align: center"></div>
            <!--注册表单-->
            <form id="registerForm" action="${basePath}/travel/user/register.do" method="post">
                <!--提交处理请求的标识符-->
                <input type="hidden" name="action" value="register">
                <table style="margin-top: 25px;">
                    <tr>
                        <td class="td_left">
                            <label for="username">用户名</label>
                        </td>
                        <td class="td_right">
                            <input type="text" id="username" name="username" placeholder="请输入账号">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="password">密码</label>
                        </td>
                        <td class="td_right">
                            <input type="text" id="password" name="password" placeholder="请输入密码">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="email">Email</label>
                        </td>
                        <td class="td_right">
                            <input type="text" id="email" name="email" placeholder="请输入Email">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="name">姓名</label>
                        </td>
                        <td class="td_right">
                            <input type="text" id="name" name="name" placeholder="请输入真实姓名">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="telephone">手机号</label>
                        </td>
                        <td class="td_right">
                            <input type="text" id="telephone" name="telephone" placeholder="请输入您的手机号">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="sex">性别</label>
                        </td>
                        <td class="td_right gender">
                            <input type="radio" id="sex" name="sex" value="男" checked> 男
                            <input type="radio" name="sex" value="女"> 女
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="birthday">出生日期</label>
                        </td>
                        <td class="td_right">
                            <input type="date" id="birthday" name="birthday" placeholder="年/月/日">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="check">验证码</label>
                        </td>
                        <td class="td_right check">
                            <input type="text" id="check" name="check" class="check">
                            <img name="checkCode" id="kaptchaImage" src="${basePath}/kaptcha" height="32px" alt="" onclick="changeCheckCode(this)">
                            <script type="text/javascript">
                                //图片点击事件
                                function changeCheckCode(img) {
                                    var time=new Date().getTime();
                                    img.src="${basePath}/kaptcha?"+time;
                                }
                            </script>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                        </td>
                        <td class="td_right check">
                            <button type="submit" class="submit" value="注册"></button>
                            <span id="msg" style="color: red;"></span>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="rg_form_right">
            <p>
                已有账号？
                <a href="#">立即登录</a>
            </p>
        </div>
    </div>
</div>
<!--引入尾部-->
<jsp:include page="footer.jsp"></jsp:include>
<!--导入布局js，共享header和footer-->
<script type="text/javascript" src="${basePath}/js/include.js"></script>

</body>
</html>