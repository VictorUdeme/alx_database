-- @block
SELECT cities.id, cities.name
FROM cities
WHERE states.name = 'California'
ORDER BY cities.id ASC;

