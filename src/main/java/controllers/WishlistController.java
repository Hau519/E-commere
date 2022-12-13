package controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.entities.Customer;
import models.entities.Products;
import models.entities.Wishlist;
import models.managers.ProductManager;
import models.managers.WishlistManager;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "WishlistController", value = "/wishlist")
public class WishlistController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if(session.getAttribute("userLogin")==null){
            session.setAttribute("loginRequireError", "true");
            request.getRequestDispatcher("WEB-INF/product.jsp").forward(request,response);
        }else {
            if (request.getParameter("id") != null) {
                int id = Integer.parseInt(request.getParameter("id"));
                Products product = ProductManager.getProductById(id);
                Customer user = (Customer) session.getAttribute("userLogin");
                Wishlist newWishlist = new Wishlist(product.getName(), product.getPrice(), product.getUnit(), user.getId(), product.getId());
                WishlistManager.insertNewWishlist(newWishlist);

            }
            request.getRequestDispatcher("WEB-INF/profile.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
