package com.icbt.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icbt.model.Item;
import com.icbt.service.ItemService;

/**
 * Servlet implementation class ItemsController
 */
@WebServlet("/ItemsController")
public class ItemsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	public ItemsController(){
		super();
	}
   
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String action = request.getParameter("action");
	        ItemService itemService = new ItemService();

	        try {
	            if ("edit".equals(action)) {
	                int bookid = Integer.parseInt(request.getParameter("bookid"));
	                Item item = itemService.getItemById(bookid);

	                request.setAttribute("editItem", item);
	                request.setAttribute("items", itemService.getAllItems());
	                request.getRequestDispatcher("item_crud.jsp").forward(request, response);

	            } else if ("delete".equals(action)) {
	                int bookid = Integer.parseInt(request.getParameter("bookid"));
	                itemService.deleteItem(bookid);
	                response.sendRedirect("ItemsController");

	            } else {
	                List<Item> items = itemService.getAllItems();
	                System.out.println(items);
	                request.setAttribute("items", items);
	                request.getRequestDispatcher("item_crud.jsp").forward(request, response);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String action = request.getParameter("action");
	        ItemService itemService = new ItemService();

	        try {
	            if ("add".equals(action)) {
	                String name = request.getParameter("bookname");
	                double price = Double.parseDouble(request.getParameter("price"));
	                String author = request.getParameter("author");

	                Item item = new Item(name, price, author);
	                itemService.addItem(item);

	            } else if ("update".equals(action)) {
	                int bookid = Integer.parseInt(request.getParameter("bookid"));
	                String name = request.getParameter("bookname");
	                double price = Double.parseDouble(request.getParameter("price"));
	                String author = request.getParameter("author");

	                Item item = new Item(bookid, name, price, author);
	                itemService.updateItem(item);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        response.sendRedirect("ItemsController");
	    }
	}
