package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.entities.ShoppingCart;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "RemoveController", value = "/Remove")
public class RemoveController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList<ShoppingCart> cartList = (ArrayList<ShoppingCart>) session.getAttribute("cartList");
        if(cartList!=null) {
            int index= Integer.parseInt(request.getParameter("index"));
            cartList.remove(index);
        }
        request.getRequestDispatcher("WEB-INF/shoppingCart.jsp").forward(request, response);
    }

}
