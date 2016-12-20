USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_anstallda]    Script Date: 2016-12-20 09:24:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
=======================================================================
Procedure Name..........: dbo.usp_anstallda
Parameters..............: -null-
Return Value............: namn,anstalldID, behandlarMan, behandlarKvinnor, beskrivning
Database................: T4
Server..................: Harohal
Date....................: 2016-12-06
By......................: Erik Sandberg, Albin Östholm
Used On.................: Webbokning
Components..............: 
Changed Date, By........: -null-
Change..................: -null-
=======================================================================
Description.............: Hämtar en anställds namn, information, beskrivning
........................: och ifall h*n behandlar man och/eller kvinnor
=======================================================================
*/

CREATE Procedure [dbo].[usp_anstallda]
AS
SELECT  
             [namn]
			,[beskrivning]
			,[behandlarMan]
			,[behandlarKvinnor]
			,[anstalldID]								
FROM anstallda

GO

