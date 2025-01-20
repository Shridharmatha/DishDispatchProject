package com.Dish.Module;

public class orders {
	private int o_id;
	private String c_id;
	private String o_type;
	private String o_date;
	
	public int getO_id() {
		return o_id;
	}
	public void setO_id(int o_id) {
		this.o_id = o_id;
	}
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public String getO_type() {
		return o_type;
	}
	public void setO_type(String o_type) {
		this.o_type = o_type;
	}
	public String getO_date() {
		return o_date;
	}
	public void setO_date(String o_date) {
		this.o_date = o_date;
	}
	public orders(int o_id, String c_id, String o_type, String o_date) {
		super();
		this.o_id = o_id;
		this.c_id = c_id;
		this.o_type = o_type;
		this.o_date = o_date;
	}
	

}
