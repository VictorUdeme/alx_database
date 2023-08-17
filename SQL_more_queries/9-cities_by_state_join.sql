-- Retrieve a list of all cities along with their corresponding state names from the hbtn_0d_usa database.
-- Each record displays: cities.id - cities.name - states.name
-- Results are sorted in ascending order by cities.id.

USE hbtn_0d_usa;

SELECT 
    c.id AS city_id,
    c.name AS city_name,
    s.name AS state_name
FROM cities c
CROSS JOIN states s
WHERE c.state_id = s.id
ORDER BY c.id ASC;
