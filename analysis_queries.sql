-- Customer Orders

SELECT
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id;

-- Product Revenue

SELECT
    p.product_name,
    SUM(od.quantity) AS total_units_sold,
    SUM(od.quantity * p.price) AS total_revenue
FROM OrderDetails od
JOIN Products p
ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC;

-- Customer Spending

SELECT
    c.first_name,
    c.last_name,
    SUM(od.quantity * p.price) AS total_spent
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
JOIN OrderDetails od
ON o.order_id = od.order_id
JOIN Products p
ON od.product_id = p.product_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC;

-- Revenue by Category

SELECT
    p.category,
    SUM(od.quantity * p.price) AS total_revenue
FROM OrderDetails od
JOIN Products p
ON od.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;

-- Monthly Sales Trend

SELECT
    DATE_TRUNC('month', o.order_date) AS month,
    SUM(od.quantity * p.price) AS revenue
FROM Orders o
JOIN OrderDetails od
ON o.order_id = od.order_id
JOIN Products p
ON od.product_id = p.product_id
GROUP BY month
ORDER BY month;

-- Product Performance

SELECT
    p.product_name,
    SUM(od.quantity) AS units_sold,
    SUM(od.quantity * p.price) AS revenue
FROM OrderDetails od
JOIN Products p
ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;