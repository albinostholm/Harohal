USE [harohal]
GO

/****** Object:  UserDefinedFunction [dbo].[udf_KollaTomTid]    Script Date: 2017-02-24 13:48:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
=======================================================================
Function Name...........: dbo.udf_KollaTomTid
Parameters..............: @startTid, @slutTid, @anstalldID
Return Value............: @isLedig as bit
Database................: T4
Server..................: Harohal
Date....................: 2017-01-13
By......................: Hampus Olofsson
Used On.................: Webbokning
Components..............: 
Changed Date, By........: 
Change..................: 
=======================================================================
Description.............: Kollar om tiden man försöker boka ligger 
........................: på en tom plats. Gör den inte det kan
........................: bokningen gå igenom.
=======================================================================
*/
CREATE FUNCTION [dbo].[udf_KollaTomTid] (@startTid DATETIME, @slutTid DATETIME, @anstalldID UNIQUEIDENTIFIER)
RETURNS BIT

BEGIN
	DECLARE @isLedig as int;

	SELECT @isLedig  = IIF(@startTid >= startTid AND @startTid <= slutTid AND @slutTid >= startTid AND @slutTid <= slutTid, 0, 1) 
	FROM anstalld_schema
	WHERE @anstalldID = anstalldID

  RETURN @isLedig
END







GO

