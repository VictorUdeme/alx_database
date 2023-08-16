--This script prints the full description of the first table
#!/usr/bin/env python3

import mysql.connector

def main():
    -- Get the database name from the command line arguments
    database_name = input("Enter the database name: ")

    -- Connect to the MySQL server
    connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="password",
        database=database_name
    )

    -- Get a cursor object
    cursor = connection.cursor()

    -- Execute the SQL query to get the create table statement for the first_table table
    cursor.execute(f"SELECT CREATE TABLE first_table FROM information_schema.tables WHERE table_name = 'first_table' AND table_schema = '{database_name}'")

    -- Fetch all the rows from the result set
    create_table_statement = cursor.fetchone()

    -- Print the create table statement
    print(create_table_statement[0])

if __name__ == "__main__":
    main()
