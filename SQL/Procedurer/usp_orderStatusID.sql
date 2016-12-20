USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_orderStatusID]    Script Date: 2016-12-20 09:27:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
=======================================================================
Procedure Name..........: dbo.usp_orderStatusID
Parameters..............: -null-
Return Value............: namn, beskrivning, lank
Database................: T4
Server..................: Harohal
Date....................: 2016-12-06
By......................: Erik Sandberg, Albin Östholm
Used On.................: ordrar
Components..............: 
Changed Date, By........: -null-
Change..................: -null-
=======================================================================
Description.............: ändrar orderstatus till önskat värde
=======================================================================
*/

CREATE Procedure [dbo].[usp_orderStatusID] @orderID UNIQUEIDENTIFIER, @orderstatusID INT
AS

UPDATE ordrar
SET orderStatusID = @orderstatusID
WHERE orderID = @orderID




GO

