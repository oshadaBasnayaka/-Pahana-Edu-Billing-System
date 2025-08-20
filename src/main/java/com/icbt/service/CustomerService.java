package com.icbt.service;

import java.sql.SQLException;
import java.util.List;

import com.icbt.dao.CustomerDao;
import com.icbt.model.Customer;

public class CustomerService {
	
	 private CustomerDao customerDao = new CustomerDao();

	    public void addCustomer(Customer customer) {
	        customerDao.AddCustomer(customer);
	    }

	    public void loginCustomer(Customer customer) {
	        customerDao.loginCustomer(customer);
	    }

	    public List<Customer> getAllCustomers() throws SQLException {
	        return customerDao.getAllCustomer();
	    }

	    public Customer getCustomerById(int customerId) throws SQLException {
	        return customerDao.getCustomerById(customerId);
	    }

	    public void updateCustomer(Customer customer) throws SQLException {
	        customerDao.updateCustomer(customer);
	    }

	    public void deleteCustomer(int customerId) throws SQLException {
	        customerDao.deleteCustomer(customerId);
	    }
	    
	    public int getTotalCustomerCount() throws SQLException {
	        return customerDao.getTotalCustomerCount();
	    }
	}


