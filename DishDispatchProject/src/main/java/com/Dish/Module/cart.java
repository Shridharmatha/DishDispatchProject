package com.Dish.Module;

public class cart {
	private int f_id;
	private String food_name;
	private String food_image;
	private String food_type;
	private double food_price;
	private String datetime;
	public int getF_id() {
		return f_id;
	}
	public void setF_id(int f_id) {
		this.f_id = f_id;
	}
	public String getFood_name() {
		return food_name;
	}
	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}
	public String getFood_image() {
		return food_image;
	}
	public void setFood_image(String food_image) {
		this.food_image = food_image;
	}
	public String getFood_type() {
		return food_type;
	}
	public void setFood_type(String food_type) {
		this.food_type = food_type;
	}
	public double getFood_price() {
		return food_price;
	}
	public void setFood_price(double food_price) {
		this.food_price = food_price;
	}
	public String getDatetime() {
		return datetime;
	}
	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}
	public cart(int f_id, String food_name, String food_image, String food_type, double food_price, String datetime) {
		super();
		this.f_id = f_id;
		this.food_name = food_name;
		this.food_image = food_image;
		this.food_type = food_type;
		this.food_price = food_price;
		this.datetime = datetime;
	}

}
