package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.entities.Products;
import models.entities.ShoppingCart;
import models.managers.WishlistManager;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "RemoveController", value = "/Remove")
public class RemoveController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList<ShoppingCart> cartList = (ArrayList<ShoppingCart>) session.getAttribute("cartList");

        if(request.getParameter("action")!=null){
            int id= Integer.parseInt(request.getParameter("id"));
            WishlistManager.deleteWishlist(id);
            request.getRequestDispatcher("WEB-INF/profile.jsp").forward(request, response);
        }
        else {
            int index= Integer.parseInt(request.getParameter("index"));
            if(cartList!=null) {
                cartList.remove(index);
            }
        }
        request.getRequestDispatcher("WEB-INF/shoppingCart.jsp").forward(request, response);
    }

}
