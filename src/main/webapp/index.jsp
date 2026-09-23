<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Lumine — Modern E‑Commerce</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <style>
    :root {
      --bg: #f9fbfd;
      --surface: #ffffff;
      --primary: #0b1c2f;
      --primary-light: #1e3a5f;
      --accent: #6c5ce7;
      --accent-soft: #a29bfe;
      --muted: #64748b;
      --muted-light: #94a3b8;
      --card: #ffffff;
      --success: #10b981;
      --warning: #f59e0b;
      --radius-sm: 12px;
      --radius: 20px;
      --radius-lg: 28px;
      --shadow-sm: 0 4px 12px rgba(0, 0, 0, 0.02), 0 1px 2px rgba(0, 0, 0, 0.03);
      --shadow: 0 12px 30px rgba(0, 0, 0, 0.04), 0 4px 8px rgba(0, 0, 0, 0.02);
      --shadow-lg: 0 30px 50px rgba(0, 0, 0, 0.05);
      --container: 1280px;
    }

    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    html, body {
      height: 100%;
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    .container {
      width: 100%;
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 28px;
    }

    /* ----- header ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255, 255, 255, 0.8);
      backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(0, 0, 0, 0.02);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 24px;
      padding: 16px 0;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-family: 'Space Grotesk', sans-serif;
      font-weight: 700;
      font-size: 22px;
      letter-spacing: -0.02em;
      color: var(--primary);
    }

    .brand i {
      color: var(--accent);
      font-size: 24px;
    }

    .brand span {
      color: var(--accent);
    }

    nav.main-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
      align-items: center;
    }

    nav.main-nav li a {
      display: flex;
      gap: 8px;
      align-items: center;
      padding: 10px 16px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 15px;
      color: var(--primary-light);
      transition: all 0.2s ease;
    }

    nav.main-nav li a i {
      font-size: 15px;
      color: var(--muted);
      transition: color 0.2s;
    }

    nav.main-nav li a:hover {
      background: rgba(108, 92, 231, 0.06);
      color: var(--accent);
    }

    nav.main-nav li a:hover i {
      color: var(--accent);
    }

    .search {
      display: flex;
      align-items: center;
      gap: 8px;
      background: white;
      padding: 10px 18px;
      border-radius: 60px;
      min-width: 280px;
      border: 1px solid rgba(0, 0, 0, 0.04);
      box-shadow: var(--shadow-sm);
      transition: box-shadow 0.2s, border-color 0.2s;
    }

    .search:focus-within {
      border-color: var(--accent-soft);
      box-shadow: 0 0 0 4px rgba(108, 92, 231, 0.08);
    }

    .search i {
      color: var(--muted-light);
      font-size: 15px;
    }

    .search input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      font-size: 14px;
      font-family: 'Inter', sans-serif;
    }

    .search input::placeholder {
      color: var(--muted-light);
    }

    .icon-btn {
      background: transparent;
      border: 0;
      cursor: pointer;
      font-size: 18px;
      color: var(--primary-light);
      display: flex;
      align-items: center;
      justify-content: center;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      transition: background 0.2s, color 0.2s;
    }

    .icon-btn:hover {
      background: rgba(108, 92, 231, 0.06);
      color: var(--accent);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }

    .cart {
      position: relative;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      transition: background 0.2s;
    }

    .cart:hover {
      background: rgba(108, 92, 231, 0.06);
    }

    .cart i {
      font-size: 18px;
      color: var(--primary-light);
    }

    .cart-count {
      position: absolute;
      top: -2px;
      right: -2px;
      background: var(--accent);
      color: white;
      font-size: 10px;
      font-weight: 700;
      width: 18px;
      height: 18px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid white;
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: 0;
      font-size: 20px;
      cursor: pointer;
      color: var(--primary);
      width: 40px;
      height: 40px;
      border-radius: 50%;
      align-items: center;
      justify-content: center;
    }

    .mobile-toggle:hover {
      background: rgba(108, 92, 231, 0.06);
    }

    /* ----- hero ----- */
    .hero {
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
      background: linear-gradient(135deg, #0b1c2f 0%, #1e3a5f 100%);
      color: white;
      min-height: 500px;
      padding: 80px 28px;
      border-radius: 0 0 var(--radius-lg) var(--radius-lg);
      margin-bottom: 40px;
      position: relative;
      overflow: hidden;
    }

    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.2;
      mix-blend-mode: overlay;
    }

    .hero .container {
      position: relative;
      z-index: 2;
    }

    .hero h1 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 58px;
      font-weight: 700;
      margin: 0 0 16px;
      letter-spacing: -0.03em;
      line-height: 1.1;
    }

    .hero h1 i {
      color: var(--accent-soft);
      font-style: normal;
    }

    .hero p {
      margin: 0 0 32px;
      font-size: 18px;
      opacity: 0.85;
      max-width: 640px;
      margin-left: auto;
      margin-right: auto;
      font-weight: 400;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 14px 28px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 15px;
      cursor: pointer;
      border: 0;
      transition: all 0.2s ease;
    }

    .btn-primary {
      background: var(--accent);
      color: white;
      box-shadow: 0 8px 20px rgba(108, 92, 231, 0.3);
    }

    .btn-primary:hover {
      background: #5f4bd8;
      transform: translateY(-2px);
      box-shadow: 0 12px 28px rgba(108, 92, 231, 0.4);
    }

    .btn-ghost {
      background: transparent;
      border: 2px solid rgba(255, 255, 255, 0.2);
      color: white;
    }

    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.06);
      border-color: rgba(255, 255, 255, 0.4);
    }

    /* ----- sections ----- */
    .section {
      padding: 60px 0;
    }

    .section .title {
      text-align: center;
      margin-bottom: 40px;
    }

    .section-title {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 34px;
      font-weight: 700;
      letter-spacing: -0.02em;
      margin-bottom: 10px;
    }

    .section .title p {
      color: var(--muted);
      font-size: 16px;
    }

    /* ----- categories ----- */
    .categories {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 20px;
    }

    .cat-card {
      background: var(--card);
      border-radius: var(--radius);
      padding: 28px 16px;
      text-align: center;
      box-shadow: var(--shadow-sm);
      border: 1px solid rgba(0, 0, 0, 0.02);
      transition: all 0.25s ease;
      cursor: pointer;
    }

    .cat-card:hover {
      transform: translateY(-4px);
      box-shadow: var(--shadow);
      border-color: rgba(108, 92, 231, 0.1);
    }

    .cat-card .icon {
      font-size: 32px;
      color: var(--accent);
      margin-bottom: 16px;
    }

    .cat-card h4 {
      margin: 0;
      font-size: 15px;
      font-weight: 600;
    }

    .cat-card .muted {
      font-size: 13px;
      color: var(--muted-light);
      margin-top: 4px;
    }

    /* ----- products ----- */
    .products {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 28px;
    }

    .product {
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      display: flex;
      flex-direction: column;
      box-shadow: var(--shadow-sm);
      border: 1px solid rgba(0, 0, 0, 0.02);
      transition: all 0.25s ease;
      position: relative;
    }

    .product:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-lg);
      border-color: rgba(108, 92, 231, 0.08);
    }

    .product img {
      width: 100%;
      height: 220px;
      object-fit: cover;
      display: block;
      background: #f1f5f9;
    }

    .badge {
      position: absolute;
      top: 16px;
      left: 16px;
      padding: 6px 12px;
      border-radius: 40px;
      font-size: 11px;
      font-weight: 700;
      color: white;
      letter-spacing: 0.3px;
      text-transform: uppercase;
    }

    .badge.new {
      background: var(--accent);
    }

    .badge.sale {
      background: #ef4444;
    }

    .product-body {
      padding: 20px 20px 12px;
      display: flex;
      flex-direction: column;
      gap: 8px;
      flex: 1;
    }

    .product h5 {
      margin: 0;
      font-size: 16px;
      font-weight: 600;
      letter-spacing: -0.01em;
    }

    .product .category {
      font-size: 12px;
      color: var(--muted-light);
      text-transform: uppercase;
      letter-spacing: 0.5px;
      font-weight: 500;
    }

    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 8px;
      margin-top: auto;
      padding-top: 8px;
    }

    .price {
      font-weight: 700;
      font-size: 18px;
      color: var(--primary);
    }

    .old-price {
      color: var(--muted-light);
      text-decoration: line-through;
      font-weight: 500;
      font-size: 13px;
      margin-left: 6px;
    }

    .rating {
      color: #fbbf24;
      font-size: 13px;
      display: flex;
      align-items: center;
      gap: 4px;
    }

    .rating span {
      color: var(--muted-light);
      font-size: 12px;
      font-weight: 400;
    }

    .product-footer {
      padding: 0 20px 20px;
      display: flex;
      gap: 10px;
    }

    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: 0;
      padding: 12px;
      border-radius: 60px;
      cursor: pointer;
      font-weight: 600;
      font-size: 14px;
      transition: all 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      font-family: 'Inter', sans-serif;
    }

    .add-btn:hover {
      background: var(--accent);
    }

    .wish-btn {
      background: transparent;
      border: 1px solid rgba(0, 0, 0, 0.06);
      width: 44px;
      height: 44px;
      border-radius: 60px;
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--muted);
      transition: all 0.2s;
    }

    .wish-btn:hover {
      border-color: #ef4444;
      color: #ef4444;
      background: #fef2f2;
    }

    /* ----- deal ----- */
    .deal {
      display: flex;
      gap: 0;
      background: var(--surface);
      border-radius: var(--radius-lg);
      overflow: hidden;
      align-items: stretch;
      box-shadow: var(--shadow);
      border: 1px solid rgba(0, 0, 0, 0.02);
    }

    .deal img {
      width: 50%;
      height: 420px;
      object-fit: cover;
      display: block;
    }

    .deal .content {
      padding: 48px 48px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .deal h3 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 32px;
      font-weight: 700;
      margin-bottom: 12px;
      letter-spacing: -0.02em;
    }

    .deal .muted {
      color: var(--muted);
      font-size: 16px;
    }

    .timer {
      display: flex;
      gap: 12px;
      margin: 24px 0;
    }

    .time-box {
      background: var(--primary);
      color: white;
      padding: 14px 16px;
      border-radius: var(--radius-sm);
      min-width: 80px;
      text-align: center;
      font-family: 'Space Grotesk', sans-serif;
      font-weight: 600;
      font-size: 22px;
    }

    .time-box div:last-child {
      font-size: 11px;
      font-family: 'Inter', sans-serif;
      font-weight: 500;
      opacity: 0.7;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      margin-top: 4px;
    }

    .deal .price {
      font-size: 32px;
      font-weight: 700;
      font-family: 'Space Grotesk', sans-serif;
    }

    .deal-discount {
      background: #ef4444;
      color: white;
      padding: 8px 14px;
      border-radius: 60px;
      font-weight: 700;
      font-size: 14px;
    }

    /* ----- testimonials ----- */
    .testimonials {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 8px 4px 20px;
      scroll-snap-type: x mandatory;
    }

    .testimonial {
      min-width: 340px;
      background: white;
      padding: 28px;
      border-radius: var(--radius);
      box-shadow: var(--shadow-sm);
      border: 1px solid rgba(0, 0, 0, 0.02);
      scroll-snap-align: start;
    }

    .testimonial .rating {
      color: #fbbf24;
      font-size: 16px;
      margin-bottom: 12px;
    }

    .testimonial p {
      font-size: 15px;
      line-height: 1.6;
      color: var(--primary-light);
      margin-bottom: 20px;
    }

    /* ----- newsletter ----- */
    .newsletter {
      background: linear-gradient(135deg, #0b1c2f 0%, #1e3a5f 100%);
      color: white;
      border-radius: var(--radius-lg);
      padding: 64px 40px;
      text-align: center;
      position: relative;
      overflow: hidden;
    }

    .newsletter::before {
      content: '';
      position: absolute;
      inset: 0;
      background: radial-gradient(circle at 30% 50%, rgba(108, 92, 231, 0.3), transparent 70%);
    }

    .newsletter h3 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 32px;
      font-weight: 700;
      margin-bottom: 12px;
      position: relative;
      z-index: 1;
    }

    .newsletter p {
      opacity: 0.8;
      margin-bottom: 28px;
      position: relative;
      z-index: 1;
      font-size: 16px;
    }

    .newsletter form {
      display: flex;
      justify-content: center;
      gap: 10px;
      flex-wrap: wrap;
      position: relative;
      z-index: 1;
    }

    .newsletter input {
      padding: 16px 24px;
      border-radius: 60px;
      border: 0;
      width: 360px;
      max-width: 100%;
      font-size: 15px;
      font-family: 'Inter', sans-serif;
      background: rgba(255, 255, 255, 0.95);
      outline: none;
    }

    .newsletter input:focus {
      box-shadow: 0 0 0 4px rgba(108, 92, 231, 0.3);
    }

    .newsletter .btn-primary {
      background: var(--accent);
      box-shadow: 0 8px 20px rgba(108, 92, 231, 0.4);
    }

    .newsletter .btn-primary:hover {
      background: #5f4bd8;
    }

    #newsletterMsg {
      margin-top: 16px;
      font-size: 14px;
      position: relative;
      z-index: 1;
    }

    /* ----- footer ----- */
    footer {
      padding: 60px 0 30px;
      color: var(--muted);
      font-size: 14px;
      border-top: 1px solid rgba(0, 0, 0, 0.04);
      margin-top: 20px;
    }

    .footer-brand {
      font-family: 'Space Grotesk', sans-serif;
      font-weight: 700;
      font-size: 20px;
      color: var(--primary);
      margin-bottom: 12px;
    }

    .footer-brand span {
      color: var(--accent);
    }

    .footer-links {
      display: flex;
      gap: 60px;
      flex-wrap: wrap;
    }

    .footer-links h6 {
      font-weight: 600;
      color: var(--primary);
      font-size: 14px;
      margin-bottom: 16px;
    }

    .footer-links .muted {
      line-height: 2;
      font-size: 14px;
    }

    .footer-links .muted a {
      transition: color 0.2s;
    }

    .footer-links .muted a:hover {
      color: var(--accent);
    }

    .socials {
      display: flex;
      gap: 8px;
      margin-top: 18px;
    }

    .socials a {
      display: flex;
      align-items: center;
      justify-content: center;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: white;
      border: 1px solid rgba(0, 0, 0, 0.04);
      color: var(--muted);
      transition: all 0.2s;
    }

    .socials a:hover {
      background: var(--accent);
      color: white;
      border-color: var(--accent);
    }

    /* ----- utilities ----- */
    .muted {
      color: var(--muted);
    }

    .text-center {
      text-align: center;
    }

    /* ----- responsive ----- */
    @media (max-width: 1200px) {
      .categories {
        grid-template-columns: repeat(3, 1fr);
      }

      .products {
        grid-template-columns: repeat(3, 1fr);
      }

      .hero h1 {
        font-size: 44px;
      }
    }

    @media (max-width: 900px) {
      nav.main-nav {
        display: none;
      }

      .mobile-toggle {
        display: flex;
      }

      .products {
        grid-template-columns: repeat(2, 1fr);
      }

      .categories {
        grid-template-columns: repeat(2, 1fr);
      }

      .deal {
        flex-direction: column;
      }

      .deal img {
        width: 100%;
        height: 280px;
      }

      .deal .content {
        padding: 32px 28px;
      }

      .hero h1 {
        font-size: 36px;
      }

      .section-title {
        font-size: 28px;
      }

      .search {
        min-width: 200px;
      }
    }

    @media (max-width: 600px) {
      .hero h1 {
        font-size: 28px;
      }

      .hero p {
        font-size: 16px;
      }

      .products {
        grid-template-columns: 1fr;
      }

      .categories {
        grid-template-columns: 1fr 1fr;
      }

      .header-inner {
        flex-wrap: wrap;
      }

      .search {
        min-width: 100%;
        order: 3;
        margin-top: 8px;
      }

      .container {
        padding: 0 20px;
      }

      .section {
        padding: 40px 0;
      }

      .deal .content {
        padding: 24px 20px;
      }

      .timer {
        flex-wrap: wrap;
      }

      .time-box {
        min-width: 60px;
        padding: 10px 12px;
        font-size: 18px;
      }

      .newsletter {
        padding: 40px 20px;
      }

      .newsletter h3 {
        font-size: 24px;
      }
    }
  </style>
