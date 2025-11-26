
CREATE TABLE orders_hw (
    order_id INT,
    product_name VARCHAR(50),
    order_price INT
);


INSERT INTO orders_hw VALUES
(1, 'Laptop', 55000),
(2, 'Mouse', 800),
(3, 'Laptop', 52000),
(4, 'Keyboard', 1500),
(5, 'Mouse', 900);

-- =============================
-- FIND AVERAGE ORDER PRICE
-- =============================
SELECT AVG(order_price) AS average_order_price
FROM orders_hw;


SELECT product_name, SUM(order_price) AS total_sales
FROM orders_hw
GROUP BY product_name;

SELECT product_name, SUM(order_price) AS total_sales
FROM orders_hw
GROUP BY product_name
ORDER BY total_sales DESC;
