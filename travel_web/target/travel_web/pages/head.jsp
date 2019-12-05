<%--
  Created by IntelliJ IDEA.
  User: 那么淡丶
  Date: 2019/10/29
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java"  isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    pageContext.setAttribute("basePath",request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/");

%>
</body>
</html>
