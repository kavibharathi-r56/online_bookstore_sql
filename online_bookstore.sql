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

