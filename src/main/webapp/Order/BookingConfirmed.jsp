<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Book Order Confirmation Page HTML + CSS -->
<!DOCTYPE html> 
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Order Confirmed - BookShop</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: linear-gradient(135deg, #3a7bd5, #00d2ff);
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
    }
    .confirmation-container {
      background: #fff;
      padding: 30px;
      max-width: 600px;
      width: 100%;
      text-align: center;
      border-radius: 15px;
      box-shadow: 0 4px 20px rgba(0,0,0,0.15);
    }
    .success-icon {
      font-size: 60px;
      color: #20bf6b;
      margin-bottom: 15px;
    }
    h1 {
      color: #333;
      margin-bottom: 10px;
    }
    p {
      color: #555;
      font-size: 16px;
    }
    .order-details {
      background: #f9f9f9;
      margin-top: 20px;
      padding: 15px;
      border-radius: 8px;
      text-align: left;
    }
    .order-details table {
      width: 100%;
      border-collapse: collapse;
    }
    .order-details th, .order-details td {
      text-align: left;
      padding: 8px;
      border-bottom: 1px solid #ddd;
      font-size: 14px;
    }
    .order-details th {
      background: #eef3ff;
    }
    .btn-home {
      display: inline-block;
      margin-top: 20px;
      padding: 12px 25px;
      background: #3a7bd5;
      color: white;
      text-decoration: none;
      border-radius: 50px;
      transition: background 0.3s;
    }
    .btn-home:hover {
      background: #2d5ca4;
    }
  </style>
</head>
<body>
  <div class="confirmation-container">
    <div class="success-icon">✅</div>
    <h1>Order Confirmed!</h1>
    <p>Dear <strong>John Doe</strong>, your book order has been successfully placed.</p>

    <div class="order-details">
      <p><strong>Order ID:</strong> #123456</p>
      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Author</th>
            <th>Price</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td>The Great Gatsby</td>
            <td>F. Scott Fitzgerald</td>
            <td>$25.00</td>
          </tr>
          <tr>
            <td>2</td>
            <td>1984</td>
            <td>George Orwell</td>
            <td>$20.00</td>
          </tr>
          <!-- Add more books here dynamically if needed -->
        </tbody>
      </table>
      <p><strong>Total:</strong> $45.00</p>
      <p><strong>Pickup Date:</strong> 15 Aug 2025</p>
    </div>

    <a href="CustomerDashboard.jsp" class="btn-home">🏠 Go to Home</a>
  </div>
</body>
</html>
    