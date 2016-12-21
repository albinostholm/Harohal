USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_updateUserInfo]    Script Date: 2016-12-20 11:04:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



/*
=======================================================================
Procedure Name..........: dbo.usp_updateUserInfo
Parameters..............: personID, förnamn, efternamn, mail,
........................: nyhetsbrev, tarfaktura
Return Value............: -NULL-
Database................: T4
Server..................: Harohal
Date....................: 2016-12-20
By......................: Albin Östholm
Used On.................: Webbokning
Components..............: 
Changed Date, By........: -NULL-
Change..................: -NULL-
=======================================================================
Description.............: ändrar userInfo
=======================================================================
*/

CREATE Procedure [dbo].[usp_updateUserInfo] @personID uniqueidentifier, @personnr char(13), @fornamn nvarchar(100), @efternamn nvarchar(100), @mail nvarchar(100), @nyhetsbrev bit, @tarfaktura bit
AS

UPDATE personer 
set fornamn = @fornamn, efternamn = @efternamn, mail = @mail, nyhetsbrev = @nyhetsbrev, tarFaktura = @tarfaktura, personnr = @personnr    		

where personID = @personID





GO

