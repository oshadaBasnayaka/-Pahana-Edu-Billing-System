package com.icbt.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.icbt.model.Customer;
import com.icbt.service.CustomerService;

@WebServlet("/CustomerController")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CustomerController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");

		CustomerService customerService = new CustomerService();

		try {
			if (action != null && action.equals("delete")) {
				// Handle DELETE
				int id = Integer.parseInt(request.getParameter("id"));
				customerService.deleteCustomer(id);
				response.sendRedirect("CustomerController"); // Redirect after deletion

			} else if (action != null && action.equals("edit")) {
				// Show Edit Form
				int id = Integer.parseInt(request.getParameter("id"));
				Customer customer = customerService.getCustomerById(id);

				request.setAttribute("editCustomer", customer);
				request.setAttribute("customers", customerService.getAllCustomers());

				request.getRequestDispatcher("customer_crud.jsp").forward(request, response);
			} else {
				// Default: show all
				List<Customer> customerList = customerService.getAllCustomers();
				request.setAttribute("customers", customerList);
				request.getRequestDispatcher("customer_crud.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");
		CustomerService customerService = new CustomerService();

		try {
			if (action.equals("add")) {
				// ADD Customer
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				String address = request.getParameter("address");
				String phone = request.getParameter("phone_number");

				Customer customer = new Customer(name, email, address, phone);
				customerService.addCustomer(customer);

			} else if (action.equals("update")) {
				// UPDATE Customer
				int id = Integer.parseInt(request.getParameter("id"));
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				String address = request.getParameter("address");
				String phone = request.getParameter("phone_number");

				Customer customer = new Customer(id, name, email, address, phone);
				customerService.updateCustomer(customer);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		response.sendRedirect("CustomerController");
	}
}
