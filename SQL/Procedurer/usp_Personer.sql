USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_Personer]    Script Date: 2016-12-20 09:27:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



/*
=======================================================================
Procedure Name..........: dbo.usp_personer
Parameters..............: personID
Return Value............: fornamn, efternamn, mail, personnr, nyhetsbrev
Database................: T4
Server..................: Harohal
Date....................: 2016-12-01
By......................: Albin Östholm, Erik Sandberg
Used On.................: personer
Components..............: 
Changed Date, By........: 2016-12-07, Erik Sandberg
Change..................: added this comment
=======================================================================
Description.............: hämtar all info om en person
=======================================================================
*/

CREATE PROCEDURE [dbo].[usp_Personer] @personID uniqueidentifier
AS
SELECT fornamn, efternamn, mail, personnr, nyhetsbrev
FROM personer
WHERE personID = @personID




GO

