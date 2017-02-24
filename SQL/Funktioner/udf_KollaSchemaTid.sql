USE [harohal]
GO

/****** Object:  UserDefinedFunction [dbo].[udf_KollaSchemaTid]    Script Date: 2017-02-24 13:47:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
=======================================================================
Function Name...........: dbo.udf_KollaSchemaTid
Parameters..............: @startTid, @slutTid, @anstalldID
Return Value............: @isLedig as bit
Database................: T4
Server..................: Harohal
Date....................: 2017-01-13
By......................: Erik Sandberg
Used On.................: Webbokning
Components..............: 
Changed Date, By........: 
Change..................: 
=======================================================================
Description.............: Kollar om tiden man försöker boka ligger 
........................: innanför en anställds schema. Gör den det kan
........................: bokningen gå igenom.
=======================================================================
*/
CREATE FUNCTION [dbo].[udf_KollaSchemaTid] (@startTid DATETIME, @slutTid DATETIME, @anstalldID UNIQUEIDENTIFIER)
RETURNS BIT

BEGIN
	DECLARE @isLedig as int;

	SELECT @isLedig  = IIF(startTid >= @startTid AND startTid <= @slutTid OR slutTid <= @slutTid AND slutTid >= @startTid, 1, 0) 
	FROM anstalld_schema
	WHERE @anstalldID = anstalldID

  RETURN @isLedig
END







GO

