package com.Dish.Module;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



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
	        status = "failed"; 
	    }
	    return status;
	}
	
	public String update(String name,String email,String phone) {
		Statement st = null;
		String status="";	
		try {
			st=con.createStatement();
			st.executeUpdate("update employee set ename='"+name+"',email='"+email+"',ephone='"+phone+"'where eid='"+se.getAttribute("eid")+"';");
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
	
	public ArrayList<Employee> getEmployees() {
	    PreparedStatement ps = null;
	    ArrayList<Employee> employees = new ArrayList<Employee>();
	    ResultSet rs = null;
	    Employee e = null;
	    String query = "SELECT * FROM Employee ";
	    try {
	        ps = con.prepareStatement(query);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	            e = new Employee();
	            e.setEid(rs.getInt(1));
	            e.setName(rs.getString(2));
	            e.setPhone(rs.getString(3));
	            e.setEmail(rs.getString(4));
	            e.setPassword(rs.getString(5));
	            e.setDate(rs.getString(6));
	            employees.add(e);
	        }
	    } catch (SQLException ex) {
	        ex.printStackTrace();
	    }
	    return employees;
	}



	
	public String insertfood(String i_name,double i_price,String i_type,String img) 
	{
		PreparedStatement ps=null;
		String status="";
		String query="insert into food values(0,?,?,?,?)";
		try {
			con.setAutoCommit(false);
			ps=con.prepareStatement(query);
			ps.setString(1,i_name);
			ps.setDouble(2, i_price);
			ps.setString(3, i_type);
			ps.setString(4, img);
			int res=ps.executeUpdate();
			if(res>0)
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
			
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		return status;
		
	}
	
	
	public ArrayList<food> getFood() {
	    PreparedStatement ps = null;
	    ArrayList<food> f1 = new ArrayList<food>();
	    ResultSet rs = null;
	    food f = null;
	    String query = "SELECT * FROM food WHERE i_type = 'Bakery'";
	    try {
	        ps = con.prepareStatement(query);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	            f = new food();
	            f.setI_id(rs.getInt(1));
	            f.setI_name(rs.getString(2));
	            f.setI_price(rs.getDouble(3));
	            f.setI_type(rs.getString(4));
	            f.setImg(rs.getString(5));   
	            f1.add(f);
	        }
	    } catch (SQLException ex) {
	        ex.printStackTrace();
	    }
	    return f1;
	}
	
	public ArrayList<food> getBurger() {
	    PreparedStatement ps = null;
	    ArrayList<food> f1 = new ArrayList<food>();
	    ResultSet rs = null;
	    food f = null;
	    String query = "SELECT * FROM food WHERE i_type = 'Burger'";
	    try {
	        ps = con.prepareStatement(query);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	            f = new food();
	            f.setI_id(rs.getInt(1));
	            f.setI_name(rs.getString(2));
	            f.setI_price(rs.getDouble(3));
	            f.setI_type(rs.getString(4));
	            f.setImg(rs.getString(5));   
	            f1.add(f);
	        }
	    } catch (SQLException ex) {
	        ex.printStackTrace();
	    }
	    return f1;
	}
	
	public ArrayList<food> getBeverage() {
	    PreparedStatement ps = null;
	    ArrayList<food> f1 = new ArrayList<food>();
	    ResultSet rs = null;
	    food f = null;
	    String query = "SELECT * FROM food WHERE i_type = 'Beverage'";
	    try {
	        ps = con.prepareStatement(query);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	            f = new food();
	            f.setI_id(rs.getInt(1));
	            f.setI_name(rs.getString(2));
	            f.setI_price(rs.getDouble(3));
	            f.setI_type(rs.getString(4));
	            f.setImg(rs.getString(5));   
	            f1.add(f);
	        }
	    } catch (SQLException ex) {
	        ex.printStackTrace();
	    }
	    return f1;
	}
	
	public ArrayList<food> getChicken() {
	    PreparedStatement ps = null;
	    ArrayList<food> f1 = new ArrayList<food>();
	    ResultSet rs = null;
	    food f = null;
	    String query = "SELECT * FROM food WHERE i_type = 'Chicken'";
	    try {
	        ps = con.prepareStatement(query);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	            f = new food();
	            f.setI_id(rs.getInt(1));
	            f.setI_name(rs.getString(2));
	            f.setI_price(rs.getDouble(3));
	            f.setI_type(rs.getString(4));
	            f.setImg(rs.getString(5));   
	            f1.add(f);
	        }
	    } catch (SQLException ex) {
	        ex.printStackTrace();
	    }
	    return f1;
	}
	
	public ArrayList<food> getPizza() {
	    PreparedStatement ps = null;
	    ArrayList<food> f1 = new ArrayList<food>();
	    ResultSet rs = null;
	    food f = null;
	    String query = "SELECT * FROM food WHERE i_type = 'Pizza'";
	    try {
	        ps = con.prepareStatement(query);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	            f = new food();
	            f.setI_id(rs.getInt(1));
	            f.setI_name(rs.getString(2));
	            f.setI_price(rs.getDouble(3));
	            f.setI_type(rs.getString(4));
	            f.setImg(rs.getString(5));   
	            f1.add(f);
	        }
	    } catch (SQLException ex) {
	        ex.printStackTrace();
	    }
	    return f1;
	}
	
	public ArrayList<food> getSeafood() {
	    PreparedStatement ps = null;
	    ArrayList<food> f1 = new ArrayList<food>();
	    ResultSet rs = null;
	    food f = null;
	    String query = "SELECT * FROM food WHERE i_type = 'Seafood'";
	    try {
	        ps = con.prepareStatement(query);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	            f = new food();
	            f.setI_id(rs.getInt(1));
	            f.setI_name(rs.getString(2));
	            f.setI_price(rs.getDouble(3));
	            f.setI_type(rs.getString(4));
	            f.setImg(rs.getString(5));   
	            f1.add(f);
	        }
	    } catch (SQLException ex) {
	        ex.printStackTrace();
	    }
	    return f1;
	}
	
	public ArrayList<food> getVeg() {
	    PreparedStatement ps = null;
	    ArrayList<food> f1 = new ArrayList<food>();
	    ResultSet rs = null;
	    food f = null;
	    String query = "SELECT * FROM food WHERE i_type = 'veg'";
	    try {
	        ps = con.prepareStatement(query);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	            f = new food();
	            f.setI_id(rs.getInt(1));
	            f.setI_name(rs.getString(2));
	            f.setI_price(rs.getDouble(3));
	            f.setI_type(rs.getString(4));
	            f.setImg(rs.getString(5));   
	            f1.add(f);
	        }
	    } catch (SQLException ex) {
	        ex.printStackTrace();
	    }
	    return f1;
	}
	
	public ArrayList<food> getChat() {
	    PreparedStatement ps = null;
	    ArrayList<food> f1 = new ArrayList<food>();
	    ResultSet rs = null;
	    food f = null;
	    String query = "SELECT * FROM food WHERE i_type = 'chats'";
	    try {
	        ps = con.prepareStatement(query);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	            f = new food();
	            f.setI_id(rs.getInt(1));
	            f.setI_name(rs.getString(2));
	            f.setI_price(rs.getDouble(3));
	            f.setI_type(rs.getString(4));
	            f.setImg(rs.getString(5));   
	            f1.add(f);
	        }
	    } catch (SQLException ex) {
	        ex.printStackTrace();
	    }
	    return f1;
	}
	
	
	public String updateFood(int i_id, String i_name, double i_price, String i_type, String img) {
	    PreparedStatement ps = null;
	    String status1 = "";
	    String query = "UPDATE food SET i_name = ?, i_price = ?, i_type = ?, img = ? WHERE i_id = ?";
	    try {	     
	        con.setAutoCommit(false);	     
	        ps = con.prepareStatement(query);
	        ps.setString(1, i_name); 
	        ps.setDouble(2, i_price); 
	        ps.setString(3, i_type); 
	        ps.setString(4, img);
	        ps.setInt(5, i_id); 	    
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
	
	
	public String deleteFood(int i_id) {
	    PreparedStatement ps = null;
	    String status1 = "";
	    String query = "DELETE FROM food WHERE i_id = ?";
	    try {	       
	        con.setAutoCommit(false);	      
	        ps = con.prepareStatement(query);
	        ps.setInt(1, i_id);	      
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
	
	
	public ArrayList<cart> getcartinfo() {
		 Statement st = null;
		 ResultSet rs = null;
		 cart p = null;
	        ArrayList<cart> al = new ArrayList<cart>();
	        try {
	            st = con.createStatement();
	            String qry = ("select *  from cart where status='pending' ");
	            rs = st.executeQuery(qry);
	            while (rs.next()) {
	                 p = new cart();
	                p.setF_id(rs.getInt("f_id"));
	                p.setFood_name(rs.getString("food_name"));
	                p.setFood_image(rs.getString("food_image"));
	                p.setFood_type(rs.getString("food_type"));
	                p.setFood_price(rs.getDouble("food_price"));
	                p.setQty(rs.getInt("qty"));
	                p.setDatetime(rs.getString("datetime"));
	                al.add(p);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return al;
	    }
	 public String addtocart(int i_id,String qty) {
	        String status = "";
	        try {
	            Statement st = null;
	            st = (Statement) con.createStatement();
	            String qry = "INSERT INTO cart SELECT i_id, i_name, img, i_type, i_price, '" + qty + "', SYSDATE(), 'pending', '" + se.getAttribute("eid") + "' FROM food WHERE i_id = " + i_id;

	            int a = st.executeUpdate(qry);
	            status = "success";
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return status;
	    }
	public int deletecart(int f_id) {
		 int status = 0;
	        try {
	            Statement st = null;
	            st = (Statement) con.createStatement();
	            String qry ="delete from cart where f_id='" + f_id + "'";
	            status = st.executeUpdate(qry);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return status;
	    }
	public int deletewishlist(int w_id) {
		
		return 0;
	}
	public int deleteproduct(int c_id) {
		
		return 0;
	}


	

}
