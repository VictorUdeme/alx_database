-- Retrieve a list of all cities of California from the hbtn_0d_usa database.
-- Results display: cities.id - cities.name
-- Results are sorted in ascending order by cities.id.

USE hbtn_0d_usa;

SELECT
    c.id,
    c.name
FROM cities c, states s
WHERE c.state_id = s.id AND s.name = 'California'
ORDER BY c.id ASC;

