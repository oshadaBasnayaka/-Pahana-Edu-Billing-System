<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Shop Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<style>
:root {
  --primary-color: #3a7bd5;
  --secondary-color: #00d2ff;
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

.login-container {
  width: 100%;
  max-width: 900px;
  display: flex;
  box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
  border-radius: 15px;
  overflow: hidden;
  position: relative;
  background: white;
}

.login-form {
  flex: 1;
  padding: 40px;
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.login-logo {
  width: 200px;
  margin: 0 auto 30px;
  animation: float 6s ease-in-out infinite;
}

.login-header {
  text-align: center;
  margin-bottom: 30px;
}
.login-header h1 {
  font-size: 28px;
  font-weight: 600;
  color: var(--dark-color);
  margin-bottom: 10px;
}
.login-header p {
  color: #777;
  font-size: 15px;
}

.form-group {
  margin-bottom: 25px;
  position: relative;
}
.form-group label {
  display: block;
  font-size: 14px;
  font-weight: 500;
  color: #555;
  margin-bottom: 8px;
}

.input-group {
  position: relative;
}

.input-icon {
  position: absolute;
  top: 50%;
  left: 15px;
  transform: translateY(-50%);
  color: #999;
  z-index: 10;
}

.form-control {
  height: 50px;
  border: 1px solid #e0e0e0;
  border-radius: 50px;
  padding: 10px 20px 10px 45px;
  font-size: 15px;
  width: 100%;
  box-shadow: none;
}
.form-control:focus {
  border-color: var(--primary-color);
  box-shadow: 0 0 10px rgba(58, 123, 213, 0.1);
}

.login-btn {
  background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
  color: white;
  border: none;
  border-radius: 50px;
  height: 50px;
  font-size: 16px;
  font-weight: 500;
  width: 100%;
  cursor: pointer;
  transition: all 0.3s;
  margin-bottom: 20px;
}
.login-btn:hover {
  transform: translateY(-2px);
  box-shadow: 0 8px 20px rgba(58, 123, 213, 0.4);
}

.signup {
  text-align: center;
  font-size: 14px;
  color: #777;
}
.signup a {
  color: var(--primary-color);
  text-decoration: none;
  font-weight: 600;
}
.signup a:hover {
  color: var(--secondary-color);
  text-decoration: underline;
}

@keyframes float {
  0% { transform: translateY(0px); }
  50% { transform: translateY(-10px); }
  100% { transform: translateY(0px); }
}
</style>
</head>
<body>
  <div class="login-container">
    <div class="login-form">
      <img src="/img/Logo for Pahana Edu Book Shop - Wordmark Style with Open Book.png" class="login-logo" alt="Book Shop Logo">

      <div class="login-header">
        <h1>Book Shop Login</h1>
        <p>Welcome! Please enter your credentials to continue</p>
      </div>

      <form action="login" method="post">
        <div class="form-group">
          <label for="username">Username</label>
          <div class="input-group">
            <i class="fas fa-user input-icon"></i>
            <input type="text" id="username" name="username" class="form-control" placeholder="Enter your username" required>
          </div>
        </div>

        <div class="form-group">
          <label for="password">Password</label>
          <div class="input-group">
            <i class="fas fa-lock input-icon"></i>
            <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required>
          </div>
        </div>

        <button type="submit" class="login-btn">Sign In</button>
      </form>

      <div class="signup">
        Don't have an account? <a href="register.jsp">Sign Up</a>
      </div>
    </div>
  </div>
</body>
</html>
    