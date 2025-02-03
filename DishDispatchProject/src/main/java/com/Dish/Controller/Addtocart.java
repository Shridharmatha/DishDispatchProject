package com.Dish.Controller;

import java.io.IOException;
import java.io.PrintWriter;


import com.Dish.Module.Registeration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "employee/addtocart", urlPatterns = {"/employee/addtocart"})

public class Addtocart extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	        HttpSession session = req.getSession();
	        Registeration reg = new Registeration(session);
	        try {
	            if (req.getParameter("addtocart") != null) {
	                String p_id = req.getParameter("fid");
	                int i_id=Integer.parseInt(p_id);
	               String qty = req.getParameter("qty");
	                String status = reg.addtocart(i_id,qty);
	                if (status.equals("success")) {
	                    RequestDispatcher rd1 = req.getRequestDispatcher("Cart.jsp");
	                    rd1.forward(req, resp);
	                }
	            }
	          
	          
	   else if (req.getParameter("delete") != null) {
	                int c_id = Integer.parseInt(req.getParameter("cid"));
	                int status = reg.deletecart(c_id);
	                if (status > 0) {
	                    RequestDispatcher rd1 = req.getRequestDispatcher("Cart.jsp");
	                    rd1.forward(req, resp);
	                }
	            }
	           
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	}
	
	
	


