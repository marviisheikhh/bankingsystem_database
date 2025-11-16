START TRANSACTION;

UPDATE Account
SET balance = balance - 1000
WHERE account_id = 1;   -- Sender

UPDATE Account
SET balance = balance + 1000
WHERE account_id = 2;   -- Receiver

COMMIT;
