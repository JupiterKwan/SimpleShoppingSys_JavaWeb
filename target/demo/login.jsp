<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false" %>
<%--<%@ page import  %>--%>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <style>
        .parent {
            margin-top: 80px;
            width: 50%;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            line-height: 50%;
            vertical-align: middle;
        }

        .form {
            display: flex;
            align-items: center;
            justify-content: center;
            line-height: 180%;
        }
    </style>
</head>
<body>

<%
    Cookie[] cookie = request.getCookies();
    String name = "";
    String pwd = "";
    if (cookie != null && cookie.length != 0) {
        for (int i = 0; i < cookie.length; i++) {
//            if (cookie[i] != null) {
                if (cookie[i].getName().equals("username")) {
                    name = cookie[i].getValue();
                }
//            }
//            if (cookie[i] != null) {
                if (cookie[i].getName().equals("pwd")) {
                    pwd = cookie[i].getValue();
                }
//            }
        }
    }
    if ((!name.equals("")) && (!pwd.equals("")) && name.equals("admin")) {
        request.getRequestDispatcher("hello.jsp").forward(request, response);
    }
    else {
%>

<div class="parent">
    <h2>用户登录</h2>
    <div>
        <form action="toLogin" method="post" class="form">
            <table>
                <tr>
                    <td>
                        用户名&nbsp;&nbsp;
                    </td>
                    <td>
                        <input type="text" name="username">
                    </td>
                </tr>
                <tr>
                    <td>
                        密&nbsp;&nbsp;码&nbsp;&nbsp;
                    </td>
                    <td>
                        <input type="password" name="pwd">
                    </td>
                </tr>
                <tr>
                    <td>
                        两周内免登录？
                    </td>
                    <td>
                        <input type="radio" name="saveLoginState" value="1" checked="checked">是
                        <input type="radio" name="saveLoginState" value="0">否
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-left: 70px">
                        <input type="submit" value="登录">
                        <input type="reset" value="重置">
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div class="form"><a href="register.jsp">还没注册？点这里</a></div>

</div>
<%
    }
%>
</body>
</html>