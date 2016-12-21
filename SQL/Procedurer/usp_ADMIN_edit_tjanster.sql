USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_ADMIN_edit_tjanster]    Script Date: 2016-12-21 09:22:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





/*
=======================================================================
Procedure Name..........: dbo.usp_ADMIN_edit_tjanster
Parameters..............: nyhetsID, namn, beskrivning
Return Value............: -NULL-
Database................: T4
Server..................: Harohal
Date....................: 2016-12-21
By......................: Linus Beckman
Used On.................: Webbokning
Components..............: 
Changed Date, By........: -null-
Change..................: -null-
=======================================================================
Description.............: redigerar en tjanst
=======================================================================
*/

CREATE Procedure [dbo].[usp_ADMIN_edit_tjanster] @tjanstID int, @namn nvarchar(50), @beskrivning nvarchar(650)
AS

UPDATE tjanster
SET beskrivning=@beskrivning, namn=@namn
WHERE tjanstID=@tjanstID

GO

