package com.icbt.model;

public class Customer {
	
	private int customer_id;
	private String username;
	private String email;
	private String address;
	private String phone_number;
	
	
	public Customer(int customer_id, String username, String email, String address, String phone_number) {
		super();
		this.customer_id = customer_id;
		this.username = username;
		this.email = email;
		this.address = address;
		this.phone_number = phone_number;
	}

	

	public Customer() {
	
	}
	



	public Customer(String username, String email, String address, String phone_number) {
		
		this.username = username;
		this.email = email;
		this.address = address;
		this.phone_number = phone_number;
	}



	public int getCustomer_id() {
		return customer_id;
	}


	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getPhone_number() {
		return phone_number;
	}


	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	
	
	
	

}
