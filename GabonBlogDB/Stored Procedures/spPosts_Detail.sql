CREATE PROCEDURE [dbo].[spPosts_Detail]
	@id int
AS
begin
	set nocount on;

	SELECT [p].[id], [p].[Title], [p].[Body], [p].[DateCreated], [u].[UserName], [u].[FirstName], [u].[LastName]
	FROM dbo.Posts p
	INNER JOIN dbo.Users u
	ON p.UserId = u.Id
	WHERE p.Id = @id;

end
