USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_ADMIN_edit_nyheter]    Script Date: 2016-12-20 09:22:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





/*
=======================================================================
Procedure Name..........: dbo.usp_ADMIN_edit_nyheter
Parameters..............: nyhetsID, rubrik, beskrivning
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
Description.............: redigerar en nyhet
=======================================================================
*/

CREATE Procedure [dbo].[usp_ADMIN_edit_nyheter] @nyhetsID int, @rubrik nvarchar(50), @beskrivning nvarchar(650)
AS

UPDATE nyheter
SET beskrivning=@beskrivning, rubrik=@rubrik
WHERE nyhetsID=@nyhetsID







GO

