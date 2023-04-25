import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/toLogin")
public class cookieProcess extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        String name = req.getParameter("username");
        String pwd = req.getParameter("pwd");
        String saveLoginState = req.getParameter("saveLoginState");
        if (name != null && !(name.equals("")) && pwd != null && !(pwd.equals(""))) {
            if (saveLoginState != null && saveLoginState.equals("1")) {
                Cookie cookie1 = new Cookie("username", name);
                cookie1.setMaxAge(1209600);
                resp.addCookie(cookie1);
                Cookie cookie2 = new Cookie("pwd", pwd);
                cookie2.setMaxAge(1209600);
                resp.addCookie(cookie2);
            } else {
                Cookie cookie1 = new Cookie("username", null);
                cookie1.setMaxAge(0);
                resp.addCookie(cookie1);
                Cookie cookie2 = new Cookie("pwd", null);
                cookie2.setMaxAge(0);
                resp.addCookie(cookie2);
            }
            resp.getWriter().println(name + ":" + pwd);
            PrintWriter writer = resp.getWriter();
            writer.print("<a href=\"shopPage1.jsp\"><button type=\"submit\">前往购物商城</button></a>");
            writer.print("<a href=\"login.jsp\">点击返回登录界面</a>");
        } else {
            resp.sendRedirect("login.jsp");
        }
    }
}
