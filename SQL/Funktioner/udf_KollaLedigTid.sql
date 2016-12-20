USE [harohal]
GO

/****** Object:  UserDefinedFunction [dbo].[udf_KollaLedigTid]    Script Date: 2016-12-20 09:33:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



/*
=======================================================================
Function Name...........: dbo.udf_KollaLedigTid
Parameters..............: @startTid, @slutTid, @anstalldID
Return Value............: @isLedig as bit
Database................: T4
Server..................: Harohal
Date....................: 2016-12-12
By......................: Erik Sandberg, Albin Östholm
Used On.................: Webbokning
Components..............: 
Changed Date, By........:  2016-12-19, Albin Östholm, Erik Sandberg
Change..................:  La till två nya where krav
=======================================================================
Description.............: Kollar om tiden man försöker boka krocker med 
........................: en befintlig tid som redan är bokad, om det
........................: krockar går det ej boka.
=======================================================================
*/
CREATE FUNCTION [dbo].[udf_KollaLedigTid] (@startTid DATETIME, @slutTid DATETIME, @anstalldID UNIQUEIDENTIFIER)
RETURNS BIT

BEGIN
	DECLARE @isLedig as int;

	SELECT @isLedig  = SUM(IIF (DateDiff(mi,@slutTid,startTid)<=0 AND DATEDIFF(mi, @startTid, slutTid) >= 1, 1, 0)) 
	FROM ordrar
	WHERE @anstalldID = anstalldID and orderStatusID != 10 and orderStatusID != 40


  RETURN @isLedig
END







GO

