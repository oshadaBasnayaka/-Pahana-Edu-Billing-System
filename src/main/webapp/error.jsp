<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Failed</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="d-flex justify-content-center align-items-center vh-100 bg-light">
    <div class="card shadow-lg p-5 rounded" style="max-width: 500px;">
        <h2 class="text-danger text-center mb-4">Oops! Something Went Wrong</h2>
        <p class="text-center">We couldn’t complete your booking. Please try again later or contact support.</p>
        <div class="text-center mt-4">
            <a href="loadBooks" class="btn btn-warning">Try Again</a>
            <a href="index.jsp" class="btn btn-secondary ms-2">Go to Home</a>
        </div>
    </div>
</body>
</html>
