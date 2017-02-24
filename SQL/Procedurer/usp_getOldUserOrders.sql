USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_getOldUserOrders]    Script Date: 2017-02-24 13:56:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
=======================================================================
Procedure Name..........: dbo.usp_getOldUserOrders
Parameters..............: personID
Return Value............: namn, massörnamn, tjänst namn,
Database................: T4
Server..................: Harohal
Date....................: 2016-12-06
By......................: Erik Sandberg, Albin Östholm, Hampus Olofsson
Used On.................: ordrar
Components..............: 
Changed Date, By........: -null-
Change..................: -null-
=======================================================================
Description.............: hämtar gamla ordrar efter person
=======================================================================
*/

CREATE PROCEDURE [dbo].[usp_getOldUserOrders] @personid uniqueidentifier
AS 
BEGIN
SELECT P.fornamn + ' ' + P.efternamn AS MassorNamn,
 T.namn AS TjanstNamn,
  CAST(DATEPART(YY, O.startTid) AS nvarchar) + '-' + CAST(DATEPART(MM, O.startTid) AS nvarchar) + '-' + CAST(DATEPART(DD, O.startTid) AS nvarchar) AS Datum,
   CAST(DATEPART(HH, O.startTid) AS nvarchar) + ':' + CAST(DATEPART(MI, O.startTid) AS nvarchar) AS startTid,
    CAST(DATEPART(HH, O.slutTid) AS nvarchar) + ':' + CAST(DATEPART(MI, O.slutTid) AS nvarchar) AS slutTid,
	O.orderID
FROM ordrar O
JOIN anstallda A on (A.anstalldID = O.anstalldID)
JOIN tjanster T on (T.tjanstID = O.tjanstID)
JOIN personer P on (P.personID = A.anstalldID)
WHERE  @personid = O.personID AND O.orderStatusID > 10 AND O.orderStatusID < 40 AND O.startTid <= GETDATE()
END





GO

