DECLARE @JsonData NVARCHAR(MAX)

SELECT @JsonData = Conversations
FROM dbo.Users
WHERE UserId = 1

-- Returns first messages as table
EXEC [jqsql].[totable] @JsonData, 'Messages[0]'
