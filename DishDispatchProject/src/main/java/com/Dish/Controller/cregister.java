package com.Dish.Controller;

import java.io.IOException;

import com.Dish.Module.CustRegistration;
import com.Dish.Module.Registeration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet(name = "customer/CSignup", urlPatterns = { "/customer/CSignup" })
public class cregister extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession(); 
        CustRegistration reg = new CustRegistration(session); 

        if (req.getParameter("register") != null) {
            String name = req.getParameter("name");
            String phone = req.getParameter("number");
            String email = req.getParameter("email");
            String password = req.getParameter("pin");
            String cpassword = req.getParameter("conpin");

            if (password.equals(cpassword)) {
                String status = reg.CRegister(name, phone, email, password);
                if (status.equals("Existed")) {
                    req.setAttribute("Existed", "Data Existed");
                    RequestDispatcher rd = req.getRequestDispatcher("Signup.jsp");
                    rd.forward(req, resp);
                } else if (status.equals("success")) {
                    req.setAttribute("success", "Registration Successful");
                    RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
                    rd.forward(req, resp);
                } else if (status.equals("failed")) {
                    req.setAttribute("failed", "Registration Failed!");
                    RequestDispatcher rd = req.getRequestDispatcher("Signup.jsp");
                    rd.forward(req, resp);
                }
            } else {
                req.setAttribute("failed", "Passwords do not match!");
                RequestDispatcher rd = req.getRequestDispatcher("Signup.jsp.jsp");
                rd.forward(req, resp);
            }
        } 
        else if (req.getParameter("Login") != null) { 
            String email = req.getParameter("email");
            String password = req.getParameter("password");
            String status = reg.login(email, password);

            if (status.equals("success")) {
                req.setAttribute("success", "Login Successful");
                System.out.println("Login successful for email: " + email); 
                RequestDispatcher rd = req.getRequestDispatcher("Login.jsp"); 
                rd.forward(req, resp);
            } else {
                req.setAttribute("failed", "Invalid credentials");
                System.out.println("Login failed for email: " + email); 
                RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
                rd.forward(req, resp);
            }
        }


        }

}
