-- Retrieve a list of all cities of California from the hbtn_0d_usa database.
-- Results display: cities.id - cities.name
-- Results are sorted in ascending order by cities.id.

SELECT cities.name
FROM cities
WHERE cities.state_id IN (
  SELECT states.id
  FROM states
  WHERE states.name = 'California'
)
ORDER BY cities.id;


