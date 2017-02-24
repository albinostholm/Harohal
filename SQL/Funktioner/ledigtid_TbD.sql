USE [harohal]
GO

/****** Object:  UserDefinedFunction [dbo].[ledigtid_TbD]    Script Date: 2017-02-24 13:49:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
=======================================================================
Function Name...........: dbo.udf_ledigtid
Parameters..............: startTid, slutTid
Return Value............: bit
Database................: T4
Server..................: Harohal
Date....................: 2016-12-06
By......................: Albin Östholm, Erik Sandberg
Used On.................: webbokning
Components..............: 
Changed Date, By........: -NULL-
Change..................: -NULL-
=======================================================================
Description.............: Kollar ifall en tid krockar med en redan 
........................: befintlig tid, OBS: funkar ej
=======================================================================
*/
CREATE FUNCTION [dbo].[ledigtid_TbD] (@startTid DATETIME, @slutTid DATETIME)
RETURNS BIT

BEGIN
	DECLARE @isLedig as bit;

		IF  @startTid < (SELECT startTid FROM ordrar) AND @slutTid > (SELECT startTid FROM ordrar) AND @slutTid < (SELECT slutTid FROM ordrar) OR
			@startTid < (SELECT slutTid FROM ordrar) AND @slutTid > (SELECT slutTid FROM ordrar) AND @startTid > (SELECT startTid FROM ordrar) OR 
			@startTid > (SELECT startTid FROM ordrar) AND @slutTid < (SELECT slutTid FROM ordrar) OR
			@startTid < (SELECT startTid FROM ordrar) AND @slutTid > (SELECT slutTid FROM ordrar)
		BEGIN
			Set @isLedig = 0
		END
		ELSE 
		BEGIN 
			Set @isLedig = 1
		END
		RETURN @isLedig
END


GO

