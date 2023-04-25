<%--
  Created by IntelliJ IDEA.
  User: David Kwan
  Date: 2023/4/25
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TMALL&nbsp;1</title>
</head>
<body>
    <p>选择您需要的商品添加到购物车</p>
    <form action="toAddCart" method="post" name="form">
        <table>
            <th>商品类别</th><th>购买数量</th>
            <tr>
                <td>
                    <select name="item_foods" value="未选择">
                        <option value="bread">面包</option>
                        <option value="apple">苹果</option>
                        <option value="coke">可乐</option>
                        <option value="milk">牛奶</option>
                        <option value="biscuit">饼干</option>
                    </select>
                </td>
                <td><input type="number" name="mount_foods" min="0" max="100"></td>
            </tr>
            <tr>
                <td>
                    <select name="item_stationery" value="未选择">
                        <option value="pencil">铅笔</option>
                        <option value="pen">签字笔</option>
                        <option value="paper">白纸</option>
                        <option value="rubber">橡皮</option>
                        <option value="ink">墨水</option>
                    </select>
                </td>
                <td><input type="number" name="mount_stationery" min="0" max="100"></td>
            </tr>
            <tr>
                <td>
                    <select name="item_clothes" value="未选择">
                        <option value="tshirt">T恤</option>
                        <option value="shoes">靴子</option>
                        <option value="sock">袜子</option>
                        <option value="hat">帽子</option>
                        <option value="shirt">衬衫</option>
                    </select>
                </td>
                <td><input type="number" name="mount_clothes" min="0" max="100"></td>
            </tr>
        </table>
        <input type="submit" value="添加提交">
        <input type="reset" value="重置">
    </form>
    <hr />
    <a href="shopPage2.jsp">下一页</a>
    <a href="remove.jsp">删除商品</a>
</body>
</html>
