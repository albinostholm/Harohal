USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_Massor_orders]    Script Date: 2017-02-24 13:57:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
=======================================================================
Procedure Name..........: dbo.usp_Massor_orders
Parameters..............: 
Return Value............: p.fornamn + p.efternamn as namn,
........................: O.startTid, O.slutTid
Database................: T4
Server..................: Harohal
Date....................: 2016-12-01
By......................: Hampus Olofsson
Used On.................: Webbokning
Components..............: 
Changed Date, By........: -null-
Change..................: -null-
=======================================================================
Description.............: hämtar alla ordrar för en anställd 
........................: där ordnarna är bekräftade
=======================================================================
*/


CREATE PROCEDURE [dbo].[usp_Massor_orders] @anstalldID uniqueidentifier
AS 
SELECT P.fornamn + ' ' + P.efternamn as MassorNamn,
 T.namn AS TjanstNamn,
   CAST(DATEPART(YY, O.startTid) AS nvarchar) + '-' + CAST(DATEPART(MM, O.startTid) AS nvarchar) + '-' + CAST(DATEPART(DD, O.startTid) AS nvarchar) AS Datum,
  O.startTid AS startTid,
   O.slutTid AS slutTid,
   O.orderID AS orderID
FROM ordrar O
JOIN personer P ON (P.personID = O.personID)
JOIN tjanster T ON (T.tjanstID = O.tjanstID)
WHERE O.anstalldID = @anstalldID
AND O.orderStatusID > 10 AND O.orderStatusID < 40




GO

