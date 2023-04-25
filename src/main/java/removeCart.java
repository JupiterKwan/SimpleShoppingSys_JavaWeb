import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

@WebServlet("/toRemoveGoods")
public class removeCart extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        PrintWriter writer = resp.getWriter();
        writer.println("<html>");
        writer.println("<body>");
        HttpSession session = req.getSession();
        String[] items = req.getParameterValues("item_checked");
        for(String item : items) {
            session.removeAttribute(item);
        }
        writer.println("<h1>删除后的购物车商品");
        Enumeration<String> e = session.getAttributeNames();
        while(e.hasMoreElements()){
            String name = (String) e.nextElement();
            writer.println("<br>" + session.getAttribute(name));
        }
        writer.println("</body></html>");
    }
}
