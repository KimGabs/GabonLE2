CREATE PROCEDURE [dbo].[spPosts_Insert]
	@userId int,
	@title nvarchar(150),
	@body text,
	@dateCreated datetime2
AS
begin
	INSERT INTO dbo.Posts
	(UserId, Title, Body, DateCreated)
	Values
	(@userId, @title, @body, @dateCreated)
end

