SELECT Customer.name, Account.account_id, Account.account_type, Account.balance
FROM Customer
INNER JOIN Account ON Customer.customer_id = Account.customer_id;

SELECT Customer.name, Loan.loan_id, Loan.loan_amount, Loan.status
FROM Customer
LEFT JOIN Loan ON Customer.customer_id = Loan.customer_id;

SELECT Account.account_id, Customer.name, Transaction.transaction_type, Transaction.amount
FROM Account
JOIN Customer ON Account.customer_id = Customer.customer_id
JOIN Transaction ON Account.account_id = Transaction.account_id;

SELECT Customer.nameN
FROM Customer
LEFT JOIN Loan ON Customer.customer_id = Loan.customer_id
WHERE Loan.loan_id IS NULL;

SELECT Customer.name, Account.account_type, Loan.loan_amount, Loan.status
FROM Customer
JOIN Account ON Customer.customer_id = Account.customer_id
JOIN Loan ON Customer.customer_id = Loan.customer_id;

