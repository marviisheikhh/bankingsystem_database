CREATE TRIGGER update_balance
AFTER INSERT ON Transaction
FOR EACH ROW
UPDATE Account
SET balance = balance +
  (CASE
     WHEN NEW.transaction_type = 'Deposit' THEN NEW.amount
     WHEN NEW.transaction_type = 'Withdrawal' THEN -NEW.amount
   END)
WHERE account_id = NEW.account_id;

