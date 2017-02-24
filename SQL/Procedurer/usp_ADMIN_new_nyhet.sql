USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_ADMIN_newNyhet]    Script Date: 2017-02-24 13:55:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


/*
=======================================================================
Procedure Name..........: dbo.usp_ADMIN_newNyhet
Parameters..............: rubrik, beskrivning, publiceradDatum, createdby
Return Value............: -NULL-
Database................: T4
Server..................: Harohal
Date....................: 2016-12-20
By......................: Hampus Olofsson
Used On.................: Admin sidor
Components..............: 
Changed Date, By........: -NULL-
Change..................: -NULL-
=======================================================================
Description.............: Skapar en ny nyhet
=======================================================================
*/
CREATE PROCEDURE [dbo].[usp_ADMIN_newNyhet] @publicerad bit,  @anstalldID uniqueidentifier, @rubrik nvarchar(50), @beskrivning nvarchar(250), @publiceradDatum datetime, @createdby uniqueidentifier
AS
INSERT INTO nyheter(publicerad, anstalldID, rubrik, beskrivning, publiceradDatum, CreatedBy)
VALUES (@publicerad, @anstalldID, @rubrik, @beskrivning, @publiceradDatum, @createdby)


GO

