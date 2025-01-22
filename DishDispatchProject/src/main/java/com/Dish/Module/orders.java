package com.Dish.Module;

public class orders {
	
	private int o_id;
	private String o_img;
	private String c_id;
	private String o_item;
	private double o_price;
	private int qty;
	private String status;
	private String o_type;
	private String o_date;
	public orders(int o_id, String o_img, String c_id, String o_item, double o_price, int qty,
			String status,String o_type, String o_date) {
		super();
		this.o_id = o_id;
		this.o_img = o_img;
		this.c_id = c_id;
		this.o_item = o_item;
		this.o_type = o_type;
		this.o_price = o_price;
		this.qty = qty;
		this.status = status;
		this.o_date = o_date;
	}
	public int getO_id() {
		return o_id;
	}
	public void setO_id(int o_id) {
		this.o_id = o_id;
	}
	public String getO_img() {
		return o_img;
	}
	public void setO_img(String o_img) {
		this.o_img = o_img;
	}
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public String getO_item() {
		return o_item;
	}
	public void setO_item(String o_item) {
		this.o_item = o_item;
	}
	public String getO_type() {
		return o_type;
	}
	public void setO_type(String o_type) {
		this.o_type = o_type;
	}
	public double getO_price() {
		return o_price;
	}
	public void setO_price(double o_price) {
		this.o_price = o_price;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getO_date() {
		return o_date;
	}
	public void setO_date(String o_date) {
		this.o_date = o_date;
	}


}
