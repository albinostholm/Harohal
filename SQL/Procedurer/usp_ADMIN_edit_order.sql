USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_ADMIN_edit_order]    Script Date: 2016-12-21 09:22:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




/*
=======================================================================
Procedure Name..........: dbo.usp_ADMIN_edit_order
Parameters..............: orderID, tjanstID, anstalldID, startTid,
........................: slutTid, orderStatusID
Return Value............: -NULL-
Database................: T4
Server..................: Harohal
Date....................: 2016-12-20
By......................: Albin Östholm
Used On.................: Webbokning
Components..............: 
Changed Date, By........: -NULL-
Change..................: -NULL-
=======================================================================
Description.............: procedur som ger admin möjlighet att ändra
........................: en redan befintlig order
=======================================================================
*/

CREATE Procedure [dbo].[usp_ADMIN_edit_order] @orderID uniqueidentifier, @tjanstID int, @anstalldID uniqueidentifier, @startTid datetime, @slutTid datetime, @orderStatusID int
AS

UPDATE ordrar 
set tjanstID = @tjanstID, anstalldID = @anstalldID, startTid = @startTid, slutTid = @slutTid, orderStatusID = @orderStatusID    		

where orderID = @orderID






GO

