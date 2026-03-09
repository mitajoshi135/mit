-- 1. Create a table named product
CREATE TABLE product (
    product_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price NUMERIC(10,2) CHECK (price > 0),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    is_available BOOLEAN DEFAULT TRUE
);

-- 2. Insert sample data into product (20 rows)
INSERT INTO product (product_id, name, price, is_available) VALUES
(1, 'Laptop', 75000.00, TRUE),
(2, 'Smartphone', 30000.00, FALSE),
(3, 'Tablet', 20000.00, TRUE),
(4, 'Headphones', 2500.00, TRUE),
(5, 'Keyboard', 1500.00, FALSE),
(6, 'Mouse', 800.00, TRUE),
(7, 'Monitor', 12000.00, TRUE),
(8, 'Printer', 8500.00, TRUE),
(9, 'Camera', 45000.00, FALSE),
(10, 'Speaker', 3500.00, TRUE),
(11, 'Smartwatch', 15000.00, TRUE),
(12, 'Router', 5000.00, FALSE),
(13, 'External HDD', 6000.00, TRUE),
(14, 'SSD', 7000.00, TRUE),
(15, 'Microphone', 4000.00, FALSE),
(16, 'Projector', 25000.00, TRUE),
(17, 'TV', 55000.00, TRUE),
(18, 'Gaming Console', 45000.00, TRUE),
(19, 'Drone', 65000.00, FALSE),
(20, 'VR Headset', 30000.00, TRUE);

-- 3. Retrieve all products where is_available is true
SELECT * 
FROM product
WHERE is_available = TRUE;

-- 4. Update the price of a specific product (example: product_id = 5)
UPDATE product
SET price = 1800.00
WHERE product_id = 5
RETURNING *;  

-- 5. Delete a product based on product_id (example: product_id = 10)
DELETE FROM product
WHERE product_id = 10
RETURNING *;   
