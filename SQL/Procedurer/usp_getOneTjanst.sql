USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_getOneTjanst]    Script Date: 2017-02-24 13:57:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
=======================================================================
Procedure Name..........: dbo.usp_getOneTJanst
Parameters..............: 
Return Value............: tjanstID, namn, beskrivning, pris, tid
Database................: T4
Server..................: Harohal
Date....................: 2016-12-01
By......................: Hampus Olofsson
Used On.................: Webbokning
Components..............: 
Changed Date, By........:
Change..................: 
=======================================================================
Description.............: hämtar ID och all info om en tjänst
=======================================================================
*/

CREATE Procedure [dbo].[usp_getOneTjanst] @tjanstID int
AS
SELECT  
             [namn]
			,[tjanstID]
			,[beskrivning]
			,[pris]
			,[bild]
			,[tid]			
FROM tjanster
WHERE @tjanstID = tjanstID






GO

