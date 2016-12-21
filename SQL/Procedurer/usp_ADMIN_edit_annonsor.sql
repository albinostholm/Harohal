USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_ADMIN_edit_annonsor]    Script Date: 2016-12-21 09:22:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




/*
=======================================================================
Procedure Name..........: dbo.usp_ADMIN_edit_annonsor
Parameters..............: annonsorID, namn, beskrivning, länk,
Return Value............: -NULL-
Database................: T4
Server..................: Harohal
Date....................: 2016-12-20
By......................: Albin Östholm
Used On.................: Webbokning
Components..............: 
Changed Date, By........: -NULL-
Change..................: -NULL-
=======================================================================
Description.............: procedur som ger admin möjlighet att ändra
........................: en redan befintlig annonsor
=======================================================================
*/

CREATE Procedure [dbo].[usp_ADMIN_edit_annonsor] @annonsorID int, @namn nvarchar(200), @beskrivning nvarchar(2500), @lank nvarchar(500)
AS

UPDATE annonsorer
set namn = @namn, beskrivning = @beskrivning, lank = @lank 		

where annonsorID = @annonsorID






GO

