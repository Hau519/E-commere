package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServletFinishController", value = "/finish")
public class FinishController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.removeAttribute("cartList");
        if(session.getAttribute("userLogin")==null){
            request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
        }else if(session.getAttribute("newOrder")==null){
            request.getRequestDispatcher("WEB-INF/checkout.jsp").forward(request, response);
        }
        else {
            request.getRequestDispatcher("WEB-INF/finish.jsp").forward(request, response);
        }
    }


}
