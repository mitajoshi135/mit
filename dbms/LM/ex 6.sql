-- 1. Create a new table orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    student_id INT REFERENCES university_students(id),
    total_price NUMERIC(10,2),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO orders (order_id, total_price, order_date)
VALUES
(1, 1200.50, '2026-03-01 10:15:00'),
(2, 950.00, '2026-03-02 11:20:00'),
(3, 2100.75, '2026-03-03 09:45:00'),
(4, 500.25, '2026-03-04 14:10:00'),
(5, 750.00, '2026-03-05 16:30:00'),
(6, 1800.40, '2026-03-06 12:00:00'),
(7, 2200.00, '2026-03-07 13:25:00'),
(8, 300.99, '2026-03-08 15:50:00'),
(9, 250.75, '2026-03-09 17:05:00'),
(10, 1999.99, '2026-03-10 18:45:00'),
(11, 850.00, '2026-03-11 09:00:00'),
(12, 325.60, '2026-03-12 11:40:00'),
(13, 2750.00, '2026-03-13 14:15:00'),
(14, 640.20, '2026-03-14 16:55:00'),
(15, 980.00, '2026-03-15 19:30:00'),
(16, 450.75, '2026-03-16 08:20:00'),
(17, 210.50, '2026-03-17 10:10:00'),
(18, 3300.00, '2026-03-18 12:45:00'),
(19, 450.25, '2026-03-19 15:05:00'),
(20, 1780.90, '2026-03-20 17:40:00');

-- 2. Retrieve all students along with their orders using a JOIN
SELECT u.*, o.order_id, o.total_price, o.order_date
FROM university_students u
JOIN orders o ON u.id = o.student_id;

-- 3. Find the total orders placed by each student
SELECT u.id, u.name, COUNT(o.order_id) AS total_orders
FROM university_students u
LEFT JOIN orders o ON u.id = o.student_id
GROUP BY u.id, u.name;

-- 4. Retrieve students who have not placed any orders
SELECT u.*
FROM university_students u
LEFT JOIN orders o ON u.id = o.student_id
WHERE o.order_id IS NULL;

-- 5. Retrieve students who have placed orders with a total price above 500
SELECT DISTINCT u.*
FROM university_students u
JOIN orders o ON u.id = o.student_id
WHERE o.total_price > 500;

-- 6. Use a WITH query to find the average order price for each student
WITH avg_orders AS (
    SELECT student_id, AVG(total_price) AS avg_price
    FROM orders
    GROUP BY student_id
)
SELECT u.id, u.name, avg_orders.avg_price
FROM university_students u
JOIN avg_orders ON u.id = avg_orders.student_id;


INSERT INTO orders (order_id, student_id, total_price, order_date)
VALUES
(1, 2, 1200.50, '2026-03-01 10:15:00'),
(2, 4, 950.00, '2026-03-02 11:20:00'),
(3, 5, 2100.75, '2026-03-03 09:45:00'),
(4, 6, 500.25, '2026-03-04 14:10:00'),
(5, 7, 750.00, '2026-03-05 16:30:00'),
(6, 8, 1800.40, '2026-03-06 12:00:00'),
(7, 9, 2200.00, '2026-03-07 13:25:00'),
(8, 10, 300.99, '2026-03-08 15:50:00'),
(9, 11, 250.75, '2026-03-09 17:05:00'),
(10, 12, 1999.99, '2026-03-10 18:45:00'),
(11, 13, 850.00, '2026-03-11 09:00:00'),
(12, 14, 325.60, '2026-03-12 11:40:00'),
(13, 15, 2750.00, '2026-03-13 14:15:00'),
(14, 16, 640.20, '2026-03-14 16:55:00'),
(15, 17, 980.00, '2026-03-15 19:30:00'),
(16, 18, 450.75, '2026-03-16 08:20:00'),
(17, 19, 210.50, '2026-03-17 10:10:00'),
(18, 20, 3300.00, '2026-03-18 12:45:00');

