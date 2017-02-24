USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_ADMIN_newTjanst]    Script Date: 2017-02-24 13:55:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
=======================================================================
Procedure Name..........: dbo.usp_ADMIN_newTjanst
Parameters..............: namn, beskrivning, pris, tid, createdby
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
Description.............: Skapar en ny tjänst
=======================================================================
*/
CREATE PROCEDURE [dbo].[usp_ADMIN_newTjanst] @namn nvarchar(50), @beskrivning nvarchar(250), @pris int, @tid int, @createdby uniqueidentifier
AS
INSERT INTO tjanster (namn, beskrivning, pris, tid, CreatedBy)
VALUES (@namn, @beskrivning, @pris, @tid, @createdby)

GO

