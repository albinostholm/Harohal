USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_ADMIN_edit_artikel]    Script Date: 2016-12-20 09:22:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





/*
=======================================================================
Procedure Name..........: dbo.usp_ADMIN_edit_artikel
Parameters..............: artikelID, rubrik, beskrivning
Return Value............: -NULL-
Database................: T4
Server..................: Harohal
Date....................: 2016-12-06
By......................: Albin Östholm
Used On.................: Webbokning
Components..............: 
Changed Date, By........: -null-
Change..................: -null-
=======================================================================
Description.............: redigerar en artikel
=======================================================================
*/

CREATE Procedure [dbo].[usp_ADMIN_edit_artikel] @artikelID int, @rubrik nvarchar(50), @beskrivning nvarchar(650)
AS

UPDATE artikel
SET beskrivning=@beskrivning, rubrik=@rubrik
WHERE artikelID=@artikelID







GO

