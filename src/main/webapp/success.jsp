<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Successful</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="d-flex justify-content-center align-items-center vh-100 bg-light">
    <div class="card shadow-lg p-5 rounded" style="max-width: 500px;">
        <h2 class="text-success text-center mb-4">Booking Successful!</h2>
        <p class="text-center">Thank you for your order. Your book has been successfully booked.</p>
        <div class="text-center mt-4">
            <a href="loadBooks" class="btn btn-primary">Book Another Item</a>
            <a href="index.jsp" class="btn btn-secondary ms-2">Go to Home</a>
        </div>
    </div>
</body>
</html>
