package com.icbt.model;

public class Item {
	
	
	private int bookid;
	private String bookname;
	private double price;
	private String author;
	private int quantity;
	
	public Item(int bookid, String bookname, double price, String author) {
		super();
		this.bookid = bookid;
		this.bookname = bookname;
		this.price = price;
		this.author = author;
	}
	public Item(String bookname, double price, String author) {
		super();
		this.bookname = bookname;
		this.price = price;
		this.author = author;
	}
	public Item() {
			
	}

	public int getBookid() {
		return bookid;
	}
	public void setBookid(int bookid) {
		this.bookid = bookid;
	}
	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}


	public String getAuthor() {
		return author;
	}


	public void setAuthor(String author) {
		this.author = author;
	}
	
	
	public int getQuantity() {
	    return quantity;
	}

	public void setQuantity(int quantity) {
	    this.quantity = quantity;
	}


}

