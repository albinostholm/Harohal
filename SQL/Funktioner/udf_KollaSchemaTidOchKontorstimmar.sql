USE [harohal]
GO

/****** Object:  UserDefinedFunction [dbo].[udf_KollaSchemaTidOchKontorstimmar]    Script Date: 2017-02-24 13:48:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[udf_KollaSchemaTidOchKontorstimmar] (
	@startTid DATETIME,
	@slutTid DATETIME,
	@anstalldID UNIQUEIDENTIFIER)
RETURNS int

BEGIN
	DECLARE @isValid as int;

	SELECT @isValid = COUNT(1) 

	FROM anstalld_schema
	WHERE ((@anstalldID = anstalldID) AND (@startTid BETWEEN startTid AND slutTid) OR (@slutTid BETWEEN startTid AND slutTid))

	RETURN @isValid
	END



GO

