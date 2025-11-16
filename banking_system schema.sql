CREATE DATABASE banking_system;
USE banking_system;

CREATE TABLE Customer (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  address VARCHAR(200),
  phone VARCHAR(15),
  email VARCHAR(100)
);
CREATE TABLE Account (
  account_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT,
  account_type VARCHAR(20),
  balance DECIMAL(10,2) DEFAULT 0.00,
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
CREATE TABLE Loan (
  loan_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT,
  loan_amount DECIMAL(12,2),
  interest_rate DECIMAL(4,2),
  status VARCHAR(20),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
CREATE TABLE Transaction (
  transaction_id INT PRIMARY KEY AUTO_INCREMENT,
  account_id INT,
  transaction_type VARCHAR(20),
  amount DECIMAL(10,2),
  transaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (account_id) REFERENCES Account(account_id)
);
SHOW TABLES;
DESCRIBE Customer;
DESCRIBE Account;
DESCRIBE Loan;
DESCRIBE Transaction;


