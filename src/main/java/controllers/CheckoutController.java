package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.entities.Customer;
import models.entities.Order;
import models.entities.ShoppingCart;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "CheckoutController", value = "/checkout")
public class CheckoutController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList<ShoppingCart> cartList = (ArrayList<ShoppingCart>) session.getAttribute("cartList");
        Customer user = (Customer) session.getAttribute("userLogin");
        ArrayList<Order> orders = new ArrayList<>();
        try{
            float total = Float.parseFloat(request.getParameter("total"));
            String orderNumber = Integer.toString(user.getId()) + Integer.toString((int) total);
            Order order = new Order(orderNumber, cartList, user.getId(), total);
            session.setAttribute("newOrder", order);
            orders.add(order);
            session.setAttribute(Integer.toString(user.getId()), orders);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        request.getRequestDispatcher("WEB-INF/checkout.jsp").forward(request, response);

    }
}
