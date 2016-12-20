USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_getTjanstTid]    Script Date: 2016-12-20 09:25:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


/*
=======================================================================
Procedure Name..........: dbo.usp_getTjanstID
Parameters..............: tjanstID
Return Value............: tid
Database................: T4
Server..................: Harohal
Date....................: 2016-12-06
By......................: ?
Used On.................: tjanster
Components..............: 
Changed Date, By........: -null-
Change..................: -null-
=======================================================================
Description.............: Hämtar tjänstID
=======================================================================
*/
CREATE PROCEDURE [dbo].[usp_getTjanstTid] @tjanstID int
AS
SELECT t.tid FROM tjanster t
WHERE t.tjanstID = @tjanstID


GO

