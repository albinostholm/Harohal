USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_anstalld_schema]    Script Date: 2016-12-20 09:23:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




/*
=======================================================================
Procedure Name..........: dbo.usp_anstalld_schema
Parameters..............: anstalldID, vecka
Return Value............: namn,schemaID, startTid, slutTid
Database................: T4
Server..................: Harohal
Date....................: 2016-12-06
By......................: Erik Sandberg, Albin Östholm
Used On.................: Webbokning
Components..............: 
Changed Date, By........: -null-
Change..................: -null-
=======================================================================
Description.............: Hämtar en anställds schema, ger namn schemaID
........................: starttid och sluttid där veckan matchar med
........................: den aktuella veckan.
=======================================================================
*/

CREATE PROCEDURE [dbo].[usp_anstalld_schema] @anstalldID uniqueidentifier, @vecka int
AS
SELECT A.namn, AC.schemaID, AC.startTid, AC.slutTid 
FROM anstalld_schema AC
JOIN anstallda A ON (A.anstalldID = AC.anstalldID)
WHERE datepart(ww, AC.startTid) = @vecka
AND AC.anstalldID = @anstalldID





GO

