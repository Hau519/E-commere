package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.entities.Customer;
import models.managers.CustomerManager;

import java.io.IOException;

@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("message", "message from servlet");
        request.setAttribute("username", "Customer");
        request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
    }
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            try{
                String email = request.getParameter("email");
                String password = request.getParameter("password");

                Customer customer = new Customer(email, password);
                CustomerManager.getUserLogin(customer);

                request.getRequestDispatcher("WEB-INF/home.jsp").forward(request, response);
            } catch(Exception ex){
                ex.printStackTrace();
            }
        }
}
