package com.Dish.Controller;

import java.io.IOException;

import com.Dish.Module.Registeration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "employee/sign", urlPatterns = { "/employee/sign" })
public class register extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession(); 
        Registeration reg = new Registeration(session); 

        if (req.getParameter("register") != null) {
            String name = req.getParameter("name");
            String phone = req.getParameter("number");
            String email = req.getParameter("email");
            String password = req.getParameter("pin");
            String cpassword = req.getParameter("conpin");

            if (password.equals(cpassword)) {
                String status = reg.ERegister(name, phone, email, password);
                if (status.equals("Existed")) {
                    req.setAttribute("Existed", "Data Existed");
                    RequestDispatcher rd = req.getRequestDispatcher("JoinUs.jsp");
                    rd.forward(req, resp);
                } else if (status.equals("success")) {
                    req.setAttribute("success", "Registration Successful");
                    RequestDispatcher rd = req.getRequestDispatcher("JoinUs.jsp");
                    rd.forward(req, resp);
                } else if (status.equals("failed")) {
                    req.setAttribute("failed", "Registration Failed!");
                    RequestDispatcher rd = req.getRequestDispatcher("JoinUs.jsp");
                    rd.forward(req, resp);
                }
            } else {
                req.setAttribute("failed", "Passwords do not match!");
                RequestDispatcher rd = req.getRequestDispatcher("JoinUs.jsp");
                rd.forward(req, resp);
            }
        } 
        else if (req.getParameter("login") != null) { 
            String email = req.getParameter("email");
            String password = req.getParameter("password");
            String status = reg.login(email, password);

            if (status.equals("success")) {
                req.setAttribute("success", "Login Successful");
                System.out.println("Login successful for email: " + email); 
                RequestDispatcher rd = req.getRequestDispatcher("dashbord2.jsp"); 
                rd.forward(req, resp);
            } else {
                req.setAttribute("failed", "Invalid credentials");
                System.out.println("Login failed for email: " + email); 
                RequestDispatcher rd = req.getRequestDispatcher("JoinUs1.jsp");
                rd.forward(req, resp);
            }
        }
        else if(req.getParameter("forget")!=null)
        {
        	 String email = req.getParameter("email");
        	 String password = req.getParameter("pin");
             String cpassword = req.getParameter("cpin");
             if(password.equals(cpassword))
             {
            	 String status = reg.updatepass(email, password);
            	 if (status.equals("success")) {
                     req.setAttribute("success", "Login Successful");
                     RequestDispatcher rd = req.getRequestDispatcher("JoinUs1.jsp"); 
                     rd.forward(req, resp);
                 } else {
                     req.setAttribute("failed", "Invalid credentials");
                     RequestDispatcher rd = req.getRequestDispatcher("Forgotpass.jsp");
                     rd.forward(req, resp);
                 }

             }
             
        }
        else if(req.getParameter("order")!=null)
        {
        	String address=req.getParameter("address");
        	String pincode=req.getParameter("pin");
        	String city=req.getParameter("city");
        	String state=req.getParameter("state");
        	
        	String status=reg.insertorder(address,pincode,city,state); 
       	 if (status.equals("success")) {
                req.setAttribute("success", "order Successful");
                RequestDispatcher rd = req.getRequestDispatcher("OrderList.jsp"); 
                rd.forward(req, resp);
            } else {
                req.setAttribute("failed", "Invalid credentials");
                RequestDispatcher rd = req.getRequestDispatcher("BuyNow.jsp");
                rd.forward(req, resp);
            }
        }
        
        else if (req.getParameter("delete") != null) {
            int e_id = Integer.parseInt(req.getParameter("userid"));
            String status = reg.deleteEmployee(e_id);
            if (status.equals("success")) {
            	req.setAttribute("success", "Deleted Successful");
                RequestDispatcher rd1 = req.getRequestDispatcher("Elist.jsp");
                rd1.forward(req, resp);
            }else if(status.equals("failed")) {
            	req.setAttribute("success", "failed to Successful");
                RequestDispatcher rd1 = req.getRequestDispatcher("Elist.jsp");
                rd1.forward(req, resp);
        }
        }


        }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession(false); 
        //Registeration reg = new Registeration(session); 
        
        if(req.getParameter("logout")!=null)
        {
        	session.invalidate();
        	 req.setAttribute("success", "Logout Successful");
             RequestDispatcher rd = req.getRequestDispatcher("JoinUs1.jsp"); 
             rd.forward(req, resp);
        }
        
        
    	
    }
    }

