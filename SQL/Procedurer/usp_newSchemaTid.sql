USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_newSchemaTid]    Script Date: 2017-02-24 13:57:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


/*
=======================================================================
Procedure Name..........: dbo.usp_newSchemaTid
Parameters..............: anstalldID, startTid, slutTid
........................: slutTid, orderstatusID, createdBy
Return Value............: 
Database................: T4
Server..................: Harohal
Date....................: 2017-02-24
By......................: Erik Sandberg
Used On.................: anstalldSchema
Components..............: 
Changed Date, By........: 
Change..................: 
=======================================================================
Description.............: lägger till en ny schematid om kraven är
........................: uppfyllda
=======================================================================
*/

CREATE PROCEDURE [dbo].[usp_newSchemaTid]
	@anstalldID uniqueidentifier,
	@startTid datetime,
	@slutTid datetime
AS

DECLARE @result INT
SET @result = dbo.udf_KollaSchemaTidOchKontorstimmar(@startTid, @slutTid, @anstalldID)

IF @result=0 AND (DATEPART(hh, @startTid) BETWEEN '09' AND '21') AND (DATEPART(hh, @slutTid) BETWEEN '09' AND '21')
BEGIN
	INSERT INTO anstalld_schema (anstalldID, startTid, slutTid, CreatedBy)
	OUTPUT inserted.schemaID
	VALUES (@anstalldID, @startTid, @slutTid, @anstalldID)
END
ELSE 
BEGIN
	SELECT 0
END



GO

