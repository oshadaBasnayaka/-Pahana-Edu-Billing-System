<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Online Bookshop - Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">

    <style>
        /* General Body Styling */
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
        }

        /* Hero Section */
        .hero {
            background: url(img/library-with-books.jpg) no-repeat center center/cover;
            color: white;
            height: 90vh;
            display: flex;
            align-items: center;
            position: relative;
        }
        .hero::before {
            content: '';
            position: absolute;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background-color: rgba(0,0,0,0.5);
        }
        .hero .container { position: relative; z-index: 2; }
        .hero h1 { font-size: 3rem; }
        .hero p { font-size: 1.2rem; }

        /* Why Choose Us */
        .why-choose-us { text-align: center; padding: 60px 20px; background-color: #fff; }
        .why-choose-us h2 { font-size: 2rem; color: #333; margin-bottom: 20px; }
        .subtitle { color: #777; margin-bottom: 40px; }
        .f-container { display: flex; flex-wrap: wrap; justify-content: center; gap: 20px; }
        .f { background-color: #fdfdfd; padding: 25px; width: 260px; border-radius: 12px; box-shadow: 0px 6px 15px rgba(0,0,0,0.1); transition: transform 0.3s ease, box-shadow 0.3s ease; }
        .f i { font-size: 45px; color: #007bff; margin-bottom: 15px; }
        .f h3 { font-size: 1.1rem; color: #333; margin-bottom: 8px; }
        .f p { color: #555; font-size: 0.95rem; }
        .f:hover { transform: translateY(-7px); box-shadow: 0px 10px 20px rgba(0,0,0,0.15); }

        /* Section Container (Image + Text) */
        .section-container { display: flex; flex-wrap: wrap; justify-content: center; align-items: center; padding: 60px 20px; background-color: #f9f9f9; }
        .image-container { flex: 1; min-width: 300px; display: flex; justify-content: center; }
        .image-container img { width: 80%; border-radius: 15px; }
        .content-container { flex: 1; min-width: 300px; padding: 20px; }
        .content-container h1 { font-size: 2.5rem; color: #333; }
        .content-container h1 span { color: #007bff; }
        .content-container p { color: #555; line-height: 1.6; margin: 15px 0; }
        .content-container a { text-decoration: none; color: #007bff; font-weight: 500; }

        /* Custom Cards / Apps Section */
        .apps-section { padding: 50px 20px; display: flex; justify-content: center; flex-wrap: wrap; gap: 20px; }
        .custom-card { display: flex; align-items: center; justify-content: space-between; padding: 20px; background: #007bff; color: white; border-radius: 15px; width: 350px; box-shadow: 0px 6px 15px rgba(0,0,0,0.1); }
        .custom-card img { width: 80px; height: auto; margin-right: 15px; }
        .custom-card .card-content h5 { font-size: 1rem; font-weight: 600; margin-bottom: 5px; }
        .custom-card .card-content p { font-size: 0.9rem; }
        .custom-card .arrow-icon { font-size: 1.2rem; color: white; }

        /* FAQ Section */
        .faq-container { max-width: 1200px; margin: 50px auto; padding: 0 20px; text-align: left; }
        .faq-container h2 { font-size: 1.8rem; font-weight: 600; margin-bottom: 30px; text-align: center; }
        .faq-item { border-bottom: 1px solid #e0e0e0; padding: 15px 0; cursor: pointer; transition: background 0.3s ease; }
        .faq-item:hover { background: #fafafa; }
        .faq-question { display: flex; justify-content: space-between; align-items: center; font-size: 1.1rem; font-weight: 500; border: none; background: none; width: 100%; padding: 5px 0; color: #333; }
        .faq-answer { max-height: 0; overflow: hidden; transition: max-height 0.3s ease; font-size: 0.95rem; color: #555; line-height: 1.6; }
        .faq-answer p { margin-top: 10px; }
        .arrow { font-size: 1.2rem; transition: transform 0.3s; }
        .faq-item.active .arrow { transform: rotate(180deg); }

        /* Footer */
        footer { background-color: #222; color: #fff; text-align: center; padding: 20px 0; }

        /* Responsive */
        @media(max-width:768px){
            .hero h1 { font-size: 2rem; }
            .f-container, .section-container, .apps-section { flex-direction: column; align-items: center; }
            .content-container { text-align: center; }
        }
    </style>
</head>
<body>

<!-- Hero Section -->
<section class="hero d-flex align-items-center">
    <div class="container text-center text-md-start">
        <h1 class="fw-bold">Find the books you love, anytime</h1>
        <p class="lead">Shop from our wide collection and enjoy fast delivery.</p>
        <a href="Login.jsp" class="btn btn-light btn-lg me-3">Start Shopping</a>
       
    </div>
</section>

<!-- Why Choose Us Section -->
<section class="why-choose-us">
    <h2>Why Choose Us</h2>
    <p class="subtitle">We are your trusted online bookshop, offering a wide range of books with unbeatable service.</p>
    <div class="f-container">
        <div class="f">
            <i class="fas fa-shopping-cart"></i>
            <h3>Easy Online Shopping</h3>
            <p>Browse and purchase your favorite books anytime with our user-friendly store.</p>
        </div>
        <div class="f">
            <i class="fas fa-star"></i>
            <h3>Expert Recommendations</h3>
            <p>Get personalized book suggestions from our knowledgeable staff.</p>
        </div>
        <div class="f">
            <i class="fas fa-book"></i>
            <h3>Vast Collection</h3>
            <p>Choose from educational, fiction, and non-fiction books.</p>
        </div>
        <div class="f">
            <i class="fas fa-lock"></i>
            <h3>Secure Payments</h3>
            <p>Fast and safe checkout with multiple payment options.</p>
        </div>
    </div>
</section>

<!-- Section Container: Image + Content -->
<div class="section-container">
    <div class="image-container">
        <img src="img/Tide-gauge-location-at-Colombo-in-Sri-Lanka-Google-Maps-2021.png" alt="Books and Reading">
    </div>
    <div class="content-container">
        <h1>Discover <span>your next favorite book</span></h1>
        <a href="#">Explore our collection</a>
        <p>
            Pahana Edu is your trusted online bookshop in Colombo, offering a wide range of books across genres. 
            From educational textbooks to fiction and non-fiction, we provide curated selections and expert recommendations. 
            Enjoy fast delivery, secure payments, and a seamless online shopping experience designed for book lovers!
        </p>
    </div>
</div>


<!-- FAQ Section -->
<div class="faq-container">
  <h2>Customer Guidelines for Shopping with Pahana Edu Online Bookshop</h2>

  <div class="faq-item">
    <button class="faq-question">
      <span>1. Why must I register to buy books?</span>
      <i class="arrow fas fa-chevron-down"></i>
    </button>
    <div class="faq-answer">
      <p>Registering allows us to create a secure and personalized shopping experience for you. It helps us store your order history, process returns smoothly, and recommend books based on your preferences.</p>
    </div>
  </div>

  

  <div class="faq-item">
    <button class="faq-question">
      <span>2. How do I place an order and make payment?</span>
      <i class="arrow fas fa-chevron-down"></i>
    </button>
    <div class="faq-answer">
      <p>Simply browse our collection, add your chosen books to the cart, and proceed to checkout. You can pay securely online using credit/debit cards, mobile payments, or opt for cash on delivery in selected areas.</p>
    </div>
  </div>

  <div class="faq-item">
    <button class="faq-question">
      <span>3. Can I download my purchase receipt?</span>
      <i class="arrow fas fa-chevron-down"></i>
    </button>
    <div class="faq-answer">
      <p>Yes. Once your order is confirmed, you can download a digital receipt from your account for your records.</p>
    </div>
  </div>

  <div class="faq-item">
    <button class="faq-question">
      <span>4. How can I check my order status and history?</span>
      <i class="arrow fas fa-chevron-down"></i>
    </button>
    <div class="faq-answer">
      <p>Your account dashboard provides real-time updates on your current orders and a complete history of past purchases, so you can easily track your deliveries and re-order your favorite books.</p>
    </div>
  </div>
</div>

<!-- Custom Cards / Apps Section -->
<section class="apps-section">
    <div class="custom-card">
        <img src="img/qr-scan_4574762.png" alt="QR Code">
        <div class="card-content">
            <h5>Download Our Bookshop App</h5>
            <p>Scan to shop anytime, anywhere</p>
        </div>
        <i class="fas fa-arrow-right arrow-icon"></i>
    </div>

    <div class="custom-card">
        <img src="img/cartoon-people-character-illustration_665280-56285.png" alt="Feedback">
        <div class="card-content">
            <h5>About Us</h5>
            <p>Help us improve your book-buying journey</p>
        </div>
        <a href="About.jsp">
            <i class="fas fa-arrow-right arrow-icon"></i>
        </a>
    </div>
</section>


<!-- Footer -->
<footer>
    <p>&copy; <%= java.time.Year.now() %> Pahana Edu Bookshop. All Rights Reserved.</p>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<!-- FAQ Toggle Script -->
<script>
document.addEventListener('DOMContentLoaded', () => {
  const faqItems = document.querySelectorAll('.faq-item');
  faqItems.forEach(item => {
    const questionBtn = item.querySelector('.faq-question');
    const answerPanel = item.querySelector('.faq-answer');
    questionBtn.addEventListener('click', () => {
      item.classList.toggle('active');
      answerPanel.style.maxHeight = item.classList.contains('active') ? answerPanel.scrollHeight + 'px' : 0;
    });
  });
});
</script>

</body>
</html>
    