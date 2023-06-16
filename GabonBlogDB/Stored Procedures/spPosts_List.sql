CREATE PROCEDURE [dbo].[spPosts_List]
AS
begin
	set nocount on;

	Select [p].[Id], [p].[Title], [p].[Body], [p].[DateCreated], [u].[UserName], [u].[LastName]
	From dbo.Posts p
	INNER JOIN dbo.Users u
	ON p.UserId = u.Id
end
