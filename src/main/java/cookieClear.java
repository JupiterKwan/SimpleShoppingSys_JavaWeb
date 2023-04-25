import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/toLogout")
public class cookieClear extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie cookie1 = new Cookie("username", null);
        cookie1.setMaxAge(0);
        resp.addCookie(cookie1);
        Cookie cookie2 = new Cookie("pwd", null);
        cookie2.setMaxAge(0);
        resp.addCookie(cookie2);
        resp.sendRedirect("login.jsp");
    }
}
