<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer Bill</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">Customer Bill</h2>

    <h4>Customer Information</h4>
    <table class="table table-bordered">
        <tr><th>Customer ID</th><td>${customer.customer_id}</td></tr>
        <tr><th>Name</th><td>${customer.username}</td></tr>
        <tr><th>Email</th><td>${customer.email}</td></tr>
        <tr><th>Address</th><td>${customer.address}</td></tr>
        <tr><th>Phone</th><td>${customer.phone_number}</td></tr>
    </table>

    <h4>Purchased Items</h4>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Book ID</th>
            <th>Book Name</th>
            <th>Author</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Line Total</th>
        </tr>
        </thead>
        <tbody>
        <c:set var="grandTotal" value="0" />
        <c:forEach var="item" items="${items}">
            <c:set var="qty" value="${item.quantity}" />
            <c:set var="lineTotal" value="${item.price * qty}" />
            <c:set var="grandTotal" value="${grandTotal + lineTotal}" />
            <tr>
                <td>${item.bookid}</td>
                <td>${item.bookname}</td>
                <td>${item.author}</td>
                <td>${item.price}</td>
                <td>${qty}</td>
                <td>${lineTotal}</td>
            </tr>
        </c:forEach>
        </tbody>
        <tfoot>
        <tr>
            <th colspan="5" class="text-right">Grand Total</th>
            <th>${grandTotal}</th>
        </tr>
        </tfoot>
    </table>
    
    <form action="SaveBillController" method="post">
    <!-- Hidden fields to send customer and items data -->
    <input type="hidden" name="customerId" value="${customer.customer_id}" />
    <c:forEach var="item" items="${items}">
        <input type="hidden" name="itemId" value="${item.bookid}" />
        <input type="hidden" name="qty_${item.bookid}" value="${item.quantity}" />
    </c:forEach>

    <button type="submit" class="btn btn-success mt-3">Save Bill</button>
</form>
</div>
</body>
</html>