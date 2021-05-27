import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServletDiscount", value = "/display-discount")
public class ServletDiscount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String product = request.getParameter("productSearch");
        float price = Float.parseFloat(request.getParameter("price"));
        float discount = Float.parseFloat(request.getParameter("discount"));

        double DiscountAmount = price * discount * 0.01;
        double finalPrice = price-DiscountAmount;

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />");
        writer.println("<h1>Ten san pham "+product+"</h1>");
        writer.println("<h1>Luong chiet khau "+DiscountAmount+"</h1>");
        writer.println("<h1>Gia sau khi giam "+finalPrice+"</h1>");
        writer.println("</html>");
    }
}
