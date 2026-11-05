
CREATE DATABASE IF NOT EXISTS ecommerce_db;

USE ecommerce_db;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    city VARCHAR(50)
);

CREATE TABLE Categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2),
    stock INT,
    category_id INT,
    FOREIGN KEY (category_id)
        REFERENCES Categories(category_id)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    order_status VARCHAR(30),
    FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id)
);

CREATE TABLE OrderDetails (
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id)
        REFERENCES Orders(order_id),
    FOREIGN KEY (product_id)
        REFERENCES Products(product_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    payment_date DATE,
    amount DECIMAL(10,2),
    payment_method VARCHAR(30),
    payment_status VARCHAR(30),
    FOREIGN KEY (order_id)
        REFERENCES Orders(order_id)
);
