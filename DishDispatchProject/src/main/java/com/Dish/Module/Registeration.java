package com.Dish.Module;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import jakarta.servlet.http.HttpSession;

public class Registeration {
	private Connection con;
	
	HttpSession se;
	
	public Registeration(HttpSession session)
	{
		
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dish", "root","tiger");
				se=session;
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
	}
	public String ERegister(String name,String phone,String email,String pass )
	{
		PreparedStatement ps=null;
		String status="";
		String query= "select * from employee where email='" + email + "' and epassword='" + pass + "'";

		try {
			Statement st=null;
			ResultSet rs=null;
			st=con.createStatement();
			rs=st.executeQuery(query);
			boolean res=rs.next();
			if(res)
			{
				status="Existed";
			}else {
				con.setAutoCommit(false);
				ps = con.prepareStatement("INSERT INTO Employee (eid, ename, ephone, email, epassword, date) VALUES (0, ?, ?, ?, ?, Sysdate())");

				ps.setString(1,name);
				ps.setString(2, phone);
				ps.setString(3, email);
				ps.setString(4, pass);
				int res1=ps.executeUpdate();
				if(res1>0)
				{
					status="success";
					try {
						con.setAutoCommit(true);
						
					}catch(SQLException e)
					{
						e.printStackTrace();
					}
				}else {
					status="failed";
					try {
						con.rollback();
						
					}catch(SQLException e)
					{
						e.printStackTrace();
					}
				}
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return status;
		
	}
	
	public String login(String email, String password) {
	    String status = "";
	    try {
	    	String query = "SELECT * FROM employee WHERE email = ? AND epassword = ?";

	        try (PreparedStatement ps = con.prepareStatement(query)) {
	            ps.setString(1, email);
	            ps.setString(2, password);
	            ResultSet rs = ps.executeQuery();
	            
	            boolean s=(rs.next()) ;
	                // If login is successful, set session attributes
	                se.setAttribute("uname", rs.getString("ename"));
	                se.setAttribute("email", rs.getString("email"));
	                se.setAttribute("eid", rs.getInt("eid"));
	               
	                if(s){
	                	 status = "success";
	                }else {
	                	  status = "failed";
	                }
	            
	              
	            
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        status = "failed"; // Ensure failure is returned on exception
	    }
	    return status;
	}

}
