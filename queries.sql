USE ecommerce_db;

SELECT * FROM Customers;

SELECT * FROM Products;

SELECT * FROM Products
WHERE price > 1000;

SELECT * FROM Customers
WHERE city = 'Chennai';

SELECT * FROM Products
ORDER BY price DESC;

SELECT COUNT(*) AS total_customers
FROM Customers;

SELECT MAX(price) AS highest_price
FROM Products;
