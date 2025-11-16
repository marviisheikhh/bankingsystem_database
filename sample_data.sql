INSERT INTO Customer (name, address, phone, email)
VALUES
('Ayesha Khan', 'Karachi', '03001234567', 'ayesha@gmail.com'),
('Ali Raza', 'Lahore', '03214567890', 'ali@gmail.com'),
('Fatima Noor', 'Islamabad', '03331239876', 'fatima@gmail.com');

INSERT INTO Account (customer_id, account_type, balance)
VALUES
(1, 'Savings', 50000.00),
(2, 'Current', 25000.00),
(3, 'Savings', 80000.00);

INSERT INTO Loan (customer_id, loan_amount, interest_rate, status)
VALUES
(1, 100000.00, 5.5, 'Approved'),
(2, 50000.00, 6.0, 'Pending'),
(3, 150000.00, 4.8, 'Approved');

INSERT INTO Transaction (account_id, transaction_type, amount)
VALUES
(1, 'Deposit', 10000.00),
(1, 'Withdrawal', 2000.00),
(2, 'Deposit', 5000.00),
(3, 'Withdrawal', 10000.00);

SELECT * FROM Customer;
SELECT * FROM Account;
SELECT * FROM Loan;
SELECT * FROM Transaction;
