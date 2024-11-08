CREATE DATABASE salon;

CREATE TABLE customers();
CREATE TABLE appointments();
CREATE TABLE services();

ALTER TABLE customers ADD COLUMN customer_id SERIAL PRIMARY KEY;
ALTER TABLE appointments ADD COLUMN appointment_id SERIAL PRIMARY KEY;
ALTER TABLE services ADD COLUMN service_id SERIAL PRIMARY KEY;

ALTER TABLE appointments ADD COLUMN customer_id INT NOT NULL;
ALTER TABLE appointments ADD FOREIGN KEY(customer_id) REFERENCES customers(customer_id);

ALTER TABLE appointments ADD COLUMN service_id INT NOT NULL;
ALTER TABLE appointments ADD FOREIGN KEY(service_id) REFERENCES services(service_id);

ALTER TABLE customers ADD COLUMN phone VARCHAR(20) NOT NULL UNIQUE;

ALTER TABLE customers ADD COLUMN name VARCHAR(50);

ALTER TABLE services ADD COLUMN name VARCHAR(50);

ALTER TABLE appointments ADD COLUMN time VARCHAR(50);

INSERT INTO services(name) VALUES ('cut'), ('color'), ('perm'), ('style'), ('trim');
