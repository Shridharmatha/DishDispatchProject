package com.Dish.Module;

public class customer {
	private int cid;
	private String cname;
	private String cemail;
	private String phone;
	private String password;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCemail() {
		return cemail;
	}
	public void setCemail(String cemail) {
		this.cemail = cemail;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDatetime() {
		return datetime;
	}
	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}
	private String datetime;
	public customer(int cid, String cname, String cemail, String phone, String password, String datetime) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.cemail = cemail;
		this.phone = phone;
		this.password = password;
		this.datetime = datetime;
	}

}
