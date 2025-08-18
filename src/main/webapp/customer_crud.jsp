<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.icbt.model.Customer" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2 class="mb-4">Customer Management</h2>
    
    <div class=" ms-auto pb-3">
    <a href="AdminDashboard.jsp" class="btn btn-warning btn-sm">Back to Dashboard</a>
</div>

    <!-- Add or Update Customer Form -->
    <%
        Customer editCustomer = (Customer) request.getAttribute("editCustomer");
        boolean isEdit = (editCustomer != null);
    %>

    <form action="CustomerController?action=<%= isEdit ? "update" : "add" %>" method="post" class="mb-5">
        <% if (isEdit) { %>
            <input type="hidden" name="id" value="<%= editCustomer.getCustomer_id() %>">
        <% } %>
        <div class="row g-3">
            <div class="col-md-2">
                <input type="text" name="name" class="form-control" placeholder="Username" value="<%= isEdit ? editCustomer.getUsername() : "" %>" required>
            </div>
            <div class="col-md-2">
                <input type="text" name="email" class="form-control" placeholder="Email" value="<%= isEdit ? editCustomer.getEmail() : "" %>" required>
            </div>
            <div class="col-md-3">
                <input type="text" name="address" class="form-control" placeholder="Address" value="<%= isEdit ? editCustomer.getAddress() : "" %>" required>
            </div>
            <div class="col-md-3">
                <input type="text" name="phone_number" class="form-control" placeholder="Phone Number" value="<%= isEdit ? editCustomer.getPhone_number() : "" %>" required>
            </div>
            <div class="col-md-2">
                <button type="submit" class="btn btn-<%= isEdit ? "primary" : "success" %> w-100">
                    <%= isEdit ? "Update" : "Add Customer" %>
                </button>
            </div>
        </div>
    </form>

    <!-- Customer Table -->
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Email</th>
                <th>Address</th>
                <th>Phone Number</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<Customer> customers = (List<Customer>) request.getAttribute("customers");
                if (customers != null && !customers.isEmpty()) {
                    for (Customer c : customers) {
            %>
            <tr>
                <td><%= c.getCustomer_id() %></td>
                <td><%= c.getUsername() %></td>
                <td><%= c.getEmail() %></td>
                <td><%= c.getAddress() %></td>
                <td><%= c.getPhone_number() %></td>
                <td>
                    <a href="CustomerController?action=edit&id=<%= c.getCustomer_id() %>" class="btn btn-warning btn-sm">Edit</a>
                    <a href="CustomerController?action=delete&id=<%= c.getCustomer_id() %>" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this customer?')">Delete</a>
                </td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="6" class="text-center">No customers found.</td>
            </tr>
            <% } %>
        </tbody>
    </table>
</div>

</body>
</html>
