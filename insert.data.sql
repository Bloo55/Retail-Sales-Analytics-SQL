INSERT INTO Customers (first_name, last_name, city)
VALUES
('John', 'Smith', 'New York'),
('Sarah', 'Johnson', 'Chicago'),
('Michael', 'Brown', 'Dallas'),
('Emma', 'Wilson', 'Boston'),
('David', 'Lee', 'Miami');

INSERT INTO Products (product_name, category, price)
VALUES
('Laptop', 'Electronics', 999.99),
('Keyboard', 'Electronics', 49.99),
('Desk Chair', 'Furniture', 199.99),
('Monitor', 'Electronics', 249.99),
('Desk Lamp', 'Furniture', 39.99);

INSERT INTO Orders (customer_id, order_date)
VALUES
(1, '2024-01-10'),
(2, '2024-01-15'),
(3, '2024-02-03'),
(1, '2024-02-20'),
(4, '2024-03-05'),
(5, '2024-03-18');

INSERT INTO OrderDetails (order_id, product_id, quantity)
VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(3, 4, 2),
(4, 5, 3),
(5, 1, 1),
(6, 2, 4),
(6, 3, 1);