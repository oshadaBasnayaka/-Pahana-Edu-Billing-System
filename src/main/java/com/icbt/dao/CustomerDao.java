package com.icbt.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.icbt.model.Customer;

public class CustomerDao {
	
	public void AddCustomer(Customer customer ) {
		
		String query = "INSERT INTO customer(customer_id,name,email,address,phone_number) VALUES (?,?,?,?,?)";
		
		try
		{
			Connection connection = DBConnectionFactory.getConnection();
			 PreparedStatement statement = connection.prepareStatement(query);
			statement.setInt(1, customer.getCustomer_id());
			statement.setString(2, customer.getUsername());
			statement.setString(3, customer.getEmail());
			statement.setString(4, customer.getAddress());
			statement.setString(5, customer.getPhone_number());
			
			statement.executeUpdate();
			
		    System.out.println("Customer Added");
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		
	}
	public void loginCustomer(Customer customer)
	{
		String query = "SELECT * FROM customer WHERE name = ? AND email = ? ";
		
		try
		{
			Connection connection = DBConnectionFactory.getConnection();
			 PreparedStatement statement = connection.prepareStatement(query);
			 
			 statement.setString(1, customer.getUsername());
			 statement.setString(2, customer.getEmail());
			 
			 ResultSet rs = statement.executeQuery();
			 
			 if (rs.next()) {
				 System.out.println("Login successful! Customer: " + rs.getString("name"));
			 } else {
				 System.out.println("Invalid username or email");
			 }
		}catch (SQLException e) {
				 e.printStackTrace();
			 
			 }
	}
	public List<Customer> getAllCustomer() throws SQLException {
	    List<Customer> customerList = new ArrayList<>();
	    String query = "SELECT * FROM customer";

	    Connection connection = DBConnectionFactory.getConnection();
	    Statement statement = connection.createStatement();
	    ResultSet resultSet = statement.executeQuery(query);

	    while (resultSet.next()) {
	        int customerId = resultSet.getInt("customer_id");
	        String username = resultSet.getString("name");
	        String email = resultSet.getString("email");
	        String address = resultSet.getString("address");
	        String phoneNumber = resultSet.getString("phone_number");

	        customerList.add(new Customer(customerId, username, email, address, phoneNumber));
	    }

	    return customerList;
	}

		   
	public Customer getCustomerById(int customerId) throws SQLException {
	    String query = "SELECT * FROM customer WHERE customer_id = ?";
	    Customer customer = null;

	    Connection connection = DBConnectionFactory.getConnection();
	    PreparedStatement preparedStatement = connection.prepareStatement(query);
	    preparedStatement.setInt(1, customerId);
	    ResultSet resultSet = preparedStatement.executeQuery();

	    if (resultSet.next()) {
	        String username = resultSet.getString("name");
	        String email = resultSet.getString("email");
	        String address = resultSet.getString("address");
	        String phoneNumber = resultSet.getString("phone_number");

	        customer = new Customer(customerId, username, email, address, phoneNumber);
	    }

	    return customer;
	}

	public void updateCustomer(Customer customer) throws SQLException {
	    String query = "UPDATE customer SET name = ?, email = ?, address = ?, phone_number = ? WHERE customer_id = ?";

	    Connection connection = DBConnectionFactory.getConnection();
	    PreparedStatement preparedStatement = connection.prepareStatement(query);

	    preparedStatement.setString(1, customer.getUsername());
	    preparedStatement.setString(2, customer.getEmail());
	    preparedStatement.setString(3, customer.getAddress());
	    preparedStatement.setString(4, customer.getPhone_number());
	    preparedStatement.setInt(5, customer.getCustomer_id());

	    preparedStatement.executeUpdate();
	}

	public void deleteCustomer(int customerId) throws SQLException {
	    String query = "DELETE FROM customer WHERE customer_id = ?";

	    Connection connection = DBConnectionFactory.getConnection();
	    PreparedStatement preparedStatement = connection.prepareStatement(query);
	    preparedStatement.setInt(1, customerId);

	    preparedStatement.executeUpdate();
	}

	
	
	
	

}
