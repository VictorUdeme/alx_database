--This script prints the full description of the first table
#!/bin/bash
mysql -uroot -p -e "USE $1; SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_KEY, COLUMN_DEFAULT, EXTRA FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='first_table';"

