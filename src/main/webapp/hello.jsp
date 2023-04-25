<%--
  Created by IntelliJ IDEA.
  User: David Kwan
  Date: 2023/4/24
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    boolean isClearCookie = false;
%>
<html>
<head>
    <title>Hello</title>
</head>
<body>
    <h1>Hello</h1>
    <h1>系统已为您自动登录！</h1>
    <a href="shopPage1.jsp"><button type="submit">前往购物商城</button></a>
    <form action="toLogout" method="post"><button type="submit">退出登录</button></form>
</body>
</html>
