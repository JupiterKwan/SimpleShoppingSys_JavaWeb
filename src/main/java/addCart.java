import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

@WebServlet("/toAddCart")
public class addCart extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");
        PrintWriter writer = resp.getWriter();
        writer.println("<!DOCTYPE html>");
        writer.println("<html>");
        writer.println("<body>");
        HttpSession session = req.getSession();
        String item_foods = req.getParameter("item_foods");
        String mount_foods = req.getParameter("mount_foods");
        String item_stationery = req.getParameter("item_stationery");
        String mount_stationery = req.getParameter("mount_stationery");
        String item_clothes = req.getParameter("item_clothes");
        String mount_clothes = req.getParameter("mount_clothes");
        String item_others = req.getParameter("item_others");
        String mount_others = req.getParameter("mount_others");
        String prnStr = "";
        if(mount_foods != null && Integer.parseInt(mount_foods) > 0){
            prnStr = item_foods + ": " + mount_foods;
            session.setAttribute(item_foods, prnStr);
        }
        if(mount_stationery != null && Integer.parseInt(mount_stationery) > 0){
            prnStr = item_stationery + ": " + mount_stationery;
            session.setAttribute(item_stationery, prnStr);
        }
        if(mount_clothes != null && Integer.parseInt(mount_clothes) > 0){
            prnStr = item_clothes + ": " + mount_clothes;
            session.setAttribute(mount_clothes, prnStr);
        }
        if(mount_others != null && Integer.parseInt(mount_others) > 0){
            prnStr = item_others + ": " + mount_others;
            session.setAttribute(mount_others, prnStr);
        }

        writer.println("购物车商品：");
        Enumeration<String> e = session.getAttributeNames();
        while(e.hasMoreElements()){
            String item = (String) e.nextElement();
            writer.println("<br>" + session.getAttribute(item));
        }
        writer.println("</body>");
        writer.println("</html>");
    }
}
