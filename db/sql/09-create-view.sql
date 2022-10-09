CREATE VIEW breed_count AS
SELECT c.id, c.breed, CASE
WHEN a.breedId BETWEEN 1 AND 5 THEN COUNT(a.breedId)
ELSE COUNT(NULL)
END
FROM dog as a
JOIN breedLookup as c ON c.id = a.breedId
GROUP BY c.id, c.breed, a.breedId
ORDER BY c.id;
