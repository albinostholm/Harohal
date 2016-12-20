USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_getUserInfo]    Script Date: 2016-12-20 09:25:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


/*
=======================================================================
Procedure Name..........: dbo.usp_getUserInfo
Parameters..............: personID
Return Value............: förnamn, efternamn, personnr, mail
Database................: T4
Server..................: Harohal
Date....................: 2016-12-06
By......................: Linus Beckman 
Used On.................: personer
Components..............: 
Changed Date, By........: -null-
Change..................: -null-
=======================================================================
Description.............: hämtar användarinfo efter ID
=======================================================================
*/

CREATE PROCEDURE [dbo].[usp_getUserInfo]
    @personid	uniqueidentifier

	AS 

    BEGIN

        SELECT fornamn,efternamn,personnr,mail
        FROM Personer
        WHERE  @personid = personid

		SELECT 1

    END




GO

