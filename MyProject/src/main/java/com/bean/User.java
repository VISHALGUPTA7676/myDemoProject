package com.bean;

import java.sql.Date;



public class User {
	
	private int customer_id;
	private String customer_fisrtname;
	private String customer_lastname;
	private String	customer_gender;
	private Date customer_DOB;
	private long customer_mobile;
	private String customer_email;
	private String customer_password;
	private int house_number;
	
	private String building_name;
	private String area_name;
	private int area_pincode;
	private int area_id;
	private String city_name;
	
	private String state_name;
	private int  state_id;
	private int city_id;
	
	
	public int getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}
	public String getCustomer_fisrtname() {
		return customer_fisrtname;
	}
	public void setCustomer_fisrtname(String customer_fisrtname) {
		this.customer_fisrtname = customer_fisrtname;
	}
	public String getCustomer_lastname() {
		return customer_lastname;
	}
	public void setCustomer_lastname(String customer_lastname) {
		this.customer_lastname = customer_lastname;
	}
	public String getCustomer_gender() {
		return customer_gender;
	}
	public void setCustomer_gender(String customer_gender) {
		this.customer_gender = customer_gender;
	}
	public Date getCustomer_DOB() {
		return customer_DOB;
	}
	public void setCustomer_DOB(Date customer_DOB) {
		this.customer_DOB = customer_DOB;
	}
	public long getCustomer_mobile() {
		return customer_mobile;
	}
	public void setCustomer_mobile(long customer_mobile) {
		this.customer_mobile = customer_mobile;
	}
	public String getCustomer_email() {
		return customer_email;
	}
	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}
	public String getCustomer_password() {
		return customer_password;
	}
	public void setCustomer_password(String customer_password) {
		this.customer_password = customer_password;
	}
	public int getHouse_number() {
		return house_number;
	}
	public void setHouse_number(int house_number) {
		this.house_number = house_number;
	}
	public String getBuilding_name() {
		return building_name;
	}
	public void setBuilding_name(String building_name) {
		this.building_name = building_name;
	}
	public String getArea_name() {
		return area_name;
	}
	public void setArea_name(String area_name) {
		this.area_name = area_name;
	}
	public int getArea_pincode() {
		return area_pincode;
	}
	public void setArea_pincode(int area_pincode) {
		this.area_pincode = area_pincode;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	public String getState_name() {
		return state_name;
	}
	public void setState_name(String state_name) {
		this.state_name = state_name;
	}
	public int getState_id() {
		return state_id;
	}
	public void setState_id(int state_id) {
		this.state_id = state_id;
	}
	public int getCity_id() {
		return city_id;
	}
	public void setCity_id(int city_id) {
		this.city_id = city_id;
	}
	
	public int getArea_id() {
		return area_id;
	}
	public void setArea_id(int area_id) {
		this.area_id = area_id;
	}
	@Override
	public String toString() {
		return "User [customer_id=" + customer_id + ", customer_fisrtname=" + customer_fisrtname
				+ ", customer_lastname=" + customer_lastname + ", customer_gender=" + customer_gender
				+ ", customer_DOB=" + customer_DOB + ", customer_mobile=" + customer_mobile + ", customer_email="
				+ customer_email + ", customer_password=" + customer_password + ", house_number=" + house_number
				+ ", building_name=" + building_name + ", area_name=" + area_name + ", area_pincode=" + area_pincode
				+ ", area_id=" + area_id + ", city_name=" + city_name + ", state_name=" + state_name + ", state_id="
				+ state_id + ", city_id=" + city_id + "]";
	}
	
	
}
	