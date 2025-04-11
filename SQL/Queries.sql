CREATE TABLE customers (
    id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, -- AUTO GENERATES ID
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

SELECT * FROM films WHERE title LIKE 'You%'; -- Matches any movie where "You" is at the start of the title
SELECT * FROM films WHERE title LIKE '%You%'; -- Matches any movie with "You" anywhere in the title
SELECT * FROM films WHERE LOWER(title) LIKE LOWER('%The%'); -- Matches any movie case insensitive

SELECT * FROM films ORDER BY duration DESC;
SELECT * FROM films ORDER BY duration ASC;

SELECT COUNT (*) FROM films;
SELECT DISTINCT rating FROM films;
SELECT COUNT (DISTINCT rating) FROM films;
SELECT rating, COUNT(*) FROM films GROUP BY rating;
SELECT rating, AVG(duration) FROM films GROUP BY rating;

-- INNER JOIN
SELECT orders.id, orders.cus_id, customers.id,customers.name
FROM orders
INNER JOIN customers
ON orders.cus_id = customers.id;

-- FULL JOIN
SELECT orders.id, orders.cus_id, customers.id,customers.name
FROM orders
FULL OUTER JOIN customers
ON orders.cus_id = customers.id;

-- LEFT JOIN
SELECT customers.name, orders.order_date, orders.cost
FROM customers
LEFT JOIN orders
ON customers.id= orders.cus_id;

CREATE TABLE divisions (
    id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    code VARCHAR(255),
    name VARCHAR(255),
    country VARCHAR(255)
);

CREATE TABLE matches (
    id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    division_code VARCHAR(255),
    hometeam VARCHAR(255),
    awayteam VARCHAR(255),
    fthg INT,
    ftag INT,
    ftr VARCHAR(255),
    season INT
);

INSERT INTO divisions (code, name, country) VALUES ('B1', 'Division 1A', 'Belgium');
INSERT INTO divisions (code, name, country) VALUES ('D1', 'Bundesliga', 'Deutschland');
INSERT INTO divisions (code, name, country) VALUES ('D2', '2. Bundesliga', 'Deutschland');
INSERT INTO divisions (code, name, country) VALUES ('E0', 'Premier League', 'England');
INSERT INTO divisions (code, name, country) VALUES ('E1', 'EFL Championship', 'England');
INSERT INTO divisions (code, name, country) VALUES ('E2', 'EFL League One', 'England');
INSERT INTO divisions (code, name, country) VALUES ('E3', 'EFL League Two', 'England');
INSERT INTO divisions (code, name, country) VALUES ('EC', 'National League', 'England');
INSERT INTO divisions (code, name, country) VALUES ('F1', 'Ligue 1', 'France');
INSERT INTO divisions (code, name, country) VALUES ('F2', 'Ligue 2', 'France');
INSERT INTO divisions (code, name, country) VALUES ('G1', 'Superleague', 'Greece');
INSERT INTO divisions (code, name, country) VALUES ('I1', 'Seria A', 'Italy');
INSERT INTO divisions (code, name, country) VALUES ('I2', 'Seria B', 'Italy');
INSERT INTO divisions (code, name, country) VALUES ('N1', 'Eredivisie', 'Netherlands');
INSERT INTO divisions (code, name, country) VALUES ('P1', 'Liga NOS', 'Portugal');
INSERT INTO divisions (code, name, country) VALUES ('SC0', 'Scottish Premiership', 'Scotland');
INSERT INTO divisions (code, name, country) VALUES ('SC1', 'Scottish Championship', 'Scotland');
INSERT INTO divisions (code, name, country) VALUES ('SC2', 'Scottish League One', 'Scotland');
INSERT INTO divisions (code, name, country) VALUES ('SP1', 'LaLiga', 'Spain');
INSERT INTO divisions (code, name, country) VALUES ('SP2', 'LaLiga 2', 'Spain');
INSERT INTO divisions (code, name, country) VALUES ('T1', 'Süper Lig', 'Turkey');

SELECT * FROM divisions;
SELECT * FROM games 
WHERE division_code IS NULL
    OR home_team IS NULL
    OR away_team IS NULL
    OR fthg IS NULL
    OR ftag IS NULL
    OR ftr IS NULL
    OR season IS NULL
   
   
DELETE FROM games WHERE division_code IS NULL;    

-- Find all the matches from 2017.
SELECT * FROM games WHERE season = 2017;

-- Find all the matches featuring Barcelona.
SELECT * FROM games WHERE home_team = 'Barcelona' OR away_team = 'Barcelona';

-- What are the names of the Scottish divisions included?
SELECT * FROM divisions WHERE country = 'Scotland';

-- Find the division code for the Bundesliga. 
-- Use that code to find out how many matches Freiburg have played in the Bundesliga since the data started being collected.
SELECT code FROM divisions WHERE name = 'Bundesliga';
---
SELECT COUNT (*) FROM games 
WHERE division_code = (
    SELECT code 
    FROM divisions 
    WHERE name = 'Bundesliga'
)
AND home_team = 'Freiburg' OR away_team = 'Freiburg'

-- Find the unique names of the teams which include the word "City" in their name (as entered in the database)
SELECT DISTINCT home_team FROM games WHERE home_team LIKE '%City%';

-- How many different teams have played in matches recorded in a French division?
SELECT COUNT (DISTINCT home_team) 
FROM games 
WHERE division_code 
IN (
    SELECT code 
    FROM divisions 
    WHERE country = 'France'
);

-- Have Huddersfield played Swansea in the period covered?
SELECT COUNT (*) FROM games 
WHERE home_team = 'Huddersfield' AND away_team = 'Swansea' 
OR home_team = 'Swansea' AND away_team = 'Huddersfield';

-- How many draws were there in the Eredivisie between 2010 and 2015?
SELECT COUNT (*) FROM games 
WHERE division_code = (
    SELECT code 
    FROM divisions 
    WHERE name = 'Eredivisie'
)
AND season BETWEEN 2010 AND 2015
AND ftr = 'D';

-- Select the matches played in the Premier League in order of total goals scored from highest to lowest. 
-- Where there is a tie the match with more home goals should come first.
SELECT games.* , (fthg + ftag) AS total_goals 
FROM games 
WHERE division_code = (
    SELECT code from divisions 
    WHERE name = 'Premier League'
)
ORDER BY total_goals DESC, fthg DESC;

-- In which division and which season were the most goals scored?
SELECT divisions.name, games.season, SUM(fthg + ftag) AS total_goals
FROM games
INNER JOIN divisions
ON games.division_code = divisions.code
GROUP BY divisions.name, games.season
ORDER BY total_goals DESC
FETCH first 5 ROWS ONLY;


