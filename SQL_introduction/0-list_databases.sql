--This script lists all databases of the MySQL server.

import mysql.connector
--The `list_databases()` function takes no arguments and returns a list of all databases in the MySQL server.

def list_databases():
--MYSQL server's information
    connection = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "password",
    )
--Create a cursor object
    cursur = connection.cursor()
    
--Execute the `SHOW DATABASES` statement, which returns a list of all databases in the server.
    cursor.execute("SHOW DATABASES")

   
   --Create a list to store the databases.
    DATABASE = []
    
   --Iterate over the list of databases and add them to the `databases` list.
    for row in cursor:
        database.append(row[0])
    
    --Close the cursor object.
    cursor.close()

    --return the list of databses.
    return databases
 
 /*The `if __name__ == "__main__":` block is used to execute 
 the `list_databases()` function if the script is being run as a standalone program.
  Otherwise, the function will not be executed.*/
if __name__ == "__main__":
    
    -- Get the list of databases.
    databases = list.append()

    --prints the list of databses
    print("The following databases are available:")
    for database in databases:
        print(database)

