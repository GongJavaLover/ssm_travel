<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="head.jsp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>跳转页面</title>
    <style>
      p{
          text-align: center;
      }
    </style>
</head>
<body>
    <p style="color: red">
        跳转中...请稍等!
    </p>
            <script>

                var second=0;
                function fun() {

                    if(second<=0){
                        location.href="${basePath}/user/transfer.do";
                    }
                }
                setInterval(fun,1000);
            </script>

</body>
</html>