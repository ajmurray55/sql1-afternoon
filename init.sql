-- TABLE PERSON --

-- number 1
CREATE TABLE person 
(persons_id SERIAL PRIMARY KEY, 
 name VARCHAR(50), 
 age INTEGER, 
 height INTEGER , 
 city VARCHAR(50), 
 favorite_color VARCHAR(50));

-- number 2
INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Ammon', 24, 765, 'Mesa', 'blue'), 
('Jim', 43, 455, 'Phoenix', 'yellow'),
('John', 32, 543, 'Tucson', 'red'),
('Josh', 12, 654, 'Scottsdale', 'green'),
('Joe', 65, 887, 'Gilbert', 'orange');

SELECT * from person

-- number 3
SELECT * FROM person ORDER BY height DESC;

-- number 4
SELECT * FROM person ORDER BY height ASC;

-- number 5
SELECT * FROM person ORDER BY age DESC

-- number 6
SELECT * FROM person 
WHERE age > 20;

-- number 7
SELECT * FROM person 
WHERE age = 18;

-- number 8
SELECT * FROM person
WHERE age > 20 OR age < 30;

-- number 9
SELECT * FROM person 
WHERE age != 27;

-- number 10
SELECT * FROM person 
WHERE favorite_color != 'red';

-- number 11
SELECT * FROM person 
WHERE favorite_color != 'red' AND favorite_color != 'blue';

-- number 12
SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

-- number 13
SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

-- number 14
SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');

-- TABLE ORDERS --

-- number 1
CREATE TABLE orders (
 order_id SERIAL PRIMARY KEY,
 person_id INTEGER,
 product_name VARCHAR(50),
 product_price NUMERIC(4,2), 
 quantity INTEGER
)

-- number 2
INSERT INTO orders 
(person_id, product_name, product_price, quantity)
VALUES
(10, 'Pepperoni', 5.99, 1),
(11, 'Ham', 4.99, 2), 
(12, 'Cheese', 3.99, 4), 
(13, 'Meat Eater', 8.99, 2), 
(14, 'Pineapple', 5.99, 1);

-- number 3
SELECT * FROM orders

-- number 4
SELECT SUM(quantity) FROM orders

-- number 5
SELECT SUM(product_price * quantity) FROM orders
 
-- number 6
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 10;


-- TABLE ARTIST --

-- number 1
INSERT INTO artist 
(name)
VALUES
('Drake'),('Fall Out Boy');

-- number 2
SELECT * FROM artist ORDER BY name DESC LIMIT 10; 

-- number 3
SELECT * FROM artist ORDER BY name ASC LIMIT 5;


-- number 4
SELECT * FROM artist 
WHERE name LIKE 'Black%';

-- number 5
SELECT * FROM artist 
WHERE name LIKE '%Black%'


-- TABLE EMPLOYEE --

-- number 1
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

-- number 2
SELECT MAX(birth_date) FROM employee;

-- number 3
SELECT MIN(birth_date) FROM employee;

-- number 4
SELECT * FROM employee
WHERE reports_to = 2;

-- number 5
SELECT * FROM employee
WHERE city = 'Lethbridge';

-- TABLE INVOICE --

-- number 1
SELECT * FROM invoice
WHERE billing_country = 'USA';

-- number 2
SELECT MAX(total) FROM invoice;

-- number 3
SELECT MIN(total) FROM invoice;

-- number 4
SELECT * FROM invoice
WHERE total < 5;

-- number 5
SELECT * FROM invoice
WHERE total > 5;

-- number 6
SELECT * FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

-- number 7
SELECT AVG(total) FROM invoice;

-- number 8
SELECT SUM(TOTAL) FROM invoice;
