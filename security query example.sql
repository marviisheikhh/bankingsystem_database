-- Create a new user
CREATE USER 'bank_user'@'localhost' IDENTIFIED BY 'bank123';

-- Give permission to only view data (no delete or update)
GRANT SELECT ON banking_db.* TO 'bank_user'@'localhost';

-- To apply changes
FLUSH PRIVILEGES;
