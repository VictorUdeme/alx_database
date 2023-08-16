--This script lists all databases of the MySQL server.

import mysql.connector

#!/bin/bash
mysql -uroot -p -e "SHOW DATABASES;"

