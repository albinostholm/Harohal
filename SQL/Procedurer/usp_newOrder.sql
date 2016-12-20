USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_newOrder]    Script Date: 2016-12-20 09:27:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
=======================================================================
Procedure Name..........: dbo.usp_newOrder
Parameters..............: tjanstID, anstalldID, personID, startTid,
........................: slutTid, orderstatusID, createdBy
Return Value............: anstalld namn, tjänst namn,
Database................: T4
Server..................: Harohal
Date....................: 2016-12-06
By......................: Linus Beckman
Used On.................: ordrar
Components..............: 
Changed Date, By........: 2016-12-20, Albin Östholm
Change..................: reformerat proceduren
=======================================================================
Description.............: hämtar en order
........................:
=======================================================================
*/
CREATE PROCEDURE [dbo].[usp_newOrder]
	@tjanstID int,
	@anstalldID uniqueidentifier,
	@personID uniqueidentifier,
	@startTid datetime,
	@slutTid datetime,
	@orderStatusID int,
	@CreatedBy uniqueidentifier
AS

DECLARE @result INT
SET @result = dbo.udf_KollaLedigTid(@startTid, @slutTid, @anstalldID)

IF @result = 0 
BEGIN
	INSERT INTO ordrar (tjanstID, anstalldID, personID, startTid, slutTid, orderStatusID, CreatedBy)
	OUTPUT inserted.orderID
	VALUES (@tjanstID, @anstalldID, @personID, @startTid, @slutTid, @orderStatusID, @CreatedBy)
END
ELSE IF @result = 1
BEGIN
	select 0
END


GO

