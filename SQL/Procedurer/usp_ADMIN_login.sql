USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_ADMIN_login]    Script Date: 2016-12-20 09:23:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


/*
=======================================================================
Procedure Name..........: dbo.usp_ADMIN_login
Parameters..............: username, password
Return Value............: userID
Database................: T4
Server..................: Harohal
Date....................: 2016-12-01
By......................: Linus Beckman, Erik Sandberg, Albin Östholm
Used On.................: Webbokning
Components..............: 
Changed Date, By........: 2016-12-19 Albin Östholm
Change..................: La till where anstalld = 1, ändrade så att 
........................: bara andmins kan logga in med denna proceduren
=======================================================================
Description.............: Gets input from the user and compares it with 
........................: the existing data, if it exists then return userid
=======================================================================
*/

CREATE Procedure [dbo].[usp_ADMIN_login] @losenord nvarchar(64), @username nvarchar(100)
AS

BEGIN
	DECLARE @PersonId varchar(36) = ''

	SELECT @PersonId = personid					
	FROM personer
	WHERE @losenord = losenord 
	AND mail = @username and anstalld = 1
	

	SELECT @PersonId AS PersonId					

END




GO

