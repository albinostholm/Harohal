USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_ADMIN_edit_anstallda]    Script Date: 2017-02-24 13:53:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
=======================================================================
Procedure Name..........: dbo.usp_ADMIN_edit_anstallda
Parameters..............: anstalldID, namn, beskrivning
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
Description.............: redigerar en anställd
=======================================================================
*/

CREATE Procedure [dbo].[usp_ADMIN_edit_anstallda] @anstalldID uniqueidentifier, @fornamn nvarchar(50), @efternamn nvarchar(50), @beskrivning nvarchar(650)
AS

UPDATE anstallda
SET beskrivning=@beskrivning
WHERE anstalldID=@anstalldID

UPDATE personer
SET fornamn = @fornamn, efternamn = @efternamn
WHERE personID = @anstalldID






GO

