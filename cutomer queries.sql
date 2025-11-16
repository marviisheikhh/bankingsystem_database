USE banking_system;

SELECT * FROM Customer WHERE customer_id = 3;

SELECT balance FROM Account WHERE customer_id = 3;

INSERT INTO Transaction (account_id, transaction_type, amount)
VALUES (3, 'Deposit', 5000.00);

INSERT INTO Transaction (account_id, transaction_type, amount)
VALUES (3, 'Withdrawal', 2000.00);

SELECT transaction_type, amount, transaction_date
FROM Transaction
WHERE account_id = 3;

SELECT loan_amount, interest_rate, status
FROM Loan
WHERE customer_id = 3;
