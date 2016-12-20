USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_tjanster]    Script Date: 2016-12-20 09:28:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


/*
=======================================================================
Procedure Name..........: dbo.usp_tjanster
Parameters..............: 
Return Value............: tjanstID, namn, beskrivning, pris, tid
Database................: T4
Server..................: Harohal
Date....................: 2016-12-01
By......................: Albin Östholm, Erik Sandberg
Used On.................: Webbokning
Components..............: 
Changed Date, By........: 2016-12-07, Erik Sandberg
Change..................: added this comment
=======================================================================
Description.............: hämtar ID och all info om en tjänst
=======================================================================
*/

CREATE Procedure [dbo].[usp_tjanster]
AS
SELECT  
             [namn]
			,[tjanstID]
			,[beskrivning]
			,[pris]
			,[tid]			
FROM tjanster





GO

