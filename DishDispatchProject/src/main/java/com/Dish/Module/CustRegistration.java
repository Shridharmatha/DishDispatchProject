package com.Dish.Module;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.http.HttpSession;

public class CustRegistration {
	private Connection con;
	HttpSession se;
	
	public CustRegistration(HttpSession session)
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dish", "root", "tiger");
			se=session;
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
	}
	public String CRegister(String cname,String cemail,String phone,String password )
	{
		PreparedStatement ps=null;
		String status="";
		String query= "select * from customer where cemail='" + cemail + "' and password='" + password + "'";

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
				ps = con.prepareStatement("INSERT INTO customer (cid, cname, cemail, phone, password, datetime) VALUES (0,?,?,?,?,sysdate())");


				ps.setString(1,cname);
				ps.setString(2, cemail);
				ps.setString(3, phone);
				ps.setString(4, password);
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
	
	public String login(String cemail, String password) {
	    String status = "";
	    try {
	    	String query = "SELECT * FROM customer WHERE cemail = ? AND password = ?";

	        try (PreparedStatement ps = con.prepareStatement(query)) {
	            ps.setString(1, cemail);
	            ps.setString(2, password);
	            ResultSet rs = ps.executeQuery();
	            
	            boolean s=(rs.next()) ;
	               
	                se.setAttribute("uname", rs.getString("cname"));
	                se.setAttribute("email", rs.getString("cemail"));
	                se.setAttribute("cid", rs.getInt("cid"));
	               
	                if(s){
	                	 status = "success";
	                }else {
	                	  status = "failed";
	                }
	            
	              
	            
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        status = "failed"; 
	    }
	    return status;
	}
	
	public String update(String name,String email,String phone) {
		Statement st = null;
		String status="";	
		try {
			st=con.createStatement();
			st.executeUpdate("update customer set cname='"+name+"',cemail='"+email+"',phone='"+phone+"'where eid='"+se.getAttribute("cid")+"';");
			status="success";
		} catch (SQLException e) {
			
			status="failed";
			e.printStackTrace();
		}
		return status;
	}
	
	public String deleteEmployee(int eid) {
	    PreparedStatement ps = null;
	    String status = "";
	    String query = "DELETE FROM Employee WHERE eid = ?";
	    try {	     
	        con.setAutoCommit(false);	    
	        ps = con.prepareStatement(query);
	        ps.setInt(1, eid); 	     
	        int res = ps.executeUpdate();	     
	        if (res > 0) {
	            status = "success";
	            con.commit();
	        } else {
	            status = "failed";
	            con.rollback(); 
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        try {
	            con.rollback(); 
	        } catch (SQLException ex) {
	            ex.printStackTrace();
	        }
	    } 

	    return status;
	}
	

}
