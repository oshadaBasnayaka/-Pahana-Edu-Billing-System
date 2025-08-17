<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Customer Registration - Pahana Edu Bookshop</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
  body {
    font-family: 'Segoe UI', Arial, sans-serif;
    background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIfoTnjc9YVNT4PZCHnPKGLqIooZOLskVOFA&s') no-repeat center center fixed;
    background-size: cover;
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 0;
    padding: 20px;
  }

  .registration-container {
    background: rgba(255, 255, 255, 0.95);
    border-radius: 12px;
    box-shadow: 0 8px 25px rgba(0,0,0,0.15);
    max-width: 500px;
    width: 100%;
    padding: 30px;
    backdrop-filter: blur(5px); /* optional blur effect for nice contrast */
  }

  .registration-header {
    text-align: center;
    margin-bottom: 25px;
  }

  .registration-header h1 {
    font-size: 26px;
    font-weight: 600;
    color: #333;
  }

  .registration-header p {
    color: #555;
    font-size: 15px;
  }

  .form-control {
    border-radius: 50px;
    padding: 12px 20px;
    font-size: 15px;
    box-shadow: none;
  }

  .register-btn {
    background: linear-gradient(135deg, #3a7bd5, #00d2ff);
    color: white;
    border: none;
    border-radius: 50px;
    height: 50px;
    font-size: 16px;
    font-weight: 500;
    width: 100%;
    cursor: pointer;
    transition: all 0.3s;
  }

  .register-btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 20px rgba(58, 123, 213, 0.4);
  }

  .login-link {
    text-align: center;
    font-size: 14px;
    color: #777;
    margin-top: 15px;
  }

  .login-link a {
    color: #3a7bd5;
    font-weight: 600;
    text-decoration: none;
  }

  .login-link a:hover {
    color: #00d2ff;
  }
</style>
</head>
<body>

<div class="registration-container">
  <div class="registration-header">
    <h1>Create Your Account</h1>
    <p>Sign up to order books online from Pahana Edu Bookshop</p>
  </div>

  <form action="registerCustomer" method="post">
    <div class="mb-3">
      <label for="account_number" class="form-label">Account Number *</label>
      <input type="text" id="account_number" name="account_number" class="form-control" placeholder="Enter your account number" required>
    </div>

    <div class="mb-3">
      <label for="username" class="form-label">User Name *</label>
      <input type="text" id="username" name="username" class="form-control" placeholder="Enter your user name" required>
    </div>

    <div class="mb-3">
      <label for="password" class="form-label">Password *</label>
      <input type="password" id="password" name="password" class="form-control" placeholder="Enter a password" required>
    </div>

    <div class="mb-3">
      <label for="address" class="form-label">Address</label>
      <input type="text" id="address" name="address" class="form-control" placeholder="Enter your address">
    </div>

    <div class="mb-3">
      <label for="telephone" class="form-label">Telephone Number</label>
      <input type="text" id="telephone" name="telephone" class="form-control" placeholder="Enter your telephone number">
    </div>

    <button type="submit" class="register-btn">Create Account</button>
  </form>

  <div class="login-link">
    Already have an account? <a href="Login.jsp">Sign In</a>
  </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
