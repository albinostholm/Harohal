USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_nyheter]    Script Date: 2016-12-20 09:27:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



/*
=======================================================================
Procedure Name..........: dbo.usp_nyheter
Parameters..............: 
Return Value............: nyhetsID, rubrik, beskrivning, publicerad, 
........................: publiceradDatum
Database................: T4
Server..................: Harohal
Date....................: 2016-12-01
By......................: Albin Östholm, Erik Sandberg
Used On.................: Webbokning
Components..............: 
Changed Date, By........: -null-
Change..................: -null-
=======================================================================
Description.............: hämtar nyhetsID, rubrik och beskrivning, samt 
........................: publicerad och publiceradDatum från nyheter
=======================================================================
*/


CREATE Procedure [dbo].[usp_nyheter]
AS
SELECT top 5 
             [nyhetsID]
			,[rubrik]
			,[beskrivning]
			,[publicerad]
			,[publiceradDatum]			
FROM nyheter
WHERE publicerad=1
ORDER BY publiceradDatum DESC



GO

