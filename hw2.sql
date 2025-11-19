

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(100),
    amount INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers VALUES
(1, 'Arun', 'arun@mail.com'),
(2, 'Beena', 'beena@mail.com'),
(3, 'Charles', 'charles@mail.com'),
(4, 'Divya', 'divya@mail.com'),
(5, 'Eshan', 'eshan@mail.com');

INSERT INTO orders VALUES
(101, 1, 'Laptop', 75000),
(102, 2, 'Mobile', 25000),
(103, 1, 'Headphones', 3000),
(104, 4, 'Keyboard', 1200),
(105, 5, 'Monitor', 9000);

SELECT c.customer_name, o.product, o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

SELECT c.customer_name, o.product, o.amount
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

