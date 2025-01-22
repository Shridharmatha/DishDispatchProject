package com.Dish.Controller;

import java.io.IOException;


import com.Dish.Module.Registeration;

import jakarta.servlet.Registration;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet(name = "employee/Signup", urlPatterns = { "/employee/Signup" })
public class insertitem extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

        HttpSession session = req.getSession(); 
        Registeration reg = new Registeration(session); 
        
        if(req.getParameter("insertitem")!=null)
        {
        	 String Item=req.getParameter("item");
        	 String Price=req.getParameter("Price");
        	 double price=Double.parseDouble(Price);
        	 String Type=req.getParameter("type");
        	 String Image=req.getParameter("image");
        	 
        	 String status=reg.insertfood(Item, price, Type, Image);
        	 if(status.equals("success"))
        	 {
        		 req.setAttribute("success", "item added Successful");
                 RequestDispatcher rd = req.getRequestDispatcher("insertitem.jsp");
                 rd.forward(req, resp);
        	 }else if(status.equals("failed"))
        	 {
        		 req.setAttribute("failed", "item failed to add");
                 RequestDispatcher rd = req.getRequestDispatcher("insertitem.jsp");
                 rd.forward(req, resp);
        	 }
        }
       
	}

}
