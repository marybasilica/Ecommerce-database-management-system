USE ecommerce_db;

INSERT INTO Categories (category_name)
VALUES('Electronics'),
  ('Clothing'),
  ('Books'),
  ('Home Appliances'),
  ('Beauty');

INSERT INTO Customers (customer_name, email, phone, city)
VALUES
('Arun', 'arun@gmail.com', '9876543210', 'Chennai'),
('Priya', 'priya@gmail.com', '9876543211', 'Ambattur'),
('Rahul', 'rahul@gmail.com', '9876543212', 'Avadi'),
('Sneha', 'sneha@gmail.com', '9876543213', 'Tambaram'),
('Karthik', 'karthik@gmail.com', '9876543214', 'Anna Nagar');

INSERT INTO Products (product_name, price, stock, category_id)
VALUES
('Laptop', 55000, 10, 1),
('Headphones', 1500, 25, 1),
('T-Shirt', 800, 30, 2),
('SQL Book', 500, 15, 3),
('Mixer Grinder', 3000, 8, 4);

INSERT INTO Orders (customer_id, order_date, order_status)
VALUES
(1, '2026-10-01', 'Delivered'),
(2, '2026-10-02', 'Processing'),
(3, '2026-10-03', 'Delivered'),
(4, '2026-10-04', 'Shipped'),
(5, '2026-10-05', 'Delivered');

INSERT INTO OrderDetails (order_id, product_id, quantity)
VALUES
(1, 1, 1),
(2, 3, 2),
(3, 4, 1),
(4, 2, 1),
(5, 5, 2);

INSERT INTO Payments (order_id, payment_date, amount, payment_method, payment_status)
VALUES
(1, '2026-10-01', 55000, 'UPI', 'Paid'),
(2, '2026-10-02', 1600, 'Card', 'Pending'),
(3, '2026-10-03', 500, 'Cash', 'Paid'),
(4, '2026-10-04', 1500, 'UPI', 'Paid'),
(5, '2026-10-05', 6000, 'Card', 'Paid');

SELECT * FROM Categories;
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM OrderDetails;
SELECT * FROM Payments;
