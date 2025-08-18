<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.icbt.model.Customer" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Dashboard - Online Book Shop</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

<style>
/* Keep your original sidebar and layout styling */
body {
  background-color: #f5f5f5;
  font-family: 'Arial', sans-serif;
  margin: 0;
  padding: 0;
}
#sidebar {
  position: fixed;
  top: 0;
  left: 0;
  height: 100vh;
  width: 250px;
  background-color: #000; /* Black background */
  color: #fff;
  transition: all 0.4s ease;
  overflow-x: hidden;
  z-index: 1000;
  box-shadow: 2px 0 10px rgba(0,0,0,0.2);
  border-right: 1px solid rgba(255,255,255,0.1);
  display: flex;
  flex-direction: column;
}

#sidebar .sidebar-header {
  padding: 30px 20px;
  background: rgba(255,255,255,0.05);
  text-align: center;
  font-weight: bold;
  font-size: 1.5rem;
  letter-spacing: 1px;
  text-transform: uppercase;
  border-bottom: 1px solid rgba(255,255,255,0.2);
}

#sidebar ul.components {
  padding: 20px 0;
  list-style: none;
  margin: 0;
  flex-grow: 1;
}

#sidebar ul li {
  padding: 12px 20px;
  font-size: 1.1rem;
  position: relative;
  transition: all 0.3s ease;
}

#sidebar ul li a {
  color: #d1d1d1; /* Light gray text */
  text-decoration: none;
  display: flex;
  align-items: center;
  transition: all 0.3s ease;
  border-radius: 8px;
  padding: 8px 15px;
}

#sidebar ul li a i {
  margin-right: 10px;
  font-size: 1.2rem;
  width: 25px;
  text-align: center;
}

#sidebar ul li a:hover {
  color: #00d2ff;
  background: rgba(255,255,255,0.1);
  padding-left: 25px;
}

#sidebar ul li.active > a {
  background: rgba(255,255,255,0.2);
  color: #fff;
  font-weight: bold;
  border-left: 4px solid #00d2ff;
}

#sidebar ul li.active > a i {
  color: #00d2ff;
}

#sidebar .sidebar-footer {
  padding: 20px;
  text-align: center;
  font-size: 0.9rem;
  border-top: 1px solid rgba(255,255,255,0.2);
  background: rgba(255,255,255,0.05);
}
#content {
  margin-left: 250px;
  transition: margin-left 0.4s ease;
  padding: 20px;
}
@media (max-width: 768px) {
  #sidebar {
    width: 200px;
  }
  #content {
    margin-left: 200px;
  }
  .navbar .navbar-brand {
    margin-left: 200px;
  }
}

/* Optional: subtle scrollbar for sidebar */
#sidebar::-webkit-scrollbar {
  width: 6px;
}
#sidebar::-webkit-scrollbar-track {
  background: transparent;
}
#sidebar::-webkit-scrollbar-thumb {
  background-color: rgba(255,255,255,0.3);
  border-radius: 3px;
}
.navbar {
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}
.navbar .navbar-brand {
  margin-left: 250px;
  transition: margin-left 0.3s;
}
@media (max-width: 768px) {
  #sidebar { width: 200px; }
  #content { margin-left: 200px; }
  .navbar .navbar-brand { margin-left: 200px; }
}

.order-form {
  flex: 1 1 450px;
  padding: 20px;
}
.order-form h1, .order-form h2 {
  margin-top: 0;
  color: #333;
  text-align: left;
}
.order-form label {
  display: block;
  font-weight: 600;
  margin-top: 15px;
  margin-bottom: 5px;
  color: #444;
}
.order-form input, .order-form select {
  width: 100%;
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 4px;
  margin-bottom: 10px;
  font-size: 14px;
}
.order-form button[type="submit"] {
  background-color: black;
  color: #fff;
  font-weight: 600;
  font-size: 14px;
  padding: 10px 20px;
  border: none;
  border-radius: 4px;
}
.order-form button[type="submit"]:hover {
  background-color: gray;
}

<style>
/* ===== Product Section Styling ===== */
.product-section {
    padding: 60px 0;
    background: linear-gradient(180deg, #f0f4f8, #ffffff);
}

.product-section h2 {
    font-size: 2.2rem;
    color: #1d3557;
    margin-bottom: 40px;
    text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
}

.product-card {
    background: #fff;
    border-radius: 20px;
    padding: 25px;
    box-shadow: 0 8px 25px rgba(0,0,0,0.1);
    transition: transform 0.3s, box-shadow 0.3s;
    text-align: center;
}

.product-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 12px 30px rgba(0,0,0,0.15);
}

.product-card img {
    border-radius: 15px;
    width: 100%;
    max-width: 250px; /* control image size */
    height: auto;
    margin-bottom: 15px;
    transition: transform 0.3s ease;
}

.product-card:hover img {
    transform: scale(1.05);
}

.product-card h5 {
    color: #457b9d;
    font-weight: 700;
    margin-top: 15px;
}

.product-card p {
    color: #555;
    font-size: 0.95rem;
    line-height: 1.5;
}

