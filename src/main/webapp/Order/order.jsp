<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Pahana Edu — Order Books </title>
  <style>
    :root{
      --bg:#f6f7fb; --card:#ffffff; --accent:#0b5ed7; --muted:#6b7280; --success:#2d8f5f;
      --maxw:1100px;
      font-family: Inter, system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial;
    }
    *{box-sizing:border-box}
    body{background:var(--bg); margin:0; padding:40px; color:#111}
    .wrap{max-width:var(--maxw); margin:0 auto}

    header.site-header{display:flex;align-items:center;justify-content:space-between;margin-bottom:24px}
    .brand{display:flex;gap:12px;align-items:center}
    .brand .logo{width:48px;height:48px;border-radius:8px;background:linear-gradient(135deg,#0b5ed7,#6610f2);display:flex;align-items:center;justify-content:center;color:#fff;font-weight:700}
    .brand h1{font-size:18px;margin:0}
    .brand p{margin:0;font-size:12px;color:var(--muted)}

    .layout{display:grid;grid-template-columns:1fr 360px;gap:24px}

    /* Products list */
    .products{display:grid;grid-template-columns:repeat(auto-fill,minmax(220px,1fr));gap:16px}
    .card{background:var(--card);border-radius:10px;padding:14px;box-shadow:0 6px 18px rgba(18,24,40,0.06);display:flex;flex-direction:column;height:100%}
    .thumb{height:150px;border-radius:8px;background:#eef3ff;display:flex;align-items:center;justify-content:center;margin-bottom:12px}
    .title{font-size:15px;font-weight:600;margin:0 0 6px}
    .meta{font-size:13px;color:var(--muted);margin-bottom:8px}
    .price{font-weight:700;margin-top:auto;font-size:16px}
    .controls{display:flex;gap:8px;margin-top:10px}
    .btn{border:0;padding:8px 12px;border-radius:8px;cursor:pointer;font-weight:600}
    .btn-primary{background:var(--accent);color:#fff}
    .btn-ghost{background:transparent;border:1px solid #e6e9ef;color:#111}

    /* Cart */
    aside.cart{background:var(--card);padding:18px;border-radius:12px;box-shadow:0 6px 18px rgba(18,24,40,0.06)}
    .cart h3{margin:0 0 12px}
    .cart-items{max-height:360px;overflow:auto;margin-bottom:12px}
    .cart-item{display:flex;gap:12px;align-items:center;padding:8px 0;border-bottom:1px dashed #eee}
    .cart-item:last-child{border-bottom:none}
    .cart-item .ci-thumb{width:56px;height:56px;border-radius:6px;background:#f3f4f6;display:flex;align-items:center;justify-content:center}
    .ci-info{flex:1}
    .ci-title{font-size:14px;margin:0}
    .ci-meta{font-size:12px;color:var(--muted)}
    .qty{display:flex;gap:6px;align-items:center}
    .qty button{width:28px;height:28px;border-radius:6px;border:1px solid #e6e9ef;background:transparent;cursor:pointer}
    .summary{padding-top:10px;border-top:1px solid #f0f0f2}
    .summary-row{display:flex;justify-content:space-between;margin:8px 0}
    .total{font-weight:800;font-size:18px}

    /* Payment / confirm */
    .actions{display:flex;flex-direction:column;gap:10px;margin-top:12px}
    .btn-block{display:block;width:100%;padding:12px;border-radius:8px;border:0;background:var(--accent);color:#fff;font-weight:700;cursor:pointer}
    .btn-outline{background:transparent;border:1px solid #e6e9ef;padding:10px;border-radius:8px;cursor:pointer}

    /* Empty state */
    .empty{padding:40px;border-radius:10px;text-align:center;color:var(--muted);background:linear-gradient(180deg,#fff, #fbfdff)}

    /* Responsive */
    @media (max-width:980px){.layout{grid-template-columns:1fr}.wrap{padding:0 18px}.brand h1{font-size:16px}}
  </style>
</head>
<body>
  <div class="wrap">
    <header class="site-header">
      <div class="brand">
        <div class="logo">PE</div>
        <div>
          <h1>Pahana Edu Bookshop</h1>
          <p>Quick order —  (in-store pickup / e-voucher)</p>
        </div>
      </div>
      <div class="user-actions">
        <button class="btn btn-ghost">My Account</button>
      </div>
    </header>

    <main class="layout">
      <!-- PRODUCTS -->
      <section>
        <div style="display:flex;align-items:center;justify-content:space-between;margin-bottom:12px">
          <h2 style="margin:0">Available Books</h2>
          <div style="color:var(--muted);font-size:14px">Click “Add” to add to order</div>
        </div>

        <div class="products" id="products">
          <!-- product cards injected by JS (or replace with server-rendered items) -->
        </div>
      </section>

      <!-- CART / ORDER SUMMARY (no shipping) -->
      <aside class="cart">
        <h3>Your Order</h3>
        <div class="cart-items" id="cartItems">
          <div class="empty" id="emptyCart">
            Your order is empty — add books to begin.
          </div>
        </div>

        <div class="summary" id="summary" style="display:none">
          <div class="summary-row"><div>Items subtotal</div><div id="subtotal">Rs. 0.00</div></div>
          <div class="summary-row"><div>Discount</div><div id="discount">Rs. 0.00</div></div>
          <div class="summary-row total"><div>Total</div><div id="total">Rs. 0.00</div></div>
        </div>

        <div class="actions">
          <button class="btn-block" id="proceedBtn" disabled>Proceed to Payment</button>
          <button class="btn-outline" id="clearBtn">Clear Order</button>
        </div>
      </aside>
    </main>
  </div>

  <script>
  // Sample product data
  const products = [
    {id:1, title:'Mathematics Grade 12 – Complete Guide', author:'S. Perera', price:1250},
    {id:2, title:'Advanced Biology for A/L', author:'K. Fernando', price:1450},
    {id:3, title:'Short Stories — Sinhala Collection', author:'M. Silva', price:650},
    {id:4, title:'Programming with Java — 3rd Ed.', author:'R. Kumar', price:2200},
    {id:5, title:'English Grammar & Composition', author:'L. Jayawardena', price:780}
  ];

  const productsEl = document.getElementById('products');
  const cartItemsEl = document.getElementById('cartItems');
  const emptyCartEl = document.getElementById('emptyCart');
  const summaryEl = document.getElementById('summary');
  const subtotalEl = document.getElementById('subtotal');
  const discountEl = document.getElementById('discount');
  const totalEl = document.getElementById('total');
  const proceedBtn = document.getElementById('proceedBtn');
  const clearBtn = document.getElementById('clearBtn');

  const cart = {};

  function formatRs(v){ return 'Rs. '+v.toFixed(2); }

  function renderProducts(){
    products.forEach(p=>{
      const card = document.createElement('article');
      card.className='card';
      card.innerHTML = `
        <div class="thumb">📚</div>
        <h3 class="title">${p.title}</h3>
        <div class="meta">by ${p.author}</div>
        <div class="price">${formatRs(p.price)}</div>
        <div class="controls">
          <button class="btn btn-primary" data-add="${p.id}">Add</button>
          <button class="btn btn-ghost" data-details="${p.id}">Details</button>
        </div>
      `;
      productsEl.appendChild(card);
    });
  }

  function renderCart(){
    cartItemsEl.innerHTML='';
    const keys = Object.keys(cart);
    if(keys.length===0){
      emptyCartEl.style.display='block';
      summaryEl.style.display='none';
      proceedBtn.disabled=true;
      return;
    }

    emptyCartEl.style.display='none';
    summaryEl.style.display='block';
    proceedBtn.disabled=false;

    let subtotal=0;
    keys.forEach(id=>{
      const item = cart[id];
      subtotal += item.qty * item.price;
      const row = document.createElement('div');
      row.className='cart-item';
      row.innerHTML = `
        <div class="ci-thumb">📘</div>
        <div class="ci-info">
          <p class="ci-title"><strong>ID:</strong> ${item.id} — ${item.title}</p>
          <div class="ci-meta">Author: ${item.author} • Price: ${formatRs(item.price)}</div>
        </div>
        <div style="text-align:right">
          <div class="qty">
            <button data-dec="${id}">-</button>
            <div style="min-width:28px;text-align:center">${item.qty}</div>
            <button data-inc="${id}">+</button>
          </div>
        </div>
      `;
      cartItemsEl.appendChild(row);
    });

    const discount = subtotal >= 3000 ? subtotal*0.05 : 0;
    const total = subtotal - discount;
    subtotalEl.textContent = formatRs(subtotal);
    discountEl.textContent = formatRs(discount);
    totalEl.textContent = formatRs(total);
  }

  // Event delegation
  document.body.addEventListener('click', (e)=>{
    const addId = e.target.getAttribute('data-add');
    const incId = e.target.getAttribute('data-inc');
    const decId = e.target.getAttribute('data-dec');
    const detailsId = e.target.getAttribute('data-details');

    if(addId){
      const p = products.find(x=>x.id==addId);
      if(!cart[addId]) cart[addId] = {...p, qty:0};
      cart[addId].qty++;
      renderCart();
    }
    if(incId){ cart[incId].qty++; renderCart(); }
    if(decId){ cart[decId].qty--; if(cart[decId].qty<=0) delete cart[decId]; renderCart(); }
    if(detailsId){ alert('Book details:\n'+JSON.stringify(products.find(x=>x.id==detailsId),null,2)); }
  });

  clearBtn.addEventListener('click', ()=>{ 
    if(confirm('Clear the current order?')){ 
      for(let k in cart) delete cart[k]; 
      renderCart(); 
    } 
  });

  proceedBtn.addEventListener('click', ()=>{
    const keys = Object.keys(cart);
    if(keys.length===0) return alert('Your order is empty');
    let summary = 'Confirm order:\n\n';
    keys.forEach(k=>{
      const it = cart[k]; 
      summary += `ID: ${it.id} | ${it.qty} x ${it.title} — ${formatRs(it.price*it.qty)}\n`;
    });
    summary += '\n' + document.getElementById('total').textContent + '\n\nProceed to payment page.';
    alert(summary);
  });

  renderProducts();
  renderCart();
</script>
  
</body>
</html>
    