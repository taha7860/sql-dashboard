ALTER PROCEDURE LocationCounter AS
BEGIN 
SELECT location, COUNT(*) AS Location_count FROM Users
WHERE location IS NOT NULL AND location <> ''
GROUP BY location;
END