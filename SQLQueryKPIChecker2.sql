CREATE PROCEDURE KPIChecker2 AS
BEGIN
SELECT userid, (COUNT(*) / (MAX(DAY(creationdate)) - DAY(creationdate))) AS posts FROM (SELECT userid, DAY(creationdate) AS day FROM Users
INNER JOIN Badges
ON Users.id = Badges.userid
WHERE name = 'Teacher') AS teacherUsers
INNER JOIN Posts
ON teacherUsers.userid = Posts.owneruserid
GROUP BY teacherUsers.userid
HAVING COUNT(*) < 10
ORDER BY teacherUsers.userid ASC
END