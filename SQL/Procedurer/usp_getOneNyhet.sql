USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_getOneNyhet]    Script Date: 2017-02-24 13:56:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
=======================================================================
Procedure Name..........: dbo.usp_getOneNyhet
Parameters..............: 
Return Value............: nyhetsID, rubrik, beskrivning, publicerad, 
........................: publiceradDatum
Database................: T4
Server..................: Harohal
Date....................: 2016-12-01
By......................: Hampus Olofsson
Used On.................: Webbokning
Components..............: 
Changed Date, By........: -null-
Change..................: -null-
=======================================================================
Description.............: hämtar nyhetsID, rubrik och beskrivning, samt 
........................: publicerad och publiceradDatum för en nyhet
=======================================================================
*/


CREATE Procedure [dbo].[usp_getOneNyhet] @nyhetsID int
AS
SELECT
             [nyhetsID]
			,[rubrik]
			,[beskrivning]
			,[publicerad]
			,[publiceradDatum]			
FROM nyheter
WHERE nyhetsID = @nyhetsID




GO

