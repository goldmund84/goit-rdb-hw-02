-- Homework 2: DB Normalization (1NF → 2NF → 3NF)

CREATE DATABASE IF NOT EXISTS hw02;
USE hw02;

-- ─────────────────────────────────────────
-- 3NF Result: 4 normalized tables
-- ─────────────────────────────────────────

CREATE TABLE IF NOT EXISTS clients (
    client_id   INT           AUTO_INCREMENT PRIMARY KEY,
    client_name VARCHAR(100)  NOT NULL,
    address     VARCHAR(255)  NOT NULL
);

CREATE TABLE IF NOT EXISTS products (
    product_id   INT          AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS orders (
    order_id    INT  AUTO_INCREMENT PRIMARY KEY,
    client_id   INT  NOT NULL,
    order_date  DATE NOT NULL,
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

CREATE TABLE IF NOT EXISTS order_items (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    order_id    INT NOT NULL,
    product_id  INT NOT NULL,
    quantity    INT NOT NULL CHECK (quantity > 0),
    FOREIGN KEY (order_id)   REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
