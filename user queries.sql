USE banking_system;

INSERT INTO Customer (name, address, phone, email)
VALUES ('Sana Malik', 'Karachi', '03004561234', 'sana@gmail.com');

INSERT INTO Account (customer_id, account_type, balance)
VALUES (6, 'Current', 25000.00);

UPDATE Loan
SET status = 'Approved'
WHERE loan_id = 2;

SELECT Customer.name, Account.account_type, Account.balance
FROM Customer
JOIN Account ON Customer.customer_id = Account.customer_id;

DELETE FROM Account
WHERE account_id = 8;
