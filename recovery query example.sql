START TRANSACTION;

UPDATE Account
SET balance = balance - 5000
WHERE account_id = 1;

UPDATE Account
SET balance = balance + 5000
WHERE account_id = 2;

-- If everything is fine, save the changes
COMMIT;

-- If something goes wrong, undo all changes
ROLLBACK;
