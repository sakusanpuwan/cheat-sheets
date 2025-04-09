CREATE TABLE customers (
    id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, // 
    name VARCHAR2(255),
    age NUMBER,
    city VARCHAR2(255),
    country VARCHAR2(255),
    has_subscription VARCHAR2(255)
);

CREATE TABLE orders (
    id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cus_id NUMBER,
    order_date DATE,
    cost NUMBER,
    discount NUMBER,
    status VARCHAR2(255),
    FOREIGN KEY (cus_id) REFERENCES customers(id)
);

CREATE TABLE films (
    id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	title VARCHAR(255),
	duration INT,
	rating VARCHAR(255)
);

INSERT INTO customers (name, age, city, country, has_subscription) VALUES ('Adam', 58, 'New York', 'USA','TRUE');
INSERT INTO customers (name, age, city, country, has_subscription) VALUES ('Bella', NULL, 'Tijuana', 'Mexico', 'FALSE');
INSERT INTO customers (name, age, city, country, has_subscription) VALUES ('Chetan', 36, 'New Delhi', 'India','TRUE');

INSERT INTO orders (cus_id, order_date, cost, discount, status) VALUES (1, TO_DATE('2023-04-05', 'YYYY-MM-DD'), 300.00, 0.00,'Delivered');  
INSERT INTO orders (cus_id, order_date, cost, discount, status) VALUES (2, TO_DATE('2023-10-02', 'YYYY-MM-DD'), 400.00, 0.00,'Shipped');
INSERT INTO orders (cus_id, order_date, cost, discount, status) VALUES (2, TO_DATE('2024-11-19', 'YYYY-MM-DD'), 100.00, 25.35,'TBD');
INSERT INTO orders (cus_id, order_date, cost, discount, status) VALUES (NULL, TO_DATE('2027-06-16', 'YYYY-MM-DD'), 1200.00, 0.00,'TBD');

INSERT INTO films (title, duration, rating) VALUES ('Guardians of the Galaxy', 121, '12A');
INSERT INTO films (title, duration, rating) VALUES ('You Only Live Twice', 117, 'PG');
INSERT INTO films (title, duration, rating) VALUES ('I Know What You Did Last Summer', 101, '18');

SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM films;

SELECT name,age FROM customers WHERE age > 50;

UPDATE customers SET name = 'Bella', age = 42 WHERE id = 2;

INSERT INTO orders (cus_id, order_date, cost, discount, status) VALUES (NULL, NULL, NULL, NULL, NULL);
DELETE FROM orders WHERE id = 5;

SELECT * FROM films WHERE title LIKE 'You%'; // Matches any movie where "You" is at the start of the title
SELECT * FROM films WHERE title LIKE '%You%'; // Matches any movie with "You" anywhere in the title
SELECT * FROM films WHERE LOWER(title) LIKE LOWER('%The%'); // Matches any movie regardless 


