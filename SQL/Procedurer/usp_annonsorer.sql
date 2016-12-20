USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_annonsorer]    Script Date: 2016-12-20 09:23:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


/*
=======================================================================
Procedure Name..........: dbo.usp_annonser
Parameters..............: -null-
Return Value............: namn, beskrivning, lank
Database................: T4
Server..................: Harohal
Date....................: 2016-12-06
By......................: Erik Sandberg, Albin Östholm
Used On.................: Webbokning
Components..............: 
Changed Date, By........: -null-
Change..................: -null-
=======================================================================
Description.............: hämtar information om en annons
=======================================================================
*/

CREATE Procedure [dbo].[usp_annonsorer]
AS
SELECT TOP 2
             [namn]
			,[beskrivning]
			,[lank]				
FROM annonsorer
ORDER BY annonsorID DESC




GO

