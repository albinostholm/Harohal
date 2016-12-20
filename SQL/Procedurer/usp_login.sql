USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_login]    Script Date: 2016-12-20 09:26:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--Author Linus Beckman
--Date 2016-12-01
--Gets input from the user and compares it with the existing data, if it exists then return userid.


/*
=======================================================================
Procedure Name..........: dbo.usp_login
Parameters..............: username, password
Return Value............: userID
Database................: T4
Server..................: Harohal
Date....................: 2016-12-01
By......................: Linus Beckman, Erik Sandberg
Used On.................: Webbokning
Components..............: 
Changed Date, By........: -null-
Change..................: -null-
=======================================================================
Description.............: Gets input from the user and compares it with 
........................: the existing data, if it exists then return userid
=======================================================================
*/

CREATE Procedure [dbo].[usp_login] @losenord nvarchar(64), @username nvarchar(100)
AS

BEGIN
	DECLARE @PersonId varchar(36) = ''

	SELECT @PersonId = personid					
	FROM personer
	WHERE @losenord = losenord 
	AND mail = @username;

	SELECT @PersonId AS PersonId					

END

GO

