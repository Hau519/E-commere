package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.entities.Customer;
import models.managers.CustomerManager;


import java.io.IOException;

@WebServlet(name = "RegisterController", value = "/register")
public class RegisterController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.getRequestDispatcher("WEB-INF/register.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try{
            String fName = request.getParameter("fName");
            String lName = request.getParameter("lName");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            Customer customer = new Customer(fName, lName, phone, password, email);
            CustomerManager.insertNewCustomer(customer);
            request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
        } catch(Exception ex){
            ex.printStackTrace();
        }

        //request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);


//        if(request.getParameter("register")!=null) {
//            String fName = request.getParameter("fName");
//            String lName = request.getParameter("lName");
//            String phone = request.getParameter("phone");
//            String email = request.getParameter("email");
//            String password = request.getParameter("password");
//
//            Customer customer = new Customer(fName, lName, phone, password, email);
//            customer.setFirstName(fName);
//            customer.setLastName(lName);
//            customer.setPhone(phone);
//            customer.setEmail(email);
//            customer.setPassword(password);
//
//            RegisterManager registerManager = new RegisterManager();
//
//            String userRegistered = registerManager.registerUser(customer);
//
//            if (userRegistered.equals("Success")) {
//                request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
//            } else {
//                request.setAttribute("errMessage", userRegistered);
//                request.getRequestDispatcher("WEB-INF/register.jsp").forward(request, response);
//            }
//        }
    }
}
