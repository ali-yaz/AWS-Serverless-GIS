-- Select the resturants in Downtown Montreal from Open Street Map (saved as "planet" db on AWS S3 using Athena)
SELECT lat, lon, tags['name'] as name from planet
WHERE type = 'node'
AND tags['amenity'] = 'restaurant'
AND lat BETWEEN 45.1835 AND 45.8235
AND lon BETWEEN -73.8085 AND -73.2085
limit 25
