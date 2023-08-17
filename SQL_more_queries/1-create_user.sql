-- Check if the user exists
SELECT user FROM mysql.user WHERE user = 'user_0d_1';

-- Create the user if it doesn't exist
CREATE USER IF NOT EXISTS 'user_0d_1'@'%' IDENTIFIED BY 'user_0d_1_pwd';

-- Grant all privileges to the user
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'%';

-- Refresh the privileges
FLUSH PRIVILEGES;