.btn-dark {
    background: linear-gradient(90deg, #1d3557, #457b9d);
    color: #fff;
    font-weight: bold;
    padding: 12px 28px;
    border-radius: 12px;
    border: none;
    transition: 0.3s;
}

.btn-dark:hover {
    background: linear-gradient(90deg, #457b9d, #1d3557);
    transform: translateY(-3px);
}
/* Footer Styling */
.footer {
    background-color: #1a1a1a; /* Dark background */
    color: #f1f1f1;           /* Light text color */
    padding: 20px 0;           /* Vertical padding */
    text-align: center;        /* Centered text */
    font-family: 'Arial', sans-serif;
    font-size: 16px;
    border-top: 3px solid #ff6b6b; /* Optional top border for accent */
}

.footer a {
    color: #ff6b6b;            /* Link color */
    text-decoration: none;     /* Remove underline */
    transition: color 0.3s;    /* Smooth hover effect */
}

.footer a:hover {
    color: #ffd166;            /* Change color on hover */
}

.footer-container {
    max-width: 1200px;         /* Limit width */
    margin: 0 auto;            /* Center container */
    padding: 0 20px;           /* Horizontal padding */
}


</style>
</head>
<body>
<div class="dashboard-wrapper">
  
<nav id="sidebar">
  <div class="sidebar-header">
    <h3>Customer Dashboard</h3>
  </div>
  <ul class="components">
    <li class="active">
      <a href="${pageContext.request.contextPath}/customer/dashboard.jsp">
        <i class="fas fa-tachometer-alt me-2"></i>Dashboard
      </a>
    </li>
    <li>
      <a href="${pageContext.request.contextPath}/customer/">
        <i class="fas fa-clock me-2"></i>Your Orders
      </a>
    </li>
    
    <li>
      <a href="${pageContext.request.contextPath}/customer/About.jsp">
        <i class="fas fa-info-circle me-2"></i>About Us
      </a>
    </li>
    <li>
      <a href="${pageContext.request.contextPath}/customer/">
        <i class="fas fa-user-edit me-2"></i>Edit Profile
      </a>
    </li>
    <li>
      <a href="${pageContext.request.contextPath}/logout">
        <i class="fas fa-sign-out-alt me-2"></i>Logout
      </a>
    </li>
  </ul>
</nav>

<div id="content">
  <nav class="navbar-expand-lg navbar-light">
    <div class="container-fluid">
      <button type="button" id="sidebarCollapse" class="btn btn-outline-secondary">
        <i class="fas fa-bars"></i>
      </button>
      <a class="navbar-brand ms-3" href="#">Customer Dashboard</a>
    </div>
  </nav>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
  <script>
    document.getElementById("sidebarCollapse").addEventListener("click", function () {
      var sidebar = document.getElementById("sidebar");
      var content = document.getElementById("content");
      var navbarBrand = document.querySelector(".navbar .navbar-brand");
      if (sidebar.style.width === "250px" || sidebar.style.width === "") {
        sidebar.style.width = "0";
        content.style.marginLeft = "0";
        navbarBrand.style.marginLeft = "0";
      } else {
        sidebar.style.width = "250px";
        content.style.marginLeft = "250px";
        navbarBrand.style.marginLeft = "250px";
      }
    });zz
  </script>

  <div class="content-area">
    <div class="booking-container">
      <%
        Customer customer = (Customer) session.getAttribute("customer");
        if (customer != null) {
      %>
      <div class="order-form"> 
    <h1>Hello, <%= customer.getUsername() %></h1><br>
    <h2>Order Your Book</h2>
    
    <form action="payBook" method="post">
      <label for="bookTitle">Book Title:</label>
      <input type="text" id="bookTitle" name="bookTitle" placeholder="Enter book title" required>

      <label for="author">Author:</label>
      <input type="text" id="author" name="author" placeholder="Enter author's name" required>

      <label for="quantity">Quantity:</label>
      <input type="number" id="quantity" name="quantity" min="1" value="1" required>

      <button type="submit">Pay Book</button>
    </form>
</div>

      <% } else { %>
        <div class="alert alert-warning">You are not logged in. <a href="Login.jsp">Login here</a>.</div>
      <% } %>
    </div>

    <section class="product-section text-center"> 
  <div class="container">
    <h2 class="fw-bold">Order and Pay for Your Favorite Books</h2>
    <div class="row justify-content-center mt-4">
      <div class="col-md-4">
        <div class="product-card">
          <img src="img/45167624.jpg" alt="New Arrivals" class="img-fluid">
          <h5 class="mt-3 fw-bold">1. Browse our latest books</h5>
          <p>Check out new releases and trending titles handpicked by our team.</p>
        </div>
      </div>
      <div class="col-md-4">
        <div class="product-card">
          <img src="img/hand-holding-smartphone-showing-online-payment-by-credit-card_740756-34.png" alt="Payment" class="img-fluid">
          <h5 class="mt-3 fw-bold">2. Pay securely</h5>
          <p>Use our secure payment system to complete your order quickly.</p>  
        </div>
      </div>
    </div>
    <a href="#"><button class="btn btn-dark mt-4">Pay Book</button></a>
  </div>
</section>


<c:forEach var="order" items="${orders}">
  <div class="booking-card">
    <h3>Order ID: ${order.orderId}</h3>
    <p>Book: ${order.bookTitle}</p>
    <p>Quantity: ${order.quantity}</p>
    <p>Status: <strong>${order.status}</strong></p>
  </div>
</c:forEach>

<footer class="footer">
  <div class="footer-container">
    <p>© 2025 <a href="#">Pahana Edu Bookshop</a>. All Rights Reserved</p>
  </div>
</footer>
</body>
</html>