</head>

<body>
  <header>
    <div class="container header-inner" role="banner">
      <div style="display:flex;align-items:center;gap:12px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu">
          <i class="fas fa-bars"></i>
        </button>
        <a class="brand" href="#">
          <i class="fas fa-bolt"></i>
          <span>Lumine</span>
        </a>
      </div>

      <nav class="main-nav" id="mainNav" aria-label="Primary navigation">
        <ul>
          <li><a href="#"><i class="fas fa-house"></i> Home</a></li>
          <li><a href="#" id="catMenuBtn"><i class="fas fa-grid-2"></i> Categories <i class="fas fa-chevron-down" style="font-size:11px;"></i></a></li>
          <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#about"><i class="fas fa-circle-info"></i> About</a></li>
        </ul>
      </nav>

      <div style="display:flex;align-items:center;gap:16px;flex:1;justify-content:flex-end;">
        <div class="search" role="search" aria-label="Product search">
          <i class="fas fa-magnifying-glass"></i>
          <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search products" />
        </div>

        <div class="header-actions" role="group" aria-label="Header actions">
          <a class="icon-btn" title="Account" href="#"><i class="far fa-user"></i></a>
          <a class="icon-btn" title="Wishlist" href="#"><i class="far fa-heart"></i></a>
          <a class="cart" href="#" id="cartBtn" title="View cart" aria-label="Cart">
            <i class="fas fa-bag-shopping"></i>
            <span class="cart-count" id="cartCount">0</span>
          </a>
        </div>
      </div>
    </div>

    <!-- Mobile menu -->
    <div id="mobileMenu" style="display:none; background:var(--surface); border-top:1px solid rgba(0,0,0,0.04);">
      <div class="container" style="padding:16px 0;">
        <nav aria-label="Mobile navigation">
          <ul style="list-style:none;padding:0;margin:0;display:flex;flex-direction:column;gap:4px;">
            <li><a href="#" style="display:block;padding:12px 16px;border-radius:12px;font-weight:500;">Home</a></li>
            <li><a href="#" style="display:block;padding:12px 16px;border-radius:12px;font-weight:500;">Categories</a></li>
            <li><a href="#" style="display:block;padding:12px 16px;border-radius:12px;font-weight:500;">Trending</a></li>
            <li><a href="#deals" style="display:block;padding:12px 16px;border-radius:12px;font-weight:500;">Deals</a></li>
            <li><a href="#about" style="display:block;padding:12px 16px;border-radius:12px;font-weight:500;">About</a></li>
          </ul>
        </nav>
      </div>
    </div>
  </header>

  <main>
    <!-- Hero -->
    <section class="hero" role="img" aria-label="Hero banner">
      <div class="container">
        <h1>Curated for the <i>modern</i> lifestyle</h1>
        <p>Discover premium tech, fashion, and accessories — all in one place. Enjoy free shipping on orders over $50.</p>
        <div style="display:flex;gap:12px;justify-content:center;flex-wrap:wrap;">
          <button class="btn btn-primary" id="shopNow">Shop Now <i class="fas fa-arrow-right"></i></button>
          <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
        </div>
      </div>
    </section>

    <!-- Categories -->
    <section class="section container" aria-labelledby="cat-title">
      <div class="title" id="cat-title">
        <h2 class="section-title">Shop by Category</h2>
        <p class="muted">Browse through our wide range of products across curated categories.</p>
      </div>
      <div class="categories" id="categoriesGrid" aria-live="polite"></div>
    </section>

    <!-- Products -->
    <section class="section container" aria-labelledby="prod-title">
      <div class="title" id="prod-title">
        <h2 class="section-title">Trending Products</h2>
        <p class="muted">Popular picks based on recent activity.</p>
      </div>
      <div class="products" id="productsGrid" aria-live="polite"></div>
    </section>

    <!-- Deals -->
    <section id="deals" class="section container" aria-labelledby="deals-title">
      <div class="title" id="deals-title">
        <h2 class="section-title">Flash Sale</h2>
        <p class="muted">Limited-time offers — don't miss out!</p>
      </div>

      <div class="deal">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="Deal product">
        <div class="content">
          <h3>MacBook Air M2</h3>
          <p class="muted">Thin, light and powerful — now with M2 performance.</p>

          <div class="timer" aria-hidden="false">
            <div class="time-box">
              <div id="dealDays">0</div>
              <div>Days</div>
            </div>
            <div class="time-box">
              <div id="dealHours">00</div>
              <div>Hours</div>
            </div>
            <div class="time-box">
              <div id="dealMinutes">00</div>
              <div>Minutes</div>
            </div>
            <div class="time-box">
              <div id="dealSeconds">00</div>
              <div>Seconds</div>
            </div>
          </div>

          <div style="display:flex;align-items:center;gap:16px;flex-wrap:wrap;">
            <div class="price">$999 <span class="old-price" style="font-size:18px">$1,199</span></div>
            <div class="deal-discount">-17%</div>
          </div>

          <p style="margin-top:16px;font-size:15px;">Only <strong style="color:var(--accent);">12</strong> items left at this price!</p>
          <div style="margin-top:24px;">
            <button class="btn btn-primary" id="buyDeal">Buy Now <i class="fas fa-arrow-right"></i></button>
          </div>
        </div>
      </div>
    </section>

    <!-- Testimonials -->
    <section class="section container" aria-labelledby="test-title">
      <div class="title" id="test-title">
        <h2 class="section-title">What our customers say</h2>
        <p class="muted">Real reviews from verified buyers.</p>
      </div>

      <div class="testimonials" id="testimonials">
        <div class="testimonial">
          <div class="rating">★★★★★</div>
          <p>"Fast shipping and excellent customer support. The product exceeded my expectations!"</p>
          <div style="display:flex;align-items:center;gap:12px">
            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:44px;height:44px;border-radius:50%;object-fit:cover">
            <div>
              <div style="font-weight:600;font-size:15px;">Ava Martin</div>
              <div class="muted" style="font-size:13px">Verified buyer</div>
            </div>
          </div>
        </div>

        <div class="testimonial">
          <div class="rating">★★★★☆</div>
          <p>"Great selection and the checkout was smooth. Will shop again."</p>
          <div style="display:flex;align-items:center;gap:12px">
            <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:44px;height:44px;border-radius:50%;object-fit:cover">
            <div>
              <div style="font-weight:600;font-size:15px;">Michael Lee</div>
              <div class="muted" style="font-size:13px">Frequent buyer</div>
            </div>
          </div>
        </div>

        <div class="testimonial">
          <div class="rating">★★★★★</div>
          <p>"The quality is unmatched. I've recommended Lumine to all my friends."</p>
          <div style="display:flex;align-items:center;gap:12px">
            <img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format
