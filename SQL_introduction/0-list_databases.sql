--This script lists all databases of the MySQL server.

import mysql.connector
--The `list_databases()` function takes no arguments and returns a list of all databases in the MySQL server.

#!/bin/bash
mysql -uroot -p -e "SHOW DATABASES;"

