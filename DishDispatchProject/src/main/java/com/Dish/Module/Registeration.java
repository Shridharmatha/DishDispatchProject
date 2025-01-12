package com.Dish.Module;

import java.sql.Connection;

import org.apache.catalina.mbeans.ClassNameMBean;

import jakarta.servlet.http.HttpSession;

public class Registeration {
	private Connection con;
	
	HttpSession se;
	
	public Registeration(HttpSession session)
	{
		
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
	}

}
