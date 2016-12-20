USE [harohal]
GO

/****** Object:  UserDefinedFunction [dbo].[RC_PossibleToBook]    Script Date: 2016-12-20 09:32:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
=======================================================================
Function Name...........: dbo.udf_RC_PossibleToBook
Parameters..............: startTid, slutTid
Return Value............: bit
Database................: T4
Server..................: Harohal
Date....................: 2016-12-06
By......................: Richard Carlsson
Used On.................: webbokning
Components..............: 
Changed Date, By........: -NULL-
Change..................: -NULL-
=======================================================================
Description.............: Kollar ifall en tid krockar med en redan 
........................: befintlig tid, OBS: richards, används ej
=======================================================================
*/
CREATE FUNCTION [dbo].[RC_PossibleToBook] (@startTid DATETIME, @slutTid DATETIME)
RETURNS BIT

BEGIN
	DECLARE @isLedig as int;

	SELECT @isLedig  = SUM(IIF (DateDiff(mi,@slutTid,startTid)<0 AND DATEDIFF(mi, @startTid, slutTid) > 1, 1, 0)) 
	FROM ordrar


  RETURN @isLedig
END




GO

