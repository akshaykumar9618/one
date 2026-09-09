<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · friendly store</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz@14..32&family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    /* ----- reset & variables ----- */
    * { box-sizing: border-box; margin: 0; }
    body {
      font-family: 'Inter', 'Plus Jakarta Sans', sans-serif;
      background: #f7fafd;
      color: #0b1e2e;
      line-height: 1.5;
      padding-bottom: 2rem;
    }
    :root {
      --radius-lg: 24px;
      --radius-md: 16px;
      --radius-sm: 12px;
      --shadow-card: 0 12px 30px rgba(0,20,40,0.04);
      --shadow-hover: 0 20px 40px rgba(0,20,40,0.08);
      --bg-surface: #ffffff;
      --bg-soft: #f0f5fa;
      --primary: #0b2a41;
      --accent: #2d9cdb;
      --accent-soft: #e1f0fa;
      --muted: #5f7a92;
      --border-light: rgba(11,42,65,0.06);
    }
    a { text-decoration: none; color: inherit; }
    button { cursor: pointer; border: none; background: none; font-family: inherit; }
    img { display: block; max-width: 100%; }

    /* ----- container & helpers ----- */
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }
    .flex { display: flex; align-items: center; gap: 12px; }
    .flex-between { display: flex; align-items: center; justify-content: space-between; flex-wrap: wrap; gap: 12px; }
    .grid-2 { display: grid; grid-template-columns: repeat(2,1fr); gap: 20px; }
    .grid-4 { display: grid; grid-template-columns: repeat(4,1fr); gap: 20px; }
    .text-muted { color: var(--muted); }
    .fw-600 { font-weight: 600; }

    /* ----- header (friendly & clean) ----- */
    header {
      background: rgba(255,255,255,0.85);
      backdrop-filter: blur(6px);
      border-bottom: 1px solid var(--border-light);
      position: sticky;
      top: 0;
      z-index: 50;
      padding: 10px 0;
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 14px;
    }
    .brand {
      font-size: 1.5rem;
      font-weight: 700;
      letter-spacing: -0.3px;
      background: linear-gradient(145deg, #0b2a41, #1a4b6e);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .brand i { color: var(--accent); -webkit-text-fill-color: var(--accent); margin-right: 4px; }

    .nav-links {
      display: flex;
      gap: 6px;
      flex-wrap: wrap;
    }
    .nav-links a {
      padding: 6px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.9rem;
      color: var(--primary);
      transition: 0.2s;
    }
    .nav-links a:hover { background: var(--bg-soft); color: var(--accent); }
    .nav-links a i { margin-right: 6px; }

    .search-wrap {
      display: flex;
      align-items: center;
      background: white;
      border-radius: 60px;
      padding: 4px 4px 4px 18px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.02);
      border: 1px solid var(--border-light);
      transition: 0.2s;
      min-width: 220px;
    }
    .search-wrap:focus-within { border-color: var(--accent); box-shadow: 0 4px 14px rgba(45,156,219,0.15); }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 10px 0;
      font-size: 0.9rem;
      width: 100%;
      outline: none;
    }
    .search-wrap button {
      background: var(--accent);
      color: white;
      padding: 8px 16px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 0.9rem;
      transition: 0.2s;
    }
    .search-wrap button:hover { background: #1b7aa8; }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .icon-btn {
      background: var(--bg-soft);
      width: 40px;
      height: 40px;
      border-radius: 60px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      color: var(--primary);
      transition: 0.2s;
      font-size: 1.1rem;
    }
    .icon-btn:hover { background: var(--accent-soft); color: var(--accent); }

    .cart-badge {
      position: relative;
    }
    .cart-badge .badge {
      position: absolute;
      top: -6px;
      right: -6px;
      background: #e74c5e;
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    /* mobile toggle */
    .mobile-toggle {
      display: none;
      font-size: 1.6rem;
      background: var(--bg-soft);
      border-radius: 60px;
      width: 44px;
      height: 44px;
      align-items: center;
      justify-content: center;
    }

    /* ----- hero (welcoming) ----- */
    .hero {
      background: linear-gradient(130deg, #0b2a41 0%, #1f4b6e 100%);
      border-radius: var(--radius-lg);
      padding: 50px 40px;
      margin: 24px auto 32px;
      color: white;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 24px;
    }
    .hero-content { max-width: 560px; }
    .hero-content h1 {
      font-size: 2.6rem;
      font-weight: 700;
      letter-spacing: -0.5px;
      line-height: 1.2;
      margin-bottom: 12px;
    }
    .hero-content p { opacity: 0.85; font-size: 1.05rem; margin-bottom: 24px; }
    .hero-actions { display: flex; gap: 12px; flex-wrap: wrap; }
    .btn {
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      transition: 0.2s;
      display: inline-flex;
      align-items: center;
      gap: 8px;
    }
    .btn-primary { background: white; color: #0b2a41; }
    .btn-primary:hover { background: #f0f5fa; transform: scale(0.97); }
    .btn-outline { border: 2px solid rgba(255,255,255,0.3); color: white; }
    .btn-outline:hover { background: rgba(255,255,255,0.08); border-color: white; }

    /* ----- section titles ----- */
    .section-title {
      font-size: 1.8rem;
      font-weight: 700;
      margin-bottom: 4px;
      letter-spacing: -0.3px;
    }
    .section-header { margin-bottom: 28px; }

    /* ----- categories (pill style) ----- */
    .category-pills {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
      margin-bottom: 32px;
    }
    .pill {
      background: white;
      padding: 12px 24px;
      border-radius: 60px;
      box-shadow: var(--shadow-card);
      font-weight: 500;
      display: inline-flex;
      align-items: center;
      gap: 10px;
      transition: 0.2s;
      border: 1px solid transparent;
    }
    .pill i { color: var(--accent); font-size: 1.2rem; }
    .pill:hover {
      transform: translateY(-3px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-soft);
      background: #fafdff;
    }

    /* ----- product cards (airy & friendly) ----- */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: white;
      border-radius: var(--radius-md);
      box-shadow: var(--shadow-card);
      overflow: hidden;
      transition: 0.25s;
      display: flex;
      flex-direction: column;
      border: 1px solid rgba(0,0,0,0.02);
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
    }
    .product-card img {
      height: 200px;
      object-fit: cover;
      width: 100%;
      background: #f0f5fa;
    }
    .product-body {
      padding: 16px 16px 12px;
      flex: 1;
    }
    .product-body h4 {
      font-size: 1rem;
      font-weight: 600;
      margin-bottom: 4px;
      line-height: 1.3;
    }
    .product-body .category-tag {
      font-size: 0.7rem;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      color: var(--muted);
      background: var(--bg-soft);
      padding: 2px 10px;
      border-radius: 30px;
      display: inline-block;
      margin-bottom: 8px;
    }
    .price-wrap {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-top: 8px;
    }
    .price-current { font-weight: 700; font-size: 1.2rem; }
    .price-old { text-decoration: line-through; color: var(--muted); font-size: 0.9rem; }
    .rating { color: #f5b342; font-size: 0.9rem; letter-spacing: 1px; }
    .product-footer {
      padding: 8px 16px 16px;
      display: flex;
      gap: 8px;
    }
    .btn-add {
      background: var(--accent);
      color: white;
      padding: 10px 12px;
      border-radius: 60px;
      font-weight: 600;
      flex: 1;
      transition: 0.2s;
    }
    .btn-add:hover { background: #1b7aa8; transform: scale(0.97); }
    .btn-wish {
      background: var(--bg-soft);
      width: 44px;
      border-radius: 60px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 1.1rem;
      transition: 0.2s;
    }
    .btn-wish:hover { background: #ffe8ec; color: #e74c5e; }

    /* ----- deal / flash sale (friendly card) ----- */
    .deal-card {
      background: white;
      border-radius: var(--radius-md);
      box-shadow: var(--shadow-card);
      display: flex;
      flex-wrap: wrap;
      overflow: hidden;
      margin: 12px 0 24px;
    }
    .deal-card img {
      width: 45%;
      min-height: 240px;
      object-fit: cover;
      background: #eef3f7;
    }
    .deal-info {
      padding: 28px 32px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-info h3 { font-size: 1.8rem; font-weight: 700; }
    .timer-group {
      display: flex;
      gap: 12px;
      margin: 16px 0;
    }
    .timer-block {
      background: #0b2a41;
      color: white;
      border-radius: var(--radius-sm);
      padding: 10px 14px;
      min-width: 60px;
      text-align: center;
    }
    .timer-block span { font-size: 1.5rem; font-weight: 700; display: block; }
    .timer-block small { opacity: 0.7; font-size: 0.7rem; text-transform: uppercase; }

    /* ----- testimonials (soft cards) ----- */
    .testimonial-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px,1fr));
      gap: 20px;
    }
    .testi-card {
      background: white;
      padding: 24px;
      border-radius: var(--radius-md);
      box-shadow: var(--shadow-card);
    }
    .testi-card .stars { color: #f5b342; letter-spacing: 2px; }
    .testi-card p { font-size: 0.95rem; margin: 10px 0; }
    .testi-card .avatar {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 8px;
    }
    .testi-card .avatar img {
      width: 44px;
      height: 44px;
      border-radius: 60px;
      object-fit: cover;
      background: #d9e2eb;
    }

    /* ----- newsletter (friendly) ----- */
    .newsletter-box {
      background: linear-gradient(145deg, #0b2a41, #1b4a6b);
      color: white;
      border-radius: var(--radius-lg);
      padding: 40px 32px;
      text-align: center;
      margin: 24px 0;
    }
    .newsletter-box h3 { font-size: 1.8rem; }
    .newsletter-box p { opacity: 0.8; margin-bottom: 20px; }
    .newsletter-form {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 10px;
    }
    .newsletter-form input {
      padding: 14px 22px;
      border-radius: 60px;
      border: none;
      width: 280px;
      max-width: 100%;
      font-size: 0.95rem;
    }
    .newsletter-form button {
      background: var(--accent);
      color: white;
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 600;
      transition: 0.2s;
    }
    .newsletter-form button:hover { background: #1b7aa8; }

    /* ----- footer (clean) ----- */
    footer {
      margin-top: 40px;
      padding: 32px 0 16px;
      border-top: 1px solid var(--border-light);
      color: var(--muted);
    }
    .footer-links {
      display: flex;
      flex-wrap: wrap;
      gap: 32px;
      justify-content: space-between;
    }
    .footer-links .col { line-height: 2; }
    .footer-links .col strong { color: var(--primary); font-weight: 600; display: block; }

    /* ----- responsive ----- */
    @media (max-width: 820px) {
      .nav-links { display: none; }
      .mobile-toggle { display: flex; }
      .search-wrap { min-width: 160px; }
      .hero { padding: 32px 24px; }
      .hero-content h1 { font-size: 2rem; }
      .deal-card img { width: 100%; max-height: 200px; }
      .deal-info { padding: 20px; }
    }
    @media (max-width: 480px) {
      .header-inner { flex-wrap: wrap; }
      .search-wrap { order: 3; width: 100%; }
      .product-grid { grid-template-columns: 1fr 1fr; }
    }
    @media (max-width: 400px) {
      .product-grid { grid-template-columns: 1fr; }
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div class="flex">
      <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
      <span class="brand"><i class="fas fa-store-alt"></i> Nexus<span style="-webkit-text-fill-color:var(--accent);">Shop</span></span>
    </div>

    <nav class="nav-links" id="mainNav">
      <a href="#"><i class="fas fa-home"></i> Home</a>
      <a href="#categories"><i class="fas fa-th-large"></i> Categories</a>
      <a href="#products"><i class="fas fa-fire"></i> Trending</a>
      <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
    </nav>

    <div class="flex">
      <div class="search-wrap">
        <input type="text" id="searchInput" placeholder="Search for anything..." aria-label="Search">
        <button id="searchBtn"><i class="fas fa-search"></i> Search</button>
      </div>

      <div class="header-actions">
        <a class="icon-btn" href="#" aria-label="wishlist"><i class="far fa-heart"></i></a>
        <a class="icon-btn cart-badge" href="#" id="cartBtn" aria-label="cart">
          <i class="fas fa-shopping-bag"></i>
          <span class="badge" id="cartCount">0</span>
        </a>
      </div>
    </div>
  </div>

  <!-- mobile menu -->
  <div id="mobileMenu" style="display:none; background:white; border-top:1px solid var(--border-light); padding:12px 24px;">
    <div style="display:flex; flex-direction:column; gap:8px;">
      <a href="#">Home</a>
      <a href="#categories">Categories</a>
      <a href="#products">Trending</a>
      <a href="#deals">Deals</a>
    </div>
  </div>
</header>

<main class="container">

  <!-- HERO -->
  <section class="hero">
    <div class="hero-content">
      <h1>Fresh finds, <br>friendly prices</h1>
      <p>Curated picks for your lifestyle — from tech to threads. Free shipping on orders over $50.</p>
      <div class="hero-actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Start shopping</button>
        <button class="btn btn-outline" id="exploreDeals">Explore deals</button>
      </div>
    </div>
    <div style="font-size:4.5rem; opacity:0.2; color:white; display:none; @media(min-width:700px){display:block;}">
      <i class="fas fa-gift"></i>
    </div>
  </section>

  <!-- CATEGORIES (pill style) -->
  <section id="categories">
    <div class="section-header">
      <h2 class="section-title">Shop by category</h2>
      <p class="text-muted">Browse our curated collections</p>
    </div>
    <div class="category-pills" id="categoriesGrid" role="list"></div>
  </section>

  <!-- PRODUCTS -->
  <section id="products">
    <div class="section-header">
      <h2 class="section-title">Trending now</h2>
      <p class="text-muted">What people are loving this week</p>
    </div>
    <div class="product-grid" id="productsGrid"></div>
  </section>

  <!-- DEAL (flash sale) -->
  <section id="deals">
    <div class="section-header" style="margin-top: 40px;">
      <h2 class="section-title">⚡ Flash deal</h2>
      <p class="text-muted">Grab it before it's gone</p>
    </div>
    <div class="deal-card">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook Air M2">
      <div class="deal-info">
        <h3>MacBook Air M2</h3>
        <p class="text-muted">Supercharged by the M2 chip — thin, light, and ready for anything.</p>
        <div class="timer-group" id="timerGroup">
          <div class="timer-block"><span id="dealDays">0</span><small>Days</small></div>
          <div class="timer-block"><span id="dealHours">00</span><small>Hrs</small></div>
          <div class="timer-block"><span id="dealMinutes">00</span><small>Min</small></div>
          <div class="timer-block"><span id="dealSeconds">00</span><small>Sec</small></div>
        </div>
        <div class="flex" style="gap:16px; flex-wrap:wrap;">
          <span style="font-size:2rem; font-weight:700;">$999</span>
          <span style="text-decoration:line-through; color:var(--muted);">$1,199</span>
          <span style="background:#e74c5e; color:white; padding:4px 12px; border-radius:40px; font-weight:700;">-17%</span>
        </div>
        <div style="margin-top:12px;">
          <button class="btn btn-primary" id="buyDeal" style="background:#0b2a41; color:white;"><i class="fas fa-bolt"></i> Claim deal</button>
        </div>
      </div>
    </div>
  </section>

  <!-- TESTIMONIALS -->
  <section style="margin-top: 48px;">
    <div class="section-header">
      <h2 class="section-title">❤️ Happy customers</h2>
      <p class="text-muted">Real feedback from real shoppers</p>
    </div>
    <div class="testimonial-grid" id="testimonials"></div>
  </section>

  <!-- NEWSLETTER -->
  <div class="newsletter-box">
    <h3>Never miss a drop</h3>
    <p>Subscribe for exclusive offers and early access</p>
    <form class="newsletter-form" id="newsletterForm" onsubmit="return false;">
      <input type="email" id="newsletterEmail" placeholder="your@email.com" required>
      <button id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
    </form>
    <div id="newsletterMsg" style="margin-top:10px; font-size:0.95rem; display:none;"></div>
  </div>

</main>

<footer>
  <div class="container">
    <div class="footer-links">
      <div class="col">
        <strong><i class="fas fa-store-alt"></i> NexusShop</strong>
        <span class="text-muted" style="display:block;">Modern e‑commerce demo</span>
        <div style="display:flex; gap:12px; margin-top:8px;">
          <a href="#" class="icon-btn" style="background:#eef3f7;"><i class="fab fa-twitter"></i></a>
          <a href="#" class="icon-btn" style="background:#eef3f7;"><i class="fab fa-instagram"></i></a>
          <a href="#" class="icon-btn" style="background:#eef3f7;"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
      <div class="col"><strong>Company</strong>About<br>Careers<br>Press</div>
      <div class="col"><strong>Support</strong>Help<br>Returns<br>Contact</div>
      <div class="col"><strong>Legal</strong>Privacy<br>Terms</div>
    </div>
    <div style="text-align:center; margin-top:28px; font-size:0.85rem; color:var(--muted);">
      &copy; <span id="year"></span> NexusShop · made with <i class="fas fa-heart" style="color:#e74c5e;"></i>
    </div>
  </div>
</footer>

<script>
  (function() {
    // ---------- DATA ----------
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
      { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'New', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category:'phones' },
      { id:2, title:'MacBook Pro 14"', price:1999, oldPrice:null, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category:'laptops' },
      { id:3, title:'Apple Watch S8', price:349, oldPrice:399, rating:5, reviews:214, badge:'-25%', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category:'accessories' },
      { id:4, title:'Nike Air Max 270', price:150, oldPrice:null, rating:4, reviews:53, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category:'footwear' },
      { id:5, title:'Sony A7 IV', price:2499, oldPrice:null, rating:5, reviews:42, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category:'gadgets' },
      { id:6, title:'Chanel No.5', price:120, oldPrice:null, rating:5, reviews:189, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category:'accessories' },
      { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category:'accessories' },
      { id:8, title:'Sony WH-1000XM5', price:399, oldPrice:null, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category:'gadgets' }
    ];

    // ---------- STATE ----------
    let cartCount = 0;
    const cartCountEl = document.getElementById('cartCount');
    const productsGrid = document.getElementById('productsGrid');
    const categoriesGrid = document.getElementById('categoriesGrid');
    const searchInput = document.getElementById('searchInput');

    // ---------- HELPERS ----------
    function escapeHtml(text) {
      if (!text) return '';
      return String(text).replace(/[&<>"]/g, s => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;'}[s] || s));
    }

    function renderStars(rating) {
      return '★'.repeat(Math.round(rating)) + '☆'.repeat(5 - Math.round(rating));
    }

    // ---------- RENDER ----------
    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const pill = document.createElement('button');
        pill.className = 'pill';
        pill.innerHTML = `<i class="fas ${cat.icon}"></i> ${cat.name}`;
        pill.addEventListener('click', () => {
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.getElementById('products').scrollIntoView({ behavior:'smooth', block:'start' });
        });
        categoriesGrid.appendChild(pill);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      if (!list.length) {
        productsGrid.innerHTML = '<p style="grid-column:1/-1; text-align:center; padding:40px 0; color:var(--muted);">No products found, try another search 🧐</p>';
        return;
      }
      list.forEach(p => {
        const card = document.createElement('div');
        card.className = 'product-card';
        card.innerHTML = `
          <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
          <div class="product-body">
            <span class="category-tag">${escapeHtml(p.category)}</span>
            <h4>${escapeHtml(p.title)}</h4>
            <div class="price-wrap">
              <span class="price-current">$${p.price.toLocaleString()}</span>
              ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
            </div>
            <div class="rating">${renderStars(p.rating)} <span style="color:var(--muted);font-size:0.75rem;">(${p.reviews})</span></div>
          </div>
          <div class="product-footer">
            <button class="btn-add" data-id="${p.id}"><i class="fas fa-plus"></i> Add</button>
            <button class="btn-wish" aria-label="wishlist"><i class="far fa-heart"></i></button>
          </div>
        `;
        productsGrid.appendChild(card);
      });

      // add listeners
      productsGrid.querySelectorAll('.btn-add').forEach(btn => {
        btn.addEventListener('click', () => {
          const id = Number(btn.dataset.id);
          const product = PRODUCTS.find(x => x.id === id);
          if (!product) return;
          cartCount++;
          cartCountEl.textContent = cartCount;
          btn.innerHTML = '<i class="fas fa-check"></i> Added';
          btn.style.background = '#2ecc71';
          setTimeout(() => {
            btn.innerHTML = '<i class="fas fa-plus"></i> Add';
            btn.style.background = '';
          }, 1000);
        });
      });
    }

    function filterProducts(query) {
      const q = String(query || '').trim().toLowerCase();
      if (!q) { renderProducts(PRODUCTS); return; }
      const filtered = PRODUCTS.filter(p =>
        p.title.toLowerCase().includes(q) ||
        p.category.toLowerCase().includes(q)
      );
      renderProducts(filtered);
    }

    // ---------- SEARCH ----------
    document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(e.target.value); });

    // ---------- MOBILE MENU ----------
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');
    mobileToggle.addEventListener('click', () => {
      mobileMenu.style.display = mobileMenu.style.display === 'none' ? 'block' : 'none';
    });

    // ---------- DEAL TIMER ----------
    (function setupTimer() {
      const target = new Date(Date.now() + 36 * 60 * 60 * 1000 + 45 * 60 * 1000); // 36h45m
      function tick() {
        const diff = Math.max(0, target - new Date());
        const days = Math.floor(diff / (86400 * 1000));
        const hours = Math.floor((diff % (86400 * 1000)) / (3600 * 1000));
        const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
        const secs = Math.floor((diff % (60 * 1000)) / 1000);
        document.getElementById('dealDays').textContent = days;
        document.getElementById('dealHours').textContent = String(hours).padStart(2,'0');
        document.getElementById('dealMinutes').textContent = String(mins).padStart(2,'0');
        document.getElementById('dealSeconds').textContent = String(secs).padStart(2,'0');
      }
      tick();
      setInterval(tick, 1000);
    })();

    // ---------- OTHER BINDINGS ----------
    document.getElementById('shopNow').addEventListener('click', () => {
      document.getElementById('products').scrollIntoView({ behavior:'smooth' });
    });
    document.getElementById('exploreDeals').addEventListener('click', () => {
      document.getElementById('deals').scrollIntoView({ behavior:'smooth' });
    });
    document.getElementById('buyDeal').addEventListener('click', () => {
      cartCount++;
      cartCountEl.textContent = cartCount;
      alert('🔥 Deal added to cart!');
    });

    // Newsletter
    document.getElementById('newsletterForm').addEventListener('submit',
