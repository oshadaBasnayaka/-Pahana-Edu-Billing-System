<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import="java.util.List" %>
<%@ page import="com.icbt.model.Customer" %>
<%@ page import="com.icbt.model.Item" %>
<%@ page import="com.icbt.service.CustomerService" %>
<%@ page import="com.icbt.service.ItemService" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Select Customer and Items</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
</head>
<body>
<div class="container mt-5">
    <h2>Select Customer and Items to Generate Bill</h2>

    <%
        List<Customer> customers = null;
        List<Item> itemsList = null;

        try {
            CustomerService customerService = new CustomerService();
            ItemService itemService = new ItemService();

            customers = customerService.getAllCustomers();
            itemsList = itemService.getAllItems();

            request.setAttribute("customers", customers);
            request.setAttribute("itemsList", itemsList);

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p style='color:red;'>Error loading customers or items!</p>");
        }
    %>

    <form action="BillController" method="post">
        <div class="form-group">
            <label for="customerId">Select Customer:</label>
            <select name="customerId" id="customerId" class="form-control" required>
                <c:forEach var="customer" items="${customers}">
                    <option value="${customer.customer_id}">${customer.username}</option>
                </c:forEach>
            </select>
        </div>

        <h4>Select Items:</h4>
        <c:forEach var="item" items="${itemsList}">
            <div class="form-check mb-2">
                <input type="checkbox" class="form-check-input" name="itemId" value="${item.bookid}" id="item${item.bookid}"/>
                <label class="form-check-label" for="item${item.bookid}">
                    ${item.bookname} - Price: ${item.price}
                </label>
                Quantity: <input type="number" name="qty_${item.bookid}" value="1" min="1" class="form-control d-inline-block" style="width:80px;"/>
            </div>
        </c:forEach>

        <button type="submit" class="btn btn-primary mt-3">Generate Bill</button>
    </form>
</div>
</body>
</html>
