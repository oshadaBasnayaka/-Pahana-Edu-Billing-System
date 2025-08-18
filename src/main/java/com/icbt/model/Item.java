package com.icbt.model;

public class Item {
	
	
	private int bookid;
	private String bookname;
	private String price;
	private String author;
	
	
	public Item(int bookid, String bookname, String price, String author) {
		super();
		this.bookid = bookid;
		this.bookname = bookname;
		this.price = price;
		this.author = author;
	}

		




	public Item(String bookname, String price, String author) {
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





	public String getPrice() {
		return price;
	}





	public void setPrice(String price) {
		this.price = price;
	}





	public String getAuthor() {
		return author;
	}





	public void setAuthor(String author) {
		this.author = author;
	}
	
	
	
	
	

}

