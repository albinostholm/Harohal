USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_ADMIN_new_Anstalld_schema]    Script Date: 2017-02-24 13:54:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
=======================================================================
Procedure Name..........: dbo.usp_ADMIN_new_anstalld_schema
Parameters..............: anstalldID, startTid,
........................: slutTid, datum, createdBy
Return Value............: 
Database................: T4
Server..................: Harohal
Date....................: 2016-12-06
By......................: albin Östholm
Used On.................: ordrar
Components..............: 
Changed Date, By........: 
Change..................: 
=======================================================================
Description.............: lägger till en ny tid på schemat som är 
........................: bokbar.
=======================================================================
*/
CREATE PROCEDURE [dbo].[usp_ADMIN_new_Anstalld_schema]
	@anstalldID uniqueidentifier,
	@startTid datetime,
	@slutTid datetime,
	@datum datetime,
	@CreatedBy uniqueidentifier
AS

	INSERT INTO anstalld_schema(anstalldID, startTid, slutTid, datum, CreatedBy)
	
	VALUES (@anstalldID, @startTid, @slutTid, @datum, @CreatedBy)



GO

