SELECT * FROM Customer;

SELECT a.account_id, c.name AS customer_name, a.account_type, a.balance
FROM Account a
JOIN Customer c ON a.customer_id = c.customer_id;

SELECT l.loan_id, c.name AS customer_name, l.loan_amount, l.interest_rate, l.status
FROM Loan l
JOIN Customer c ON l.customer_id = c.customer_id;

SELECT t.transaction_id, c.name AS customer_name, t.transaction_type, t.amount
FROM Transaction t
JOIN Account a ON t.account_id = a.account_id
JOIN Customer c ON a.customer_id = c.customer_id;

SELECT c.name, l.loan_amount
FROM Customer c
JOIN Loan l ON c.customer_id = l.customer_id
WHERE l.status = 'Approved';

SELECT SUM(balance) AS total_bank_balance FROM Account;

SELECT c.name, a.balance
FROM Customer c
JOIN Account a ON c.customer_id = a.customer_id
WHERE a.account_type = 'Savings';

SELECT SUM(loan_amount) AS total_approved_loan
FROM Loan
WHERE status = 'Approved';

SELECT account_id, COUNT(transaction_id) AS total_transactions
FROM Transaction
GROUP BY account_id;

SELECT c.name, SUM(t.amount) AS total_deposited
FROM Transaction t
JOIN Account a ON t.account_id = a.account_id
JOIN Customer c ON a.customer_id = c.customer_id
WHERE t.transaction_type = 'Deposit'
GROUP BY c.name;
