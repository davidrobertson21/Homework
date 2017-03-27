DROP TABLE tickets;
DROP TABLE films;
DROP TABLE customers;

CREATE TABLE films (
  id SERIAL8 primary key,
  title VARCHAR(255)
);

CREATE TABLE customers (
  id SERIAL8 primary key,
  name VARCHAR(255),
  funds INT8
);

CREATE TABLE tickets (
  id SERIAL8 primary key,
  film_id INT8 REFERENCES films(id),
  customer_id INT8 REFERENCES customers(id)
);