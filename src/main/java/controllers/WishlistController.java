package controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.entities.Products;
import models.managers.ProductManager;

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
                ArrayList<Products> wishList = new ArrayList<>();

                if (session.getAttribute("wishList") == null) {
                    wishList.add(product);
                    session.setAttribute("wishList", wishList);
                } else {
                    wishList = (ArrayList<Products>) session.getAttribute("wishList");
                    boolean already = false;
                    for (Products itemInList : wishList) {
                        if (itemInList.getId() == id) {
                            already = true;
                            session.setAttribute("itemInList", true);
                        }
                    }
                    if (!already) {
                        wishList.add(product);
                    }
                    session.setAttribute("wishList", wishList);
                }
            }
            request.getRequestDispatcher("WEB-INF/profile.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
