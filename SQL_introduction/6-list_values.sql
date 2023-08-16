--This script that lists all rows of the table first_table from the database hbtn_0c_0
#!/usr/bin/env python3

import mysql.connector

def main():
    # Get the database name from the command line arguments
    database_name = input("Enter the database name: ")

    # Connect to the MySQL server
    connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="password",
        database=database_name
    )

    # Get a cursor object
    cursor = connection.cursor()

    # Execute the SQL query to list all the rows of the first_table table
    cursor.execute("SELECT * FROM first_table")

    # Fetch all the rows from the result set
    rows = cursor.fetchall()

    # Print all the rows
    for row in rows:
        print(row)

if __name__ == "__main__":
    main()

