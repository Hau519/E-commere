package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "HomeController", value = "/home")
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //logic part

        HttpSession session = request.getSession();
        session.setAttribute("username", "Customer");
        request.setAttribute("message", "message from servlet");
        request.getRequestDispatcher("WEB-INF/home.jsp").forward(request, response);
    }


}
