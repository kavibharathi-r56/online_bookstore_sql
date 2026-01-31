CREATE DATABASE online_bookstore;
USE online_bookstore;
CREATE TABLE books (
book_id INT PRIMARY KEY,
title VARCHAR (100) NOT NULL,
author VARCHAR (50) NOT NULL,
ISBN VARCHAR (20) UNIQUE,
price DECIMAL (8,2) CHECK(PRICE >0)
);
CREATE TABLE orders (
order_id INT PRIMARY KEY,
book_id INT,
order_date DATE NOT NULL,
quantity INT CHECK (quantity >0),
FOREIGN KEY (book_id) REFERENCES books (book_id)
);
USE online_bookstore;
ALTER TABLE books 
MODIFY COLUMN ISBN VARCHAR (20) UNIQUE DEFAULT 'N/A';
ALTER TABLE books
ALTER COLUMN ISBN SET DEFAULT 'N/A';

USE online_bookstore;
INSERT INTO books (book_id, title, author, ISBN, price) VALUES 
(1, 'The Alchemist', 'Paulo Coelho', '9780061122415', 299.00),
(2, 'Atomic Habits', 'James Clear', '9780735211292', 450.00),
(3, 'Clean Code', 'Robert C. Martin', '9780132350884', 799.00),
(4, 'Think Like a Monk', 'Jay Shetty', '9781982134488', 399.00),
(5, 'Deep Work', 'Cal Newport', '9781455586691', 499.00);
SELECT * FROM books;

INSERT INTO Orders (order_id, book_id, order_date, quantity)
VALUES
(101, 1, '2025-01-10', 2),
(102, 3, '2025-01-12', 1),
(103, 2, '2025-01-15', 4),
(104, 5, '2025-01-18', 2),
(105, 4, '2025-01-20', 3);
SELECT * FROM orders;

UPDATE books SET price = 480.00 WHERE book_id= 2;
SELECT * FROM orders;
UPDATE Orders
SET quantity = 4
WHERE order_id = 104;
SELECT * FROM orders;

DELETE FROM orders WHERE order_id= 103;
SELECT * FROM orders;
TRUNCATE TABLE orders;

