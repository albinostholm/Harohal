USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_getOrder]    Script Date: 2016-12-20 09:25:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
=======================================================================
Procedure Name..........: dbo.usp_getOrder
Parameters..............: orderID
Return Value............: anstalld namn, tjänst namn,
Database................: T4
Server..................: Harohal
Date....................: 2016-12-06
By......................: Linus Beckman
Used On.................: ordrar
Components..............: 
Changed Date, By........: 2016-12-20, Albin Östholm
Change..................: reformerat proceduren, stavfel etc.
=======================================================================
Description.............: hämtar en order
........................:
=======================================================================
*/

CREATE PROCEDURE [dbo].[usp_getOrder] @orderID uniqueidentifier
AS 
BEGIN
SELECT 
	A.namn AS MassorNamn,
    T.namn AS TjanstNamn,
    CAST(DATEPART(YY, O.startTid) AS nvarchar) + '-' + CAST(DATEPART(MM, O.startTid) AS nvarchar) + '-' + CAST(DATEPART(DD, O.startTid) AS nvarchar) AS Datum,
    CAST(DATEPART(HH, O.startTid) AS nvarchar) + ':' + CAST(DATEPART(MI, O.startTid) AS nvarchar) AS startTid,
	CAST(DATEPART(HH, O.slutTid) AS nvarchar) + ':' + CAST(DATEPART(MI, O.slutTid) AS nvarchar) AS slutTid,
	O.orderID,
	T.pris AS pris
FROM ordrar O
JOIN anstallda A on (A.anstalldID = O.anstalldID)
JOIN tjanster T on (T.tjanstID = O.tjanstID)
WHERE  @orderId = O.orderID
ORDER BY O.CreatedDate DESC
END





GO

