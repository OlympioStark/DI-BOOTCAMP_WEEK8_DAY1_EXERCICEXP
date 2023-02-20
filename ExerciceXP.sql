CREATE TABLE items(
	items_id SERIAL PRIMARY KEY,
	items_name VARCHAR(50) NOT NULL,
	price int NOT NULL
);

CREATE TABLE customers(
	customers_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(50) NOT NULL
);

--- 1 - add records in items table

INSERT INTO items(items_name, price) 
VALUES ('Small Desk', 100), ('Large desk', 300), ('Fan', 80);

--- 2 - add record in customers table

INSERT INTO customers(first_name, last_name)
VALUES ('Greg', 'Jones'), ('Sandra', 'Jones'), ('Scott', 'Scott'),
('Trevor', 'Green'), ('Melanie', 'Johnson');

--- 3.1 - get all items

SELECT * FROM items;

--- 3.2 - All the items with a price above 80 (80 not included).

SELECT * FROM items WHERE price > 80;

--- 3.3 - All the items with a price below 300. (300 included)

SELECT * FROM items WHERE price <= 300;
 
--- 3.4 - All customers whose last name is ‘Smith’ (What will be your outcome?).

SELECT * FROM customers WHERE last_name = 'smith';

--- 3.5 - All customers whose last name is ‘Jones’

SELECT * FROM customers WHERE last_name = 'Jones';

--- 3.6 - All customers whose firstname is not ‘Scott’

SELECT * FROM customers WHERE first_name != 'Scott';