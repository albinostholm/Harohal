USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_ADMIN_edit_schemaTid]    Script Date: 2017-02-24 13:53:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


/*
=======================================================================
Procedure Name..........: dbo.usp_ADMIN_edit_schemaTid
Parameters..............: anstalldID, startTid, startTId, slutTid,
Return Value............: -NULL-
Database................: T4
Server..................: Harohal
Date....................: 2017-02-24
By......................: Albin Östholm
Used On.................: Webbokning
Components..............: 
Changed Date, By........: -null-
Change..................: -null-
=======================================================================
Description.............: uppdaterar en schematid
=======================================================================
*/

ALTER Procedure [dbo].[usp_ADMIN_edit_schemaTid] @anstalldID uniqueidentifier, @oldStartTid datetime, @startTid datetime, @slutTid datetime
AS
declare @result INT
set @result = dbo.udf_KollaSchemaTidOchKontorstimmar(@startTid, @slutTid, @anstalldID)

IF @result=0 AND (DATEPART(hh, @startTid) BETWEEN '09' AND '21') AND (DATEPART(hh, @slutTid) BETWEEN '09' AND '21')
BEGIN
UPDATE anstalld_schema
SET startTid=@startTid, slutTid=@slutTid
WHERE startTid=@oldStartTid and anstalldID=@anstalldID
END
ELSE
BEGIN
select 0
END

GO

