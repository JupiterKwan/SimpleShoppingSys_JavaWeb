import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

@WebServlet("/toRegister")
public class regis_showInfo extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        String name = req.getParameter("username");
        String pwd = req.getParameter("pwd");
        String pwdAgain = req.getParameter("pwdAgain");
        if (!pwd.equals(pwdAgain)) {
            resp.getWriter().print("<script language='javascript'>alert('密码设置不一致！');window.location.href='register.jsp';</script>");
        }
        String gender = req.getParameter("gender");
        String[] fav = req.getParameterValues("fav");
        PrintWriter writer = resp.getWriter();
        writer.print("<html><body>");
        writer.print("<br>表单提交到Servlet的数据如下：<br>");
        writer.print("姓名：" + name + "<br>");
        writer.print("密码：" + pwd + "<br>");
        writer.print("性别：" + gender + "<br>");
        writer.print("爱好：" + Arrays.asList(fav) + "<br>");
        writer.print("</body></html>");
        writer.print("<a href=\"login.jsp\">点击返回登录界面</a>");
    }
}
