ALTER PROCEDURE MonthlyUsers AS
BEGIN
SELECT YEAR(creationdate) AS year, MONTH(creationdate) AS month, COUNT(*) AS NewMonthlyUsers FROM Users
GROUP BY MONTH(creationdate), YEAR(creationdate)
ORDER BY YEAR(creationdate), MONTH(creationdate) ASC
END