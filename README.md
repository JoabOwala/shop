# Shop

An e-Commerce shop application built with Ruby on Rails, featuring user authentication, product listings, and a fully functional shopping cart.

---

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Running the Application](#running-the-application)
- [Usage](#usage)
  - [User Authentication](#user-authentication)
  - [Product Listings](#product-listings)
  - [Shopping Cart](#shopping-cart)
- [Authors](#authors)

---

## Overview

**Shop** is a work-in-progress e-commerce application that allows users to:
- Create an account and log in with secure authentication.
- List products for sale with customizable details.
- Manage a personal shopping cart with dynamic item counts and total costs.

This project serves as a learning tool for implementing key e-commerce functionalities using Ruby on Rails.

---

## Features

- User authentication with Devise, including account creation, login, and account updates.
- Ability for users to create, edit, and delete product listings.
- Dynamic shopping cart with:
  - Add/remove item functionality.
  - Persistent cart items even when users are not logged in.
  - Clear cart button.
  - Notifications for adding/removing items.
  - Item count displayed on the homepage.
- User-specific access control for editing and deleting product ads.

---

## Getting Started

### Prerequisites

Ensure you have the following installed on your system:
- Ruby `2.7.4` or later
- Rails `6.x` or later
- SQLite3 or any compatible database system

### Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/JoabOwala/shop.git
   cd shop/

2. **Install Dependencies**:
   ```bash
   bundle install
   bundle update

3. **Setup the Database**:
   ```bash
   rails db:migrate
   rails db:seed

### Running the Application

1. **Start the Rails server**:
   ```bash
   rails s

2. **Open your browser and navigate to**:
   ```bash
   http://localhost:3000/
   

## Usage

### User Authentication

- Create an account or log in 
- Update your account details, including name, email, and password.

### Product Listings

- Navigate to the "Sell" page to list a product. 
- Provide product details such as title, price, model, description, brand, color, and condition.
- Upload product images from the app/assets/images folder. 
- Only the product creator can edit or delete their listing.

### Shopping Cart

- Add items to the cart directly from the product listings. 
- View the total price dynamically update as items are added or removed.
- Clear the cart with the "Empty Cart" button. 
- Remove items individually from the cart.


## Authors

- ### Joab Owala