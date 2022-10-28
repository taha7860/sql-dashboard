ALTER PROCEDURE KPIChecker AS
BEGIN
SELECT userid, COUNT(*) AS posts FROM (SELECT name, userid FROM Users
INNER JOIN Badges
ON Users.id = Badges.userid
WHERE name = 'Teacher') AS teacherUsers
INNER JOIN Posts
ON teacherUsers.userid = Posts.owneruserid
GROUP BY teacherUsers.userid
HAVING COUNT(*) < 100
ORDER BY teacherUsers.userid ASC
END