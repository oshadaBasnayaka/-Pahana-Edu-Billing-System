package com.icbt.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icbt.model.Customer;
import com.icbt.service.CustomerService;


@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Login() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
	    String password = request.getParameter("password");

	    // Hardcoded credentials
	    String hardcodedUsername = "oshada";
	    String hardcodedPassword = "1234";
	    
	    String hardcodedadminUsername = "admin";
	    String hardcodedadminPassword = "1234";
	    
	    
//	    
//	    System.out.println(username);
//	    System.out.println(password);

	    if (username != null && password != null &&
	        username.equals(hardcodedUsername) && password.equals(hardcodedPassword)) {

	        // Login success - forward to home or dashboard
	        request.setAttribute("message", "Login successful!");
	        request.getRequestDispatcher("CustomerDashboard.jsp").forward(request, response);
	        
	    }else if (username != null && password != null &&
	        username.equals(hardcodedadminUsername) && password.equals(hardcodedadminPassword)) {
	    	
	    	request.setAttribute("message", "Login successful!");
	        request.getRequestDispatcher("AdminDashboard.jsp").forward(request, response);


	    } else {
	        // Login failed - send back to login page with error
	        request.setAttribute("error", "Invalid username or password");
	        request.getRequestDispatcher("Login.jsp").forward(request, response);
	    }

	}
	
}
