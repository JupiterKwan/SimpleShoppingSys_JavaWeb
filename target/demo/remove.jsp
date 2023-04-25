<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: David Kwan
  Date: 2023/4/25
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除商品</title>
</head>
<body>
    <form action="toRemoveGoods" method="post">
        <table>
            <th>选择要删除的商品</th>
            <%
                Enumeration<String> e = session.getAttributeNames();
                while(e.hasMoreElements()) {
                    String item = (String) e.nextElement();
                    String info = (String) session.getAttribute(item);

            %>
            <tr>
                <td><input type="checkbox" name="item_checked" value=<%= item%>><%= info%>></td>
            </tr>
            <%
                }
            %>
        </table>
        <input type="submit" value="提交删除">
        <input type="reset" value="清楚选择">
    </form>
</body>
</html>
