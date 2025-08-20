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
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>

    <!-- Optional Custom CSS -->
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 0 12px rgba(0, 0, 0, 0.08);
        }

        h2, h4 {
            color: #343a40;
        }

        .form-check {
            background-color: #f1f1f1;
            padding: 10px;
            border-radius: 6px;
        }

        .form-check + .form-check {
            margin-top: 10px;
        }

        .form-check-label {
            margin-left: 5px;
        }

        .form-control-inline {
            width: 100px;
            display: inline-block;
            margin-left: 10px;
        }

        .btn-primary {
            display: block;
            width: 100%;
        }

        label {
            font-weight: 500;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">Select Customer and Items to Generate Bill</h2>

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
            out.println("<p class='text-danger'>Error loading customers or items!</p>");
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

        <h4 class="mt-4">Select Items:</h4>
        <c:forEach var="item" items="${itemsList}">
            <div class="form-check">
                <input type="checkbox" class="form-check-input" name="itemId" value="${item.bookid}" id="item${item.bookid}"/>
                <label class="form-check-label" for="item${item.bookid}">
                    ${item.bookname} - Price: Rs. ${item.price}
                </label>
                <input type="number" name="qty_${item.bookid}" value="1" min="1"
                       class="form-control form-control-inline" />
            </div>
        </c:forEach>

        <button type="submit" class="btn btn-primary mt-4">Generate Bill</button>
    </form>
</div>
</body>
</html>
