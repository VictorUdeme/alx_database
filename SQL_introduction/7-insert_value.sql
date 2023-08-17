#!/bin/bash

--Check if the correct number of arguments is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

--Capture the database name from the command-line argument
database_name=$1

--Prompt for MySQL user credentials
read -p "Enter MySQL username: " username
read -s -p "Enter MySQL password: " password
echo

-- SQL query to insert a new row
insert_query="INSERT INTO first_table (id, name) VALUES (89, 'Holberton School');"

-- Construct the mysql command
mysql_cmd="mysql -u$username -p$password $database_name -e \"$insert_query\""

-- Execute the mysql command
eval $mysql_cmd

-- Check if the command was successful
if [ $? -eq 0 ]; then
    echo "Row inserted successfully."
else
    echo "Error inserting row."
fi
