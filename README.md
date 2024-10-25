# 🛒 E-Store Mobile Application

A fully-featured, Flutter-based mobile application that leverages the Fakestore API to provide users with an engaging e-commerce experience. Users can browse products, view details, manage a cart, and proceed to checkout, along with offline functionality, animations, and user authentication.

---

## 🎯 Core Features

1. **📜 Product Listing Page**
   - Fetches and displays products from the Fakestore API.
   - Shows each product’s image, name, description, and price.
   - Includes pagination or infinite scrolling for seamless browsing.

2. **🖼️ Product Details Page**
   - Product details include an enlarged image, full description, and price.
   - Option to add the product to the cart.

3. **🛍️ Cart Management**
   - Users can add, update quantities, and remove items from the cart.
   - Shows the total price at the bottom of the cart page.

4. **💳 Order Checkout**
   - Provides a checkout process for users with a confirmation page displaying items and the total amount.

5. **📴 Basic Offline Functionality**
   - Users can browse previously fetched products and view their cart offline.

6. **🧭 Basic Navigation**
   - Simple navigation between product list, product details, cart, and checkout pages.

7. **🔄 State Management**
   - Efficiently handles product data and cart management using the Bloc pattern.

---

## 🚀 Bonus Features (Mid/Senior Level)

1. **🔐 Authentication**
   - Users can sign up or log in with Google.

2. **🔍 Search Functionality**
   - Users can filter products by name or category using the search bar.

3. **🌐 Offline-First Strategy**
   - Caches product data locally and syncs with the backend once back online, enhancing the offline experience.

4. **✨ Animations**
   - Adds smooth animations, such as product image transitions and cart updates, improving user experience.

5. **📲 User Feedback & Notifications**
   - Shows loading spinners during data fetching and toast messages for actions like adding items to the cart.

6. **✅ Testing**
   - Unit tests for state management.
   - Widget tests for UI components and integration tests for essential flows (e.g., adding products to the cart, checkout).

7. **🌐 Backend API Extension (Optional)**
   - Extends the backend with a mock API using Firebase or Node.js for additional product and checkout handling.

---

## 🛠 Tech Stack

- **Frontend:** Flutter Framework
- **State Management:** Bloc with Freezed and get_it
- **API Integration:** HTTP package
- **Local Database:** SQLite for offline storage

---
