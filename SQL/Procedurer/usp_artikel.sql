USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_artikel]    Script Date: 2016-12-20 09:24:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



/*
=======================================================================
Procedure Name..........: dbo.usp_artikel
Parameters..............: artikelID
Return Value............: rubrik, beskrivning
Database................: T4
Server..................: Harohal
Date....................: 2016-12-06
By......................: Erik Sandberg, Albin Östholm
Used On.................: Webbokning
Components..............: 
Changed Date, By........: -null-
Change..................: -null-
=======================================================================
Description.............: Hämtar en artikels rubrik och beskrivning, dvs.
........................: allt innehåll
=======================================================================
*/

CREATE Procedure [dbo].[usp_artikel] @artikelID int
AS
SELECT  
             [rubrik]
			,[beskrivning]			
						
FROM artikel
WHERE artikelID=@artikelID
ORDER BY CreatedDate DESC





GO

