<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>NovaMart — Modern E‑Commerce Experience</title>
    <!-- Google Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-primary: #ffffff;
            --bg-secondary: #f8fafc;
            --surface: #ffffff;
            --text-primary: #0f172a;
            --text-secondary: #475569;
            --border-light: #e2e8f0;
            --accent: #3b82f6;
            --accent-dark: #2563eb;
            --accent-glow: rgba(59,130,246,0.2);
            --card-shadow: 0 20px 35px -12px rgba(0,0,0,0.05), 0 1px 2px rgba(0,0,0,0.02);
            --gradient-hero: linear-gradient(135deg, #0f172a 0%, #1e293b 100%);
            --success: #10b981;
            --danger: #ef4444;
            --radius-sm: 12px;
            --radius-md: 20px;
            --radius-full: 9999px;
            --transition: all 0.25s cubic-bezier(0.2, 0, 0, 1);
        }

        body.dark {
            --bg-primary: #0f172a;
            --bg-secondary: #1e293b;
            --surface: #1e293b;
            --text-primary: #f1f5f9;
            --text-secondary: #cbd5e1;
            --border-light: #334155;
            --card-shadow: 0 20px 35px -12px rgba(0,0,0,0.4);
        }

        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
            background: var(--bg-primary);
            color: var(--text-primary);
            transition: var(--transition);
            scroll-behavior: smooth;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 32px;
        }

        /* header modern glass */
        .glass-header {
            position: sticky;
            top: 0;
            z-index: 100;
            backdrop-filter: blur(12px);
            background: rgba(var(--bg-primary-rgb, 255,255,255), 0.75);
            border-bottom: 1px solid var(--border-light);
            background: color-mix(in srgb, var(--bg-primary) 85%, transparent);
        }
        body.dark .glass-header {
            background: color-mix(in srgb, #0f172a 90%, transparent);
        }

        .header-flex {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 16px 0;
        }

        .logo {
            font-size: 26px;
            font-weight: 800;
            background: linear-gradient(135deg, var(--accent), #8b5cf6);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }

        .nav-links {
            display: flex;
            gap: 28px;
            align-items: center;
        }

        .nav-link {
            font-weight: 600;
            transition: var(--transition);
            color: var(--text-secondary);
        }
        .nav-link:hover, .nav-link.active { color: var(--accent); }

        .search-bar {
            background: var(--bg-secondary);
            border-radius: var(--radius-full);
            padding: 8px 20px;
            display: flex;
            align-items: center;
            gap: 12px;
            border: 1px solid var(--border-light);
            transition: var(--transition);
            min-width: 260px;
        }
        .search-bar:focus-within { box-shadow: 0 0 0 3px var(--accent-glow); border-color: var(--accent); }
        .search-bar input {
            background: transparent;
            border: none;
            outline: none;
            font-size: 0.9rem;
            width: 100%;
            color: var(--text-primary);
        }

        .action-icons {
            display: flex;
            gap: 16px;
            align-items: center;
        }
        .icon-circle {
            background: var(--bg-secondary);
            width: 42px;
            height: 42px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border-radius: var(--radius-full);
            transition: var(--transition);
            cursor: pointer;
            border: 1px solid var(--border-light);
            color: var(--text-primary);
        }
        .icon-circle:hover { background: var(--accent); color: white; transform: translateY(-2px); }
        .cart-badge {
            position: relative;
        }
        .cart-count-badge {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: 800;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* hero section new */
        .hero-modern {
            background: var(--gradient-hero);
            border-radius: 0 0 48px 48px;
            margin-bottom: 40px;
            padding: 80px 0;
            position: relative;
            overflow: hidden;
        }
        .hero-modern::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: radial-gradient(circle at 20% 30%, rgba(59,130,246,0.15), transparent 70%);
        }
        .hero-content {
            position: relative;
            z-index: 2;
            text-align: center;
            color: white;
        }
        .hero-badge {
            background: rgba(255,255,255,0.2);
            backdrop-filter: blur(4px);
            display: inline-block;
            padding: 6px 18px;
            border-radius: 40px;
            font-size: 0.8rem;
            font-weight: 600;
            margin-bottom: 20px;
        }
        .hero-content h1 {
            font-size: 56px;
            font-weight: 800;
            letter-spacing: -0.02em;
            margin-bottom: 20px;
        }
        .hero-buttons {
            display: flex;
            gap: 16px;
            justify-content: center;
            margin-top: 32px;
        }
        .btn-primary {
            background: var(--accent);
            color: white;
            padding: 12px 32px;
            border-radius: var(--radius-full);
            font-weight: 700;
            border: none;
            cursor: pointer;
            transition: var(--transition);
        }
        .btn-primary:hover { background: var(--accent-dark); transform: scale(1.02); box-shadow: 0 10px 20px -5px rgba(59,130,246,0.4);}
        .btn-outline-light {
            background: transparent;
            border: 1.5px solid rgba(255,255,255,0.5);
            color: white;
            padding: 12px 32px;
            border-radius: var(--radius-full);
            font-weight: 600;
            transition: var(--transition);
            cursor: pointer;
        }

        /* category cards modern */
        .section-header {
            text-align: center;
            margin-bottom: 48px;
        }
        .section-header h2 {
            font-size: 32px;
            font-weight: 800;
        }
        .category-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 24px;
            margin-bottom: 64px;
        }
        .category-card {
            background: var(--surface);
            border-radius: var(--radius-md);
            padding: 28px 16px;
            text-align: center;
            transition: var(--transition);
            border: 1px solid var(--border-light);
            cursor: pointer;
            backdrop-filter: blur(4px);
        }
        .category-card:hover {
            transform: translateY(-8px);
            border-color: var(--accent);
            box-shadow: var(--card-shadow);
        }
        .category-icon {
            font-size: 40px;
            color: var(--accent);
            margin-bottom: 16px;
        }

        /* product grid - premium style */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 32px;
            margin-bottom: 60px;
        }
        .product-card {
            background: var(--surface);
            border-radius: var(--radius-md);
            overflow: hidden;
            transition: var(--transition);
            border: 1px solid var(--border-light);
            position: relative;
        }
        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--card-shadow);
        }
        .product-img {
            width: 100%;
            height: 260px;
            object-fit: cover;
            transition: transform 0.4s ease;
        }
        .product-card:hover .product-img { transform: scale(1.03); }
        .product-info {
            padding: 20px;
        }
        .product-title {
            font-weight: 700;
            font-size: 1.1rem;
            margin-bottom: 8px;
        }
        .price-tag {
            font-weight: 800;
            font-size: 1.3rem;
            color: var(--accent);
        }
        .old-price-tag {
            font-size: 0.85rem;
            text-decoration: line-through;
            color: var(--text-secondary);
            margin-left: 8px;
        }
        .product-actions {
            display: flex;
            gap: 12px;
            margin-top: 16px;
        }
        .btn-add {
            flex: 1;
            background: var(--bg-secondary);
            border: 1px solid var(--border-light);
            padding: 10px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
            color: var(--text-primary);
        }
        .btn-add:hover { background: var(--accent); color: white; border-color: var(--accent); }

        /* flash sale section premium */
        .flash-sale {
            background: linear-gradient(110deg, var(--surface) 0%, var(--bg-secondary) 100%);
            border-radius: 48px;
            padding: 48px;
            margin: 48px 0;
            border: 1px solid var(--border-light);
        }
        .sale-flex {
            display: flex;
            flex-wrap: wrap;
            gap: 40px;
            align-items: center;
        }
        .sale-image {
            flex: 1;
            border-radius: 32px;
            overflow: hidden;
            max-height: 320px;
        }
        .sale-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .sale-content {
            flex: 1;
        }
        .timer-group {
            display: flex;
            gap: 16px;
            margin: 24px 0;
        }
        .time-card {
            background: var(--bg-primary);
            padding: 12px 18px;
            border-radius: 20px;
            text-align: center;
            min-width: 70px;
            box-shadow: 0 5px 12px rgba(0,0,0,0.05);
        }
        .time-number {
            font-size: 32px;
            font-weight: 800;
            color: var(--accent);
        }

        /* testimonials carousel style */
        .testimonial-scroll {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding: 12px 4px 24px;
            scrollbar-width: thin;
        }
        .testimonial-card {
            min-width: 320px;
            background: var(--surface);
            border-radius: 28px;
            padding: 28px;
            border: 1px solid var(--border-light);
        }

        /* newsletter modern */
        .newsletter-modern {
            background: linear-gradient(120deg, var(--accent) 0%, #8b5cf6 100%);
            border-radius: 48px;
            padding: 56px 32px;
            text-align: center;
            color: white;
        }
        .newsletter-form {
            display: flex;
            justify-content: center;
            gap: 12px;
            flex-wrap: wrap;
            margin-top: 24px;
        }
        .newsletter-form input {
            padding: 14px 24px;
            border-radius: 60px;
            border: none;
            width: 300px;
            background: rgba(255,255,255,0.95);
            font-size: 1rem;
        }

        /* footer new */
        .footer-modern {
            margin-top: 60px;
            padding: 48px 0 32px;
            border-top: 1px solid var(--border-light);
        }

        /* responsive */
        @media (max-width: 900px) {
            .nav-links { display: none; }
            .search-bar { max-width: 180px; }
            .hero-content h1 { font-size: 38px; }
            .container { padding: 0 20px; }
        }
        @media (max-width: 640px) {
            .search-bar { display: none; }
            .category-grid { grid-template-columns: repeat(2,1fr); }
            .product-grid { grid-template-columns: 1fr; }
        }
        button { background: none; border: none; cursor: pointer; }
        .theme-toggle { cursor: pointer; }
    </style>
</head>
<body>
    <header class="glass-header">
        <div class="container header-flex">
            <div class="logo"><i class="fas fa-bolt" style="color: #3b82f6;"></i> NovaMart</div>
            <div class="nav-links">
                <a href="#" class="nav-link" data-nav="home">Home</a>
                <a href="#" class="nav-link" data-nav="shop">Shop</a>
                <a href="#" class="nav-link" data-nav="deals">Deals</a>
                <a href="#" class="nav-link" data-nav="insights">Insights</a>
            </div>
            <div class="search-bar">
                <i class="fas fa-search" style="color: var(--text-secondary);"></i>
                <input type="text" id="globalSearch" placeholder="Search products, categories...">
            </div>
            <div class="action-icons">
                <div class="icon-circle theme-toggle" id="themeToggle"><i class="fas fa-moon"></i></div>
                <div class="icon-circle"><i class="far fa-heart"></i></div>
                <div class="icon-circle cart-badge" id="cartIconBtn">
                    <i class="fas fa-bag-shopping"></i>
                    <span class="cart-count-badge" id="cartCountDisplay">0</span>
                </div>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero revamped -->
        <section class="hero-modern">
            <div class="container hero-content">
                <div class="hero-badge"><i class="fas fa-gem"></i> Limited Edition Drops</div>
                <h1>Make Your <span style="color: #3b82f6;">Everyday</span> Style</h1>
                <p style="font-size: 1.2rem; max-width: 600px; margin: 0 auto; opacity: 0.9;">Discover futuristic design, premium materials, and exclusive flash sales.</p>
                <div class="hero-buttons">
                    <button class="btn-primary" id="shopNowHero">Shop Collection →</button>
                    <button class="btn-outline-light" id="exploreDealsHero">Explore Deals</button>
                </div>
            </div>
        </section>

        <div class="container">
            <!-- Categories Section -->
            <div class="section-header">
                <h2>Curated Categories</h2>
                <p style="color: var(--text-secondary)">Shop by interest — handpicked for you</p>
            </div>
            <div class="category-grid" id="categoryGrid"></div>

            <!-- Products section -->
            <div class="section-header" id="productsSection">
                <h2>✨ Trending Now</h2>
                <p style="color: var(--text-secondary)">Most loved by our community</p>
            </div>
            <div class="product-grid" id="productGrid"></div>

            <!-- Flash Sale Premium -->
            <div id="dealsSection">
                <div class="flash-sale">
                    <div class="sale-flex">
                        <div class="sale-image">
                            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Pro">
                        </div>
                        <div class="sale-content">
                            <h2 style="font-size: 36px; font-weight: 800;">⚡ Flash Sale</h2>
                            <p style="margin: 12px 0">MacBook Pro M3 — up to 20% off + exclusive bundle</p>
                            <div class="timer-group" id="countdownTimer">
                                <div class="time-card"><div class="time-number" id="days">00</div><span>Days</span></div>
                                <div class="time-card"><div class="time-number" id="hours">00</div><span>Hours</span></div>
                                <div class="time-card"><div class="time-number" id="minutes">00</div><span>Mins</span></div>
                                <div class="time-card"><div class="time-number" id="seconds">00</div><span>Secs</span></div>
                            </div>
                            <div class="price-tag" style="font-size: 32px;">$1,299 <span class="old-price-tag" style="font-size: 20px;">$1,699</span></div>
                            <button class="btn-primary" id="flashDealBtn" style="margin-top: 20px;">Grab Deal Now <i class="fas fa-arrow-right"></i></button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Testimonials -->
            <div class="section-header">
                <h2>❤️ Customer Love</h2>
                <p>Real stories from real shoppers</p>
            </div>
            <div class="testimonial-scroll" id="testimonialList"></div>

            <!-- Newsletter Premium -->
            <div class="newsletter-modern">
                <h3 style="font-size: 28px;">Join the inner circle</h3>
                <p>Get early access to sales, new arrivals & exclusive rewards</p>
                <form id="newsletterFormModern" class="newsletter-form">
                    <input type="email" id="newsEmail" placeholder="you@example.com" required>
                    <button type="submit" class="btn-primary" style="background: white; color: #0f172a;">Subscribe →</button>
                </form>
                <div id="newsletterMsgModern" style="margin-top: 16px; font-size: 14px;"></div>
            </div>
        </div>
    </main>

    <footer class="footer-modern">
        <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 32px;">
            <div><div class="logo" style="font-size: 24px;">NovaMart</div><p style="margin-top: 12px; max-width: 260px;">Next-gen e-commerce experience. Innovation meets style.</p></div>
            <div><h4>Explore</h4><p>About<br>Careers<br>Sustainability</p></div>
            <div><h4>Support</h4><p>Help Center<br>Returns<br>Contact</p></div>
        </div>
        <div class="container" style="text-align: center; margin-top: 48px; padding-top: 24px; border-top: 1px solid var(--border-light);">© 2026 NovaMart — Redefining modern retail</div>
    </footer>

    <script>
        // --- ENHANCED DATA (more premium) ---
        const CATEGORIES = [
            { id: "audio", name: "Audio & Hi-Fi", icon: "fa-headphones" },
            { id: "wearables", name: "Wearables", icon: "fa-apple-alt" },
            { id: "gaming", name: "Gaming Gear", icon: "fa-gamepad" },
            { id: "fashion", name: "Streetwear", icon: "fa-vest" },
            { id: "accessories", name: "Luxury Acc.", icon: "fa-gem" },
            { id: "smart-home", name: "Smart Home", icon: "fa-microchip" }
        ];

        const PRODUCTS = [
            { id: 101, title: "Sony WH-1000XM6", price: 399, oldPrice: 499, rating: 5, reviews: 324, img: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80", category: "audio", badge: "Best Seller" },
            { id: 102, title: "Apple Watch Ultra 2", price: 749, oldPrice: 799, rating: 5, reviews: 512, img: "https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=600&q=80", category: "wearables", badge: "New" },
            { id: 103, title: "Razer Blade 16", price: 2799, oldPrice: 3199, rating: 4.8, reviews: 210, img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80", category: "gaming" },
            { id: 104, title: "Off-White Hoodie", price: 420, oldPrice: 650, rating: 4.7, reviews: 89, img: "https://images.unsplash.com/photo-1556905055-8f358a7a47b2?auto=format&fit=crop&w=600&q=80", category: "fashion", badge: "Limited" },
            { id: 105, title: "Dyson V15 Detect", price: 599, oldPrice: 749, rating: 4.9, reviews: 178, img: "https://images.unsplash.com/photo-1558317374-067fb5f30001?auto=format&fit=crop&w=600&q=80", category: "smart-home" },
            { id: 106, title: "Bose QC Ultra", price: 379, oldPrice: 429, rating: 4.9, reviews: 267, img: "https://images.unsplash.com/photo-1583394838336-acd977736f90?auto=format&fit=crop&w=600&q=80", category: "audio" }
        ];

        let cartCount = 0;
        let currentFilter = "";

        // DOM elements
        const categoryGrid = document.getElementById('categoryGrid');
        const productGrid = document.getElementById('productGrid');
        const cartCountSpan = document.getElementById('cartCountDisplay');
        const searchInput = document.getElementById('globalSearch');

        function renderCategories() {
            categoryGrid.innerHTML = CATEGORIES.map(cat => `
                <div class="category-card" data-cat="${cat.name}">
                    <div class="category-icon"><i class="fas ${cat.icon}"></i></div>
                    <h4 style="font-weight: 700;">${cat.name}</h4>
                    <span style="font-size: 13px; color: var(--text-secondary)">shop now →</span>
                </div>
            `).join('');
            document.querySelectorAll('.category-card').forEach(card => {
                card.addEventListener('click', () => {
                    const catName = card.getAttribute('data-cat');
                    searchInput.value = catName;
                    filterProducts(catName);
                    document.getElementById('productsSection').scrollIntoView({ behavior: 'smooth' });
                });
            });
        }

        function renderProducts(productsArray) {
            productGrid.innerHTML = productsArray.map(p => `
                <div class="product-card">
                    ${p.badge ? `<div style="position: absolute; top: 12px; left: 12px; background: var(--accent); color: white; padding: 4px 12px; border-radius: 40px; font-size: 12px; font-weight: 700; z-index:2;">${p.badge}</div>` : ''}
                    <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                    <div class="product-info">
                        <div class="product-title">${p.title}</div>
                        <div style="display: flex; align-items: baseline; gap: 6px; margin: 8px 0;">
                            <span class="price-tag">$${p.price.toLocaleString()}</span>
                            ${p.oldPrice ? `<span class="old-price-tag">$${p.oldPrice.toLocaleString()}</span>` : ''}
                        </div>
                        <div><i class="fas fa-star" style="color: #fbbf24;"></i> ${p.rating} (${p.reviews})</div>
                        <div class="product-actions">
                            <button class="btn-add" data-id="${p.id}"><i class="fas fa-cart-shopping"></i> Add to cart</button>
                            <button class="btn-add" style="width: auto;"><i class="far fa-heart"></i></button>
                        </div>
                    </div>
                </div>
            `).join('');
            document.querySelectorAll('.btn-add[data-id]').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    e.stopPropagation();
                    const id = parseInt(btn.dataset.id);
                    addToCartById(id);
                });
            });
        }

        function addToCartById(productId) {
            const product = PRODUCTS.find(p => p.id === productId);
            if (!product) return;
            cartCount++;
            cartCountSpan.innerText = cartCount;
            // micro feedback
            const originalText = btn => btn.innerHTML;
            const targetBtn = document.querySelector(`.btn-add[data-id="${productId}"]`);
            if(targetBtn) {
                targetBtn.innerHTML = '<i class="fas fa-check"></i> Added!';
                setTimeout(() => { targetBtn.innerHTML = '<i class="fas fa-cart-shopping"></i> Add to cart'; }, 1200);
            }
            showToast(`${product.title} added ✨`);
        }

        function showToast(msg) {
            let toast = document.createElement('div');
            toast.innerText = msg;
            toast.style.position = 'fixed';
            toast.style.bottom = '20px';
            toast.style.left = '50%';
            toast.style.transform = 'translateX(-50%)';
            toast.style.backgroundColor = 'var(--accent)';
            toast.style.color = 'white';
            toast.style.padding = '12px 24px';
            toast.style.borderRadius = '60px';
            toast.style.zIndex = '999';
            toast.style.fontWeight = 'bold';
            toast.style.backdropFilter = 'blur(8px)';
            document.body.appendChild(toast);
            setTimeout(() => toast.remove(), 2000);
        }

        function filterProducts(query) {
            const q = query.trim().toLowerCase();
            if(!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
            renderProducts(filtered);
        }

        // Deal countdown (ends in 2 days 5h)
        function startCountdown() {
            const targetDate = new Date();
            targetDate.setDate(targetDate.getDate() + 2);
            targetDate.setHours(targetDate.getHours() + 5);
            function update() {
                const now = new Date();
                const diff = targetDate - now;
                if(diff <= 0) {
                    document.getElementById('days').innerText = '00';
                    document.getElementById('hours').innerText = '00';
                    document.getElementById('minutes').innerText = '00';
                    document.getElementById('seconds').innerText = '00';
                    return;
                }
                const days = Math.floor(diff/(1000*60*60*24));
                const hours = Math.floor((diff/(1000*60*60)) % 24);
                const mins = Math.floor((diff/(1000*60)) % 60);
                const secs = Math.floor((diff/1000) % 60);
                document.getElementById('days').innerText = days < 10 ? '0'+days : days;
                document.getElementById('hours').innerText = hours < 10 ? '0'+hours : hours;
                document.getElementById('minutes').innerText = mins < 10 ? '0'+mins : mins;
                document.getElementById('seconds').innerText = secs < 10 ? '0'+secs : secs;
            }
            update();
            setInterval(update, 1000);
        }

        // testimonials dynamic
        const testimonialsData = [
            { name: "Sophia Chen", text: "Absolutely love the minimalist design and fast shipping. My new favorite store.", rating: 5, avatar: "https://randomuser.me/api/portraits/women/68.jpg" },
            { name: "James Walker", text: "The flash sale was insane! Grabbed the MacBook at incredible price.", rating: 5, avatar: "https://randomuser.me/api/portraits/men/32.jpg" },
            { name: "Elena Rodriguez", text: "Customer support helped me within minutes. Premium experience all the way.", rating: 4.9, avatar: "https://randomuser.me/api/portraits/women/44.jpg" }
        ];
        function renderTestimonials() {
            const container = document.getElementById('testimonialList');
            container.innerHTML = testimonialsData.map(t => `
                <div class="testimonial-card">
                    <div style="display: flex; gap: 12px; align-items: center; margin-bottom: 14px;">
                        <img src="${t.avatar}" style="width: 48px; height: 48px; border-radius: 60px; object-fit: cover;">
                        <div><strong>${t.name}</strong><div style="color: #fbbf24;">${'★'.repeat(Math.floor(t.rating))} ${t.rating}</div></div>
                    </div>
                    <p style="line-height: 1.4;">“${t.text}”</p>
                </div>
            `).join('');
        }

        // dark/light mode
        const themeToggle = document.getElementById('themeToggle');
        themeToggle.addEventListener('click', () => {
            document.body.classList.toggle('dark');
            const icon = themeToggle.querySelector('i');
            if(document.body.classList.contains('dark')) icon.classList.replace('fa-moon', 'fa-sun');
            else icon.classList.replace('fa-sun', 'fa-moon');
        });

        // newsletter modern
        const newsletterForm = document.getElementById('newsletterFormModern');
        const newsMsg = document.getElementById('newsletterMsgModern');
        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = document.getElementById('newsEmail').value.trim();
            if(!email.includes('@')) {
                newsMsg.style.color = '#ffb3b3';
                newsMsg.innerText = 'Valid email required';
                return;
            }
            newsMsg.style.color = '#c3e6cb';
            newsMsg.innerText = `🎉 Thanks! ${email} is now subscribed.`;
            document.getElementById('newsEmail').value = '';
            setTimeout(() => newsMsg.innerText = '', 3000);
        });

        // flash deal add to cart
        document.getElementById('flashDealBtn').addEventListener('click', () => {
            cartCount++;
            cartCountSpan.innerText = cartCount;
            showToast('MacBook Pro M3 added to cart!');
        });
        document.getElementById('shopNowHero').addEventListener('click', () => document.getElementById('productsSection').scrollIntoView({ behavior: 'smooth' }));
        document.getElementById('exploreDealsHero').addEventListener('click', () => document.getElementById('dealsSection').scrollIntoView({ behavior: 'smooth' }));
        
        // search live
        searchInput.addEventListener('input', (e) => filterProducts(e.target.value));
        searchInput.addEventListener('keydown', (e) => { if(e.key === 'Enter') filterProducts(e.target.value); });

        // cart icon simple alert
        document.getElementById('cartIconBtn').addEventListener('click', () => showToast(`Cart has ${cartCount} item(s)`));

        function init() {
            renderCategories();
            renderProducts(PRODUCTS);
            startCountdown();
            renderTestimonials();
        }
        init();
    </script>
</body>
</html>