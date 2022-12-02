package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.action.ProductAction;

import java.io.IOException;

@WebServlet(name = "ProductController", value = "/products")
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        session.setAttribute("productSearch", request.getParameter("name"));

        String productName = (String) session.getAttribute("productSearch");
        if (productName != null){
            ProductAction.getByName(request, productName);
        } else {
            ProductAction.getAll(request);
        }
        request.getRequestDispatcher("WEB-INF/product.jsp").forward(request,response);
    }



}
