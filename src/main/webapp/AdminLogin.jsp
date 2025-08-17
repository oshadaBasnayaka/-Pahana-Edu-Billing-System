<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Login - Pahana Edu Bookshop</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
:root {
  --primary-color: #343a40;
  --secondary-color: #343a40;
  --dark-color: #333333;
  --light-color: #f8f9fa;
}

body {
  font-family: 'Segoe UI', Arial, sans-serif;
  background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  margin: 0;
  padding: 20px;
}

/* Login Card */
.login-container {
  width: 100%;
  max-width: 420px;
  background: white;
  border-radius: 15px;
  box-shadow: 0 15px 30px rgba(0,0,0,0.1);
  padding: 40px;
  text-align: center;
  position: relative;
  animation: fadeIn 0.8s ease;
}

/* Header & Avatar */
.login-header { margin-bottom: 30px; }

.login-avatar {
  width: 100px;
  height: 100px;
  border-radius: 50%;
  margin: 0 auto 25px;
  background: url('https://cdn-icons-png.flaticon.com/256/14662/14662873.png') no-repeat center center;
  background-size: cover;
  box-shadow: 0 5px 15px rgba(58,123,213,0.3);
  animation: float 5s ease-in-out infinite;
}

.login-title {
  font-size: 28px;
  font-weight: 700;
  color: var(--dark-color);
  margin-bottom: 10px;
}

.login-subtitle {
  font-size: 15px;
  color: #777;
}

/* Form Styling */
.login-form { text-align: left; }
.form-group { margin-bottom: 20px; position: relative; }
.form-group label {
  display: block;
  font-size: 14px;
  color: #555;
  margin-bottom: 8px;
  font-weight: 500;
}
.form-control {
  width: 100%;
  padding: 12px 15px 12px 45px;
  border: 1px solid #eaedf1;
  border-radius: 8px;
  font-size: 15px;
  color: var(--dark-color);
  transition: all 0.3s;
}
.form-control:focus {
  border-color: var(--primary-color);
  box-shadow: 0 0 0 3px rgba(58,123,213,0.1);
  outline: none;
}
.form-icon {
  position: absolute;
  left: 15px;
  top: 38px;
  color: #a0a0a0;
  font-size: 18px;
}

/* Remember & Forgot */
.remember-me { display: flex; align-items: center; margin-bottom: 20px; }
.remember-me input { margin-right: 10px; }
.remember-me label { font-size: 14px; color: #777; margin: 0; }
.forgot-password {
  font-size: 14px;
  color: var(--primary-color);
  text-decoration: none;
  display: block;
  text-align: right;
  margin-top: -40px;
  margin-bottom: 20px;
  transition: all 0.3s;
}
.forgot-password:hover { color: var(--secondary-color); text-decoration: underline; }

/* Button */
.btn-login {
  width: 100%;
  padding: 13px;
  background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
  border: none;
  border-radius: 8px;
  color: white;
  font-size: 16px;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.3s;
  box-shadow: 0 5px 15px rgba(58,123,213,0.3);
}
.btn-login:hover { transform: translateY(-2px); box-shadow: 0 8px 20px rgba(58,123,213,0.4); }
.btn-login:active { transform: translateY(0); }

/* Footer */
.login-footer { margin-top: 30px; font-size: 14px; color: #777; text-align: center; }
.login-footer a { color: var(--primary-color); text-decoration: none; font-weight: 600; transition: all 0.3s; }
.login-footer a:hover { color: var(--secondary-color); text-decoration: underline; }

/* Animations */
@keyframes fadeIn { from {opacity:0; transform:translateY(30px);} to {opacity:1; transform:translateY(0);} }
@keyframes float { 0%{transform:translateY(0px);} 50%{transform:translateY(-10px);} 100%{transform:translateY(0px);} }

/* Responsive */
@media (max-width:576px){
  .login-container { padding: 30px 20px; }
  .login-title { font-size: 24px; }
  .login-avatar { width: 80px; height: 80px; }
}
</style>
</head>
<body>

<div class="login-container">
  <div class="login-header">
    <div class="login-avatar"></div>
    <h1 class="login-title">Admin Login</h1>
    <p class="login-subtitle">Enter your credentials to access the bookshop dashboard</p>
  </div>

  <form action="adminLogin" method="post" class="login-form">
    <div class="form-group">
      <label for="username">Username</label>
      <i class="fas fa-user form-icon"></i>
      <input type="text" id="username" name="username" class="form-control" placeholder="Enter your username" required>
    </div>

    <div class="form-group">
      <label for="password">Password</label>
      <i class="fas fa-lock form-icon"></i>
      <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required>
    </div>

    <div class="remember-me">
      <input type="checkbox" id="remember" name="remember">
      <label for="remember">Remember me</label>
    </div>

    <a href="#" class="forgot-password">Forgot password?</a>

    <button type="submit" class="btn-login">
      <i class="fas fa-sign-in-alt me-2"></i> Login
    </button>
  </form>

  <div class="login-footer">
    <p>© 2025 <a href="#">Pahana Edu Bookshop</a>. All rights reserved.</p>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
    