<%@ page import="java.util.*, com.icbt.model.Booking" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Book Booking CRUD</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-4">

<h2>Book Booking Form</h2>
<form method="post" action="BookingController">
    <input type="hidden" name="id" value="${booking != null ? booking.id : ''}" />
    <div class="mb-3">
        <label>Customer ID</label>
        <input type="text" name="customerId" class="form-control" value="${booking != null ? booking.customerId : ''}" required />
    </div>
    <div class="mb-3">
        <label>Book ID</label>
        <input type="text" name="bookId" class="form-control" value="${booking != null ? booking.bookId : ''}" required />
    </div>
    <div class="mb-3">
        <label>Quantity</label>
        <input type="number" name="quantity" class="form-control" value="${booking != null ? booking.quantity : ''}" required />
    </div>
    <div class="mb-3">
        <label>Booking Date</label>
        <input type="date" name="bookingDate" class="form-control" value="${booking != null ? booking.bookingDate : ''}" required />
    </div>
    <button type="submit" class="btn btn-primary">Save Booking</button>
</form>

<hr/>

<h2>Booking List</h2>
<table class="table table-bordered">
    <tr>
        <th>ID</th>
        <th>Customer ID</th>
        <th>Book ID</th>
        <th>Quantity</th>
        <th>Booking Date</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="b" items="${list}">
        <tr>
            <td>${b.id}</td>
            <td>${b.customerId}</td>
            <td>${b.bookId}</td>
            <td>${b.quantity}</td>
            <td>${b.bookingDate}</td>
            <td>
                <a href="BookingController?action=edit&id=${b.id}" class="btn btn-warning btn-sm">Edit</a>
                <a href="BookingController?action=delete&id=${b.id}" class="btn btn-danger btn-sm">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
