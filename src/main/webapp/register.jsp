<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page session = "false" %>
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
            width: 50%;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            line-height: 50%;
            vertical-align: middle;
            display: flex;
            align-items: center;
            justify-content: center;
            line-height: 180%;
        }
    </style>
</head>
<body>
<div class="parent">
    <h2>用户注册</h2>
        <form action="toRegister" method="post">
            <table class="form">
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
                        确认密码&nbsp;&nbsp;
                    </td>
                    <td>
                        <input type="password" name="pwdAgain">
                    </td>
                </tr>
                <tr>
                    <td>
                        性&nbsp;&nbsp;别&nbsp;&nbsp;
                    </td>
                    <td>
                        <input type="radio" name="gender" value="man">男
                        <input type="radio" name="gender" value="woman">女
                    </td>
                </tr>
                <tr>
                    <td>
                        兴趣爱好&nbsp;&nbsp;
                    </td>
                    <td>
                        <input name="fav" type="checkbox" value="sing">唱歌
                        <input name="fav" type="checkbox" value="eat">吃货
                        <input name="fav" type="checkbox" value="sport">运动
                        <input name="fav" type="checkbox" value="game">游戏
                    </td>
                </tr>

                <tr>
                    <td colspan="2" text-align="center">
                        <input type="submit" value="注册">
                        <input type="reset" value="重置">
                    </td>
                </tr>
            </table>
        </form>
    <div class="parent"><a href="login.jsp">已经注册？点击登录</a></div>
</div>

</body>
</html>