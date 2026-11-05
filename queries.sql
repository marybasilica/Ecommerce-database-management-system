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

SELECT
    Customers.customer_name,
    Orders.order_id,
    Orders.order_date,
    Orders.order_status
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id;

SELECT
    Products.product_name,
    Categories.category_name,
    Products.price
FROM Products
INNER JOIN Categories
ON Products.category_id = Categories.category_id;

SELECT
    OrderDetails.order_id,
    Products.product_name,
    OrderDetails.quantity
FROM OrderDetails
INNER JOIN Products
ON OrderDetails.product_id = Products.product_id;
