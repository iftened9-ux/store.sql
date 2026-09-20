-- Store database: products and categories

CREATE DATABASE IF NOT EXISTS store;
USE store;

DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS categories;

CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(100) 
);

CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(100),
    price Decimal(10,2),
    quantity INT,
    rating INT,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

INSERT INTO categories VALUES (1, 'Computer Peripherals');
INSERT INTO categories VALUES (2, 'Audio');
INSERT INTO categories VALUES (3, 'Computers');
INSERT INTO categories VALUES (4, 'Storage');
INSERT INTO categories VALUES (5, 'Accessories');

INSERT INTO products VALUES (1, 'Wireless Mouse', 49.99, 120, 7, 1);
INSERT INTO products VALUES (2, 'Mechanical Keyboard', 249.99, 45, 8, 1);
INSERT INTO products VALUES (3, 'Bluetooth Headphones', 199.99, 60, 5, 2);
INSERT INTO products VALUES (4, '24 inch Monitor', 699.99, 25, 9, 1);
INSERT INTO products VALUES (5, '15.6 inch Laptop', 2999.99, 12, 10, 3);
INSERT INTO products VALUES (6, 'USB-C Charger', 79.99, 200, 6, 5);
INSERT INTO products VALUES (7, 'HDMI Cable', 29.99, 150, 7, 5);
INSERT INTO products VALUES (8, 'Full HD Webcam', 149.99, 35, 8, 1);
INSERT INTO products VALUES (9, '1TB External SSD', 399.99, 30, 10, 4);
INSERT INTO products VALUES (10, '64GB USB Flash Drive', 39.99, 180, 7, 4);
INSERT INTO products VALUES (11, 'Portable Speaker', 179.99, 50, 4, 2);
INSERT INTO products VALUES (12, '20000mAh Power Bank', 129.99, 70, 9, 5);
INSERT INTO products VALUES (13, 'Laptop Stand', 89.99, 55, 10, 5);
INSERT INTO products VALUES (14, 'XL Mousepad', 59.99, 90, 7, 1);
INSERT INTO products VALUES (15, 'Wi-Fi 6 Router', 349.99, 20, 6, 5);

SELECT products.name, categories.name AS category FROM products JOIN categories ON products.category_id = categories.id; 