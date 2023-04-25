<%--
  Created by IntelliJ IDEA.
  User: David Kwan
  Date: 2023/4/25
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TMALL&nbsp;2</title>
</head>
<body>
<p>选择您需要的商品添加到购物车</p>
<form action="toAddCart" method="post" name="form">
    <table>
        <th>商品类别</th><th>购买数量</th>
        <tr>
            <td>
                <select name="item_others" value="未选择">
                    <option value="phone">手机</option>
                    <option value="computer">电脑</option>
                    <option value="chair">椅子</option>
                    <option value="chopsticks">筷子</option>
                    <option value="noodle">面条</option>
                </select>
            </td>
            <td><input type="number" name="mount_clothes" min="0" max="100"></td>
        </tr>
    </table>
    <input type="submit" value="添加提交">
    <input type="reset" value="重置">
</form>
<hr />
<a href="shopPage1.jsp">上一页</a>
<a href="remove.jsp">删除商品</a>
</body>
</html>
