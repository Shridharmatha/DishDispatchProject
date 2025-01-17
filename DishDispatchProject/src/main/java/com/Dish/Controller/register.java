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
@WebServlet(name="employee/Signup",urlPatterns= {"/employee/Signup"})
public class register extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		HttpSession session=req.getSession(false);
		Registeration reg=new Registeration(session);
		
		
		if(req.getParameter("register") !=null)
		{
			String name=req.getParameter("name");
			String phone=req.getParameter("number");
			String email=req.getParameter("email");
			String password=req.getParameter("pin");
			String cpassword=req.getParameter("conpin");
			
			if(password.equals(cpassword))
			{
				String status=reg.ERegister( name, phone, email, password );
				if(status.equals("Existed"))
				{
					req.setAttribute("Existed", "Data Existed");
					RequestDispatcher rd=req.getRequestDispatcher("Signup.jsp");
					rd.forward(req, resp);
				}
				else if(status.equals("success"))
				{
					req.setAttribute("success", "Registeration Successfull");
					RequestDispatcher rd=req.getRequestDispatcher("Signup.jsp");
					rd.forward(req, resp);
				}else if(status.equals("failed")){
					req.setAttribute("failed", "Registeration Failed !");
					RequestDispatcher rd=req.getRequestDispatcher("Signup.jsp");
					rd.forward(req, resp);
				}

			}else if(req.getParameter("login")!=null)
			{
				String Email=req.getParameter("email");
				String pass=req.getParameter("pass");
				
				//String sessionmail=(String)session.getAttribute("Email");
					String status=reg.Login(Email, pass, session);
					if(status.equals("success"))
					{
						req.setAttribute("success", "Registeration Successfull");
						RequestDispatcher rd=req.getRequestDispatcher("employee/dashbord2.jsp");
						rd.forward(req, resp);
					}else if(status.equals("failed")){
						req.setAttribute("failed", "Registeration Failed !");
						RequestDispatcher rd=req.getRequestDispatcher("Login.jsp");
						rd.forward(req, resp);
					}
			}
		}
		
	}

}
