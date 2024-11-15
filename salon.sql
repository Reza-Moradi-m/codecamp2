-- Create the salon database
CREATE DATABASE salon;

-- Connect to the salon database
\c salon

-- Create the customers table
CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  phone VARCHAR(20) UNIQUE
);

-- Create the services table
CREATE TABLE services (
  service_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

-- Create the appointments table
CREATE TABLE appointments (
  appointment_id SERIAL PRIMARY KEY,
  customer_id INT REFERENCES customers(customer_id),
  service_id INT REFERENCES services(service_id),
  time VARCHAR(20) NOT NULL
);

-- Insert services (example data)
INSERT INTO services (name) VALUES ('cut');
INSERT INTO services (name) VALUES ('color');
INSERT INTO services (name) VALUES ('perm');
