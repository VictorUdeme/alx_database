-- Define the database and table names
SET @db_name := 'hbtn_0c_0';
SET @table_name := 'first_table';

-- Print the full description of the table
SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_DEFAULT, COLUMN_KEY, EXTRA
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = @db_name AND TABLE_NAME = @table_name;

