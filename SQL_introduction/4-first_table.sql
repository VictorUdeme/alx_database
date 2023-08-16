--THIS SCRIPT CREATE A NEW TABLE(first_table)
#!/bin/bash
mysql -uroot -p -e "USE $1; CREATE TABLE IF NOT EXISTS first_table (id INT, name VARCHAR(256));"