USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_anvandarOrder]    Script Date: 2016-12-20 09:24:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


/*
=======================================================================
Procedure Name..........: dbo.usp_anvandarOrder
Parameters..............: personID
Return Value............: orderID, tjänstnamn, anställd namn, starttid,
........................: sluttid
Database................: T4
Server..................: Harohal
Date....................: 2016-12-06
By......................: Erik Sandberg, Albin Östholm
Used On.................: ordrar
Components..............: 
Changed Date, By........: -null-
Change..................: -null-
=======================================================================
Description.............: hämtar ordrar för en användare
=======================================================================
*/

CREATE Procedure [dbo].[usp_anvandarOrder] @personID UNIQUEIDENTIFIER
AS

SELECT o.orderID
    ,t.namn
	,a.namn
	,startTid
	,slutTid
	
FROM ordrar o 
INNER JOIN tjanster t 
ON (t.tjanstID = o.tjanstID)
JOIN anstallda a
ON (o.anstalldID=a.anstalldID)
WHERE o.personID = @personID




GO

