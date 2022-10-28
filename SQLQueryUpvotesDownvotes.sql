ALTER PROCEDURE UpvotesDownvotes AS
BEGIN
SELECT TOP 10 id, displayname, upvotes, downvotes, (upvotes-downvotes) AS NetVotes FROM Users
WHERE id != -1
ORDER BY upvotes DESC
END