<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us - Pahana Edu Bookshop</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

<!-- Include your existing CSS (unchanged) -->
<style>
:root {
      --primary-color: #3a7bd5;
      --secondary-color: #00d2ff;
      --accent-color: #20bf6b;
      --dark-color: #333333;
      --light-color: #f8f9fa;
    }
    
    body {
      font-family: 'Segoe UI', Arial, sans-serif;
      margin: 0;
      padding: 0;
      color: var(--dark-color);
    }
    
    
    .hero-section {
      position: relative;
      height: 500px;
      background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('img/19711.jpg') no-repeat center center/cover;
      color: white;
      display: flex;
      flex-direction: column;
      justify-content: center;
      padding: 0 50px;
      overflow: hidden;
    }
    
    .hero-content {
      position: relative;
      z-index: 2;
      max-width: 800px;
    }
    
    .hero-title {
      font-size: 60px;
      font-weight: 800;
      margin-bottom: 20px;
      animation: fadeInUp 1s ease;
    }
    
    .hero-subtitle {
      font-size: 20px;
      font-weight: 400;
      margin-bottom: 30px;
      opacity: 0.9;
      animation: fadeInUp 1s ease 0.2s both;
    }
    
    .hero-gradient {
      position: absolute;
      bottom: 0;
      left: 0;
      right: 0;
      height: 150px;
      background: linear-gradient(to top, rgba(0, 0, 0, 0.7), transparent);
    }
    
    .floating-card {
      background: white;
      border-radius: 15px;
      padding: 30px;
      box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
      margin-top: -80px;
      position: relative;
      z-index: 5;
      animation: fadeIn 1s ease 0.4s both;
    }
    
   
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
    
    .mission-text {
      font-size: 18px;
      line-height: 1.7;
      color: #555;
      margin-bottom: 30px;
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
    }
    
    .mission-card:hover {
      transform: translateY(-10px);
      box-shadow: 0 15px 30px rgba(58, 123, 213, 0.3);
    }
    
    .mission-card-title {
      font-size: 22px;
      font-weight: 600;
      margin-bottom: 15px;
      display: flex;
      align-items: center;
    }
    
    .mission-card-title i {
      margin-right: 10px;
      font-size: 24px;
    }
    
    .mission-card-text {
      font-size: 16px;
      line-height: 1.6;
      opacity: 0.9;
    }
    
    .mission-card::after {
      content: '';
      position: absolute;
      bottom: -30px;
      right: -30px;
      width: 100px;
      height: 100px;
      background: rgba(255, 255, 255, 0.1);
      border-radius: 50%;
    }
    
    .mission-statement {
      background: #f9fbff;
      border-radius: 12px;
      padding: 30px;
      margin-top: 30px;
      border: 1px solid #eef2f7;
      transition: all 0.3s ease;
      position: relative;
      overflow: hidden;
    }
    
    .mission-statement::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      width: 5px;
      height: 100%;
      background: linear-gradient(to bottom, var(--primary-color), var(--secondary-color));
    }
    
    .mission-statement-header {
      display: flex;
      align-items: center;
      justify-content: space-between;
      cursor: pointer;
      padding: 0;
      background: none;
      border: none;
      width: 100%;
      text-align: left;
      color: var(--dark-color);
    }
    
    .mission-statement-title {
      font-size: 18px;
      font-weight: 600;
      margin: 0;
    }
    
    .mission-statement-icon {
      font-size: 20px;
      transition: transform 0.3s ease;
    }
    
    .mission-statement.active .mission-statement-icon {
      transform: rotate(180deg);
    }
    
    .mission-statement-content {
      max-height: 0;
      overflow: hidden;
      transition: max-height 0.3s ease;
      margin-top: 0;
      font-size: 16px;
      line-height: 1.7;
      color: #555;
    }
    
    .mission-statement.active .mission-statement-content {
      max-height: 500px;
      margin-top: 20px;
    }
    
   
    .ceo-section {
      padding: 100px 0;
      background: linear-gradient(to right, #f8f9fa 50%, #e9ecef 50%);
      overflow: hidden;
    }
    
    .ceo-container {
      position: relative;
    }
    
    .ceo-image-container {
      position: relative;
      z-index: 2;
    }
    
    .ceo-image {
      border-radius: 15px;
      box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
      transition: all 0.3s ease;
    }
    
    .ceo-image:hover {
      transform: scale(1.02);
      box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
    }
    
    .ceo-content {
      padding: 0 50px;
    }
    
    .ceo-title {
      font-size: 42px;
      font-weight: 800;
      margin-bottom: 20px;
      line-height: 1.2;
    }
    
    .ceo-highlight {
      background: linear-gradient(to right, var(--primary-color), var(--secondary-color));
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
    }
    
    .ceo-text {
      font-size: 18px;
      line-height: 1.7;
      color: #555;
      margin-bottom: 30px;
    }
    
    .ceo-btn {
      background: var(--dark-color);
      color: white;
      border: none;
      border-radius: 50px;
      padding: 15px 30px;
      font-size: 16px;
      font-weight: 600;
      transition: all 0.3s ease;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    }
    
    .ceo-btn:hover {
      background: #222;
      transform: translateY(-3px);
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
    }
    
    
    .feedback-section {
      padding: 80px 0;
      background: linear-gradient(135deg, rgba(58, 123, 213, 0.05), rgba(0, 210, 255, 0.05));
    }
    
    .feedback-container {
      max-width: 800px;
      margin: 0 auto;
      background: white;
      border-radius: 15px;
      padding: 40px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
    }
    
    .feedback-title {
      font-size: 32px;
      font-weight: 700;
      margin-bottom: 30px;
      text-align: center;
      color: var(--dark-color);
    }
    
    .feedback-input {
      background-color: #f8f9fa;
      border: 1px solid #eef2f7;
      border-radius: 8px;
      padding: 15px;
      font-size: 16px;
      transition: all 0.3s ease;
      margin-bottom: 20px;
    }
    
    .feedback-input:focus {
      border-color: var(--primary-color);
      box-shadow: 0 0 10px rgba(58, 123, 213, 0.1);
    }
    
    .feedback-textarea {
      min-height: 150px;
    }
    
    .feedback-btn {
      background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
      color: white;
      border: none;
      border-radius: 50px;
      padding: 15px 30px;
      font-size: 16px;
      font-weight: 600;
      width: 100%;
      transition: all 0.3s ease;
      box-shadow: 0 5px 15px rgba(58, 123, 213, 0.2);
    }
    
    .feedback-btn:hover {
      transform: translateY(-3px);
      box-shadow: 0 8px 20px rgba(58, 123, 213, 0.3);
    }
    
    
    .app-section {
      padding: 80px 0;
    }
    
    .app-title {
      font-size: 32px;
      font-weight: 700;
      margin-bottom: 40px;
      text-align: center;
      color: var(--dark-color);
    }
    
    .app-card {
      background: white;
      border-radius: 15px;
      padding: 25px;
      display: flex;
      align-items: center;
      box-shadow: 0 10px 20px rgba(0, 0, 0, 0.05);
      transition: all 0.3s ease;
      margin: 0 15px;
    }
    
    .app-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
    }
    
    .app-qr {
      width: 100px;
      height: 100px;
      object-fit: contain;
      margin-right: 20px;
    }
    
    .app-card-content {
      flex-grow: 1;
    }
    
    .app-card-title {
      font-size: 18px;
      font-weight: 600;
      margin-bottom: 5px;
      color: var(--dark-color);
    }
    
    .app-card-subtitle {
      font-size: 14px;
      color: #777;
    }
    
    .app-arrow {
      font-size: 20px;
      color: var(--dark-color);
      transition: transform 0.3s ease;
    }
    
    .app-card:hover .app-arrow {
      transform: translateX(5px);
    }
    
    
    .footer {
      background: var(--dark-color);
      color: white;
      padding: 20px 0;
      text-align: center;
    }
    
    .footer-container {
      display: flex;
      justify-content: space-between;
      align-items: center;
      max-width: 1200px;
      margin: 0 auto;
      padding: 0 20px;
    }
    
    .footer-links a {
      color: white;
      text-decoration: none;
      margin: 0 15px;
      transition: color 0.3s ease;
    }
    
    .footer-links a:hover {
      color: var(--secondary-color);
    }
    
    
    @keyframes fadeIn {
      from { opacity: 0; }
      to { opacity: 1; }
    }
    
    @keyframes fadeInUp {
      from { opacity: 0; transform: translateY(30px); }
      to { opacity: 1; transform: translateY(0); }
    }
    
   
    @media (max-width: 992px) {
      .hero-title {
        font-size: 48px;
      }
      
      .ceo-content {
        padding: 30px 0 0 0;
      }
      
      .app-card {
        margin-bottom: 20px;
      }
    }
    
    @media (max-width: 768px) {
      .hero-title {
        font-size: 36px;
      }
      
      .hero-section {
        height: 400px;
        padding: 0 30px;
      }
      
      .floating-card {
        margin-top: -40px;
        padding: 20px;
      }
      
      .ceo-title {
        font-size: 32px;
      }
      
      .mission-title, .feedback-title, .app-title {
        font-size: 28px;
      }
      
      .mission-card {
        margin-bottom: 20px;
      }
    }
</style>
</head>
<body>

<!-- HERO SECTION -->
<section class="hero-section">
  <div class="hero-content">
    <h1 class="hero-title">About Us</h1>
    <p class="hero-subtitle">Discover the story behind your favorite online bookshop</p>
  </div>
  <div class="hero-gradient"></div>
</section>

<!-- MISSION CARD -->
<div class="container">
  <div class="floating-card">
    <h2 class="mission-title">Empowering Minds, One Book at a Time</h2>
    <p class="mission-text">At Pahana Edu, we believe in the transformative power of books. From educational materials to inspiring fiction, we aim to make quality reading accessible, affordable, and enjoyable for everyone across Sri Lanka and beyond.</p>

    <div class="mission-statement">
      <button class="mission-statement-header">
        <h3 class="mission-statement-title">Read our full mission statement</h3>
        <i class="fas fa-chevron-down mission-statement-icon"></i>
      </button>
      <div class="mission-statement-content">
        <p>Our mission at Pahana Edu Bookshop is to ignite the passion for reading by providing a wide range of books at your fingertips. We strive to support students, parents, teachers, and avid readers by offering curated collections, affordable pricing, and seamless delivery.</p>
        <p>From textbooks to novels, and from exam prep to children’s literature, we are your trusted partner in lifelong learning and literary discovery.</p>
      </div>
    </div>
  </div>
</div>

<!-- OUR VALUES -->
<section class="mission-section">
  <div class="container">
    <div class="mission-header">
      <h2 class="mission-title">Our Core Values</h2>
      <p class="mission-text">Our values guide our commitment to education, service, and community impact.</p>
    </div>
    <div class="row g-4">
      <div class="col-md-4">
        <div class="mission-card">
          <h3 class="mission-card-title"><i class="fas fa-book-open"></i> Literacy for All</h3>
          <p class="mission-card-text">We believe everyone deserves access to knowledge. We’re dedicated to eliminating barriers to literacy and education.</p>
        </div>
      </div>
      <div class="col-md-4">
        <div class="mission-card">
          <h3 class="mission-card-title"><i class="fas fa-smile"></i> Customer First</h3>
          <p class="mission-card-text">Your satisfaction is our priority. We are committed to fast service, easy access, and affordable prices.</p>
        </div>
      </div>
      <div class="col-md-4">
        <div class="mission-card">
          <h3 class="mission-card-title"><i class="fas fa-leaf"></i> Sustainable Learning</h3>
          <p class="mission-card-text">We aim to promote eco-friendly practices in packaging and printing, and support local authors and publishers.</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- CEO MESSAGE -->
<section class="ceo-section">
  <div class="container ceo-container">
    <div class="row align-items-center">
      <div class="col-lg-6 ceo-image-container">
        <img src="img/businessman-goes-up-stairs-profit-growth_1029476-169334.jpg" alt="CEO Image" class="img-fluid ceo-image">
      </div>
      <div class="col-lg-6 ceo-content">
        <h2 class="ceo-title">A message from our <br><span class="ceo-highlight">Founder</span></h2>
        <p class="ceo-text">Books shaped our lives—and now we want to shape yours. Learn how our story began and where we're going next in building Sri Lanka’s best online bookshop.</p>
        <button class="ceo-btn">Read Our Story</button>
      </div>
    </div>
  </div>
</section>

<!-- FEEDBACK FORM -->
<section class="feedback-section">
  <div class="container">
    <div class="feedback-container">
      <h2 class="feedback-title">Share Your Thoughts</h2>
      <form action="${pageContext.request.contextPath}/customer/submitFeedback" method="post">
        <div class="mb-4">
          <label for="email" class="form-label fw-bold">Email:</label>
          <input type="email" name="email" id="email" class="form-control feedback-input" required>
        </div>
        <div class="mb-4">
          <label for="subject" class="form-label fw-bold">Subject:</label>
          <input type="text" name="subject" id="subject" class="form-control feedback-input" required>
        </div>
        <div class="mb-4">
          <label for="message" class="form-label fw-bold">Message:</label>
          <textarea name="message" id="message" class="form-control feedback-input feedback-textarea" rows="5" required></textarea>
        </div>
        <button type="submit" class="feedback-btn"><i class="fas fa-paper-plane me-2"></i> SEND MESSAGE</button>
      </form>
    </div>
  </div>
</section>

<!-- QR APP SECTION -->
<section class="app-section">
  <div class="container">
    <h2 class="app-title">Stay Connected</h2>
    <div class="d-flex flex-wrap justify-content-center">
      <div class="app-card">
        <img src="img/qr-scan_4574762.png" alt="QR Code 1" class="app-qr">
        <div class="app-card-content">
          <h5 class="app-card-title">Download Our App</h5>
          <p class="app-card-subtitle">Scan to access the latest books</p>
        </div>
        <i class="fas fa-arrow-right app-arrow"></i>
      </div>
      <div class="app-card">
        <img src="img/cartoon-people-character-illustration_665280-56285.png" alt="QR Code 2" class="app-qr">
        <div class="app-card-content">
          <h5 class="app-card-title">Visit Our Blog</h5>
          <p class="app-card-subtitle">Get reading tips & reviews</p>
        </div>
        <a href="About.jsp" class="text-decoration-none text-dark">
          <i class="fas fa-arrow-right app-arrow"></i>
        </a>
      </div>
    </div>
  </div>
</section>

<!-- FOOTER -->
<footer class="footer">
  <div class="footer-container">
   
  <p>&copy; 2025 Pahana Edu Bookshop. All Rights Reserved</p>
 
</footer>

<!-- JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script>
  document.addEventListener('DOMContentLoaded', () => {
    const missionStatement = document.querySelector('.mission-statement');
    const missionHeader = document.querySelector('.mission-statement-header');
    const missionContent = document.querySelector('.mission-statement-content');
    missionHeader.addEventListener('click', () => {
      missionStatement.classList.toggle('active');
      missionContent.style.maxHeight = missionStatement.classList.contains('active') ? missionContent.scrollHeight + 'px' : 0;
    });
  });
</script>

</body>
</html>
