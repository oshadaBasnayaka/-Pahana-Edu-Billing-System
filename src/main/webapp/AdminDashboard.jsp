<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Pahana Edu - Admin Dashboard</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome for icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <style>
  :root {
      --primary-color: #4e54c8;
      --secondary-color: #8f94fb;
      --dark-color: #2c3e50;
    }
    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: #f8f9fa;
    }

    .sidebar {
      min-height: 100vh;
      background-color: #343a40;
      color: white;
    }

    .sidebar .nav-link {
      color: #ccc;
      padding: 15px;
      transition: background-color 0.3s ease;
    }

    .sidebar .nav-link:hover,
    .sidebar .nav-link.active {
      background-color: #495057;
      color: white;
    }

    .topbar {
      background-color: #fff;
      border-bottom: 1px solid #ddd;
    }

    .card {
      box-shadow: 0 2px 6px rgba(0,0,0,0.05);
    }

    .content-area {
      padding: 30px;
    }

    @media (max-width: 768px) {
      .sidebar {
        min-height: auto;
      }
      }

    /* Your Provided CSS */
    .mission-section {
      padding: 80px 0;
    }

    .mission-header {
      margin-bottom: 30px;
    }

    .mission-title {
      font-size: 36px;
      font-weight: 700;
      margin-bottom: 20px;
      color: var(--dark-color);
    }

    .mission-card {
      background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
      border-radius: 15px;
      padding: 30px;
      color: white;
      box-shadow: 0 10px 20px rgba(58, 123, 213, 0.2);
      height: 100%;
      transition: all 0.3s ease;
      cursor: pointer;
      overflow: hidden;
      position: relative;
      text-align: center;
    }

    .mission-card:hover {
      transform: translateY(-10px);
      box-shadow: 0 15px 30px rgba(58, 123, 213, 0.3);
    }

    .mission-card-title {
      font-size: 22px;
      font-weight: 600;
      margin-top: 20px;
    }

    .mission-card img {
      width: 100px;
      height: 100px;
      object-fit: cover;
      border-radius: 50%;
      margin-bottom: 15px;
      background-color: white;
      padding: 5px;
    }

    .container-custom {
      max-width: 1200px;
      margin: auto;
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

.admin-badge {
    display: inline-flex;
    align-items: center;
    background: linear-gradient(90deg, #ff416c, #ff4b2b);
    color: #fff;
    padding: 6px 12px;
    border-radius: 20px;
    font-weight: 600;
    font-size: 0.95rem;
    box-shadow: 0 4px 10px rgba(0,0,0,0.15);
    transition: transform 0.3s, box-shadow 0.3s;
}

.admin-badge i {
    margin-right: 6px;
}

.admin-badge:hover {
    transform: translateY(-2px);
    box-shadow: 0 6px 15px rgba(0,0,0,0.2);
}


.footer a:hover {
    color: #ffd166;            /* Change color on hover */
}

.footer-container {
    max-width: 1200px;         /* Limit width */
    margin: 0 auto;            /* Center container */
    padding: 0 20px;           /* Horizontal padding */
}


}
  </style>
</head>
<body>

  <div class="container-fluid">
    <div class="row">
      <!-- Sidebar -->
      <nav class="col-md-2 d-none d-md-block sidebar">
        <div class="p-3">
          <h4 class="text-white mb-4 text-center">Pahana Edu</h4>
          <ul class="nav flex-column">
            <li class="nav-item">
              <a class="nav-link active" href="#"><i class="fas fa-tachometer-alt me-2"></i>Dashboard</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="CustomerController"><i class="fas fa-user me-2"></i>Customers</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="ItemsController"><i class="fas fa-book me-2"></i>Items</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#"><i class="fas fa-file-invoice me-2"></i>Billing</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#"><i class="fas fa-question-circle me-2"></i>Help</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-danger" href="#"><i class="fas fa-sign-out-alt me-2"></i>Logout</a>
            </li>
          </ul>
        </div>
      </nav>

      <!-- Main Content -->
      <main class="col-md-10 ms-sm-auto col-lg-10 px-md-4">
        <!-- Topbar -->
        <div class="topbar d-flex justify-content-between align-items-center py-3 px-4">
          <h5 class="mb-0">Admin Dashboard</h5>
          <span><i class="fas fa-user-shield me-2"></i> Admin</span>
        </div>

        <!-- Dashboard Cards -->
        <div class="content-area">
          <div class="row g-4">
            <div class="col-md-4">
              <div class="card p-4">
                <div class="d-flex justify-content-between align-items-center">
                  <div>
                    <h6>Total Customers</h6>
                    <h3>0</h3>
                  </div>
                  <i class="fas fa-users fa-2x text-primary"></i>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card p-4">
                <div class="d-flex justify-content-between align-items-center">
                  <div>
                    <h6>Total Items</h6>
                    <h3>0</h3>
                  </div>
                  <i class="fas fa-book fa-2x text-success"></i>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card p-4">
                <div class="d-flex justify-content-between align-items-center">
                  <div>
                    <h6>Bills Generated</h6>
                    <h3>0</h3>
                  </div>
                  <i class="fas fa-receipt fa-2x text-warning"></i>
                </div>
              </div>
            </div>
          </div>

          <!-- Placeholder for table or chart -->
           <section class="mission-section">
    
<h5 class="mb-0">Admin Dashboard</h5>

      <div class="row g-4">
        <!-- Manage Customers -->
        <div class="col-md-4">
          <div class="mission-card">
            <img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" alt="Manage Customers">
            <div class="mission-card-title">Manage Customers</div>
          </div>
        </div>

        <!-- Manage Items -->
        <div class="col-md-4">
          <div class="mission-card">
            <img src="https://cdn-icons-png.flaticon.com/512/4341/4341065.png" alt="Manage Items">
            <div class="mission-card-title">Manage Items</div>
          </div>
        </div>

        <!-- View Bill Cart -->
        <div class="col-md-4">
          <div class="mission-card">
            <img src="https://cdn-icons-png.flaticon.com/512/833/833314.png" alt="Bill Cart">
            <div class="mission-card-title">View Bill</div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <footer class="footer">
  <div class="footer-container">
    <p>© 2025 <a href="#">Pahana Edu Bookshop</a>. All Rights Reserved</p>
  </div>
</footer>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

    