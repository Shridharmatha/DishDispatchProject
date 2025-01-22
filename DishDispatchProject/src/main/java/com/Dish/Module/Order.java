package com.Dish.Module;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.http.HttpSession;

public class Order {
private Connection con;
	
	HttpSession se;
	
	public Order(HttpSession session)
	{
		
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dish", "root","tiger");
				se=session;
				
			} catch (ClassNotFoundException | SQLException e) {
			
				e.printStackTrace();
			}
			
		
	}
	public String insertorder(int o_id, String o_img, String c_id, String o_item, double o_price, int qty,
			String status,String o_type, String o_date) 
	{
		PreparedStatement ps=null;
		String status1="";
		String query="insert into orders values(0,?,?,?,?,?,?,?,sysdate())";
		try {
			con.setAutoCommit(false);
			ps=con.prepareStatement(query);
			ps.setString(1,o_img);
			ps.setString(2, c_id);
			ps.setString(3, o_item);
			ps.setDouble(4, o_price);
			ps.setInt(5, qty);
			ps.setString(6, status);
			ps.setString(7, o_type);
			int res=ps.executeUpdate();
			if(res>0)
			{
				status1="success";
				try {
					con.setAutoCommit(true);
				}catch(SQLException e)
				{
					e.printStackTrace();
				}
			}else {
				status1="failed";
				try {
					con.rollback();
					
				}catch(SQLException e)
				{
					e.printStackTrace();
				}
			}
			
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		return status1;
		
	}
	
	public String updateorder(int o_id, String o_img, String c_id, String o_item, double o_price, int qty,
			String status,String o_type, String o_date) 
	{
		PreparedStatement ps=null;
		String status1="";
		String query="UPDATE orders SET o_img = ?, c_id = ?, o_item = ?, o_price = ?, qty = ?, status = ?, o_type = ? WHERE o_id = ?";
		try {
			con.setAutoCommit(false);
			ps=con.prepareStatement(query);
			ps.setString(1,o_img);
			ps.setString(2, c_id);
			ps.setString(3, o_item);
			ps.setDouble(4, o_price);
			ps.setInt(5, qty);
			ps.setString(6, status);
			ps.setString(7, o_type);
			ps.setInt(8, o_id);
			int res=ps.executeUpdate();
			if(res>0)
			{
				status1="success";
				try {
					con.setAutoCommit(true);
				}catch(SQLException e)
				{
					e.printStackTrace();
				}
			}else {
				status1="failed";
				try {
					con.rollback();
					
				}catch(SQLException e)
				{
					e.printStackTrace();
				}
			}
			
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		return status1;
		
	}
	
	public String deleteOrder(int o_id) {
	    PreparedStatement ps = null;
	    String status1 = "";
	    String query = "DELETE FROM orders WHERE o_id = ?";
	    try {
	        con.setAutoCommit(false);
	        ps = con.prepareStatement(query);
	        ps.setInt(1, o_id); 
	        int res = ps.executeUpdate();
	        if (res > 0) {
	            status1 = "success";
	            con.commit();
	        } else {
	            status1 = "failed";
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
	    return status1;
	}


}
