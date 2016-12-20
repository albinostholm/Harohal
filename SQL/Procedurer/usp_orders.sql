USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_orders]    Script Date: 2016-12-20 09:27:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
=======================================================================
Procedure Name..........: dbo.usp_orders
Parameters..............: 
Return Value............: p.fornamn + p.efternamn as namn,
........................: 1 as schemaID, O.startTid, O.slutTid
Database................: T4
Server..................: Harohal
Date....................: 2016-12-01
By......................: Albin Östholm, Erik Sandberg
Used On.................: Webbokning
Components..............: 
Changed Date, By........: -null-
Change..................: -null-
=======================================================================
Description.............: hämtar alla ordrar för en anställd för en vecka 
........................: där ordnarna är bekräftade
=======================================================================
*/


CREATE PROCEDURE [dbo].[usp_orders] @anstalldID uniqueidentifier, @vecka int
AS 
SELECT P.fornamn + ' ' + P.efternamn as namn, 1 AS schemaID, O.startTid, O.slutTid
FROM ordrar O
JOIN personer P ON (P.personID = O.personID)
WHERE O.anstalldID = @anstalldID
AND datepart(ww, O.startTid) = @vecka
AND O.orderStatusID > 10 AND O.orderStatusID < 40


GO

