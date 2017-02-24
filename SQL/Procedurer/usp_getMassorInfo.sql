USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_getMassorInfo]    Script Date: 2017-02-24 13:55:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
=======================================================================
Procedure Name..........: dbo.usp_getMassorInfo
Parameters..............: personID
Return Value............: förnamn, efternamn, beskrivning
Database................: T4
Server..................: Harohal
Date....................: 2016-12-06
By......................: Hampus Olofsson 
Used On.................: anstallda, personer
Components..............: 
Changed Date, By........:
Change..................:
=======================================================================
Description.............: hämtar massörinfo efter ID
=======================================================================
*/

CREATE PROCEDURE [dbo].[usp_getMassorInfo]
    @anstalldID	uniqueidentifier

	AS 

    BEGIN

        SELECT P.fornamn,P.efternamn,A.beskrivning
        FROM anstallda A
		JOIN personer P on (P.personID = A.anstalldID)
        WHERE  @anstalldID = A.anstalldID

    END






GO

