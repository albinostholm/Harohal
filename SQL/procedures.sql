USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_nyheter]    Script Date: 2016-11-18 13:22:57 ******/

/***NYHETER, hämtar nyhetsid, rubrik,beskrivning och om nyheten är publicerade eller inte och när. Proceduren hämtar bara publicerade nyheter   ***/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[usp_nyheter]
ASå
SELECT top 5 
             [nyhetsID]
			,[rubrik]
			,[beskrivning]
			,[publicerad]
			,[publiceradDatum]			
FROM nyheter
WHERE publicerad=1
ORDER BY publiceradDatum DESC

GO


USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_artikel]    Script Date: 2016-11-18 13:24:30 ******/

/***ARTIKEL, hämtar rubrik och beskrivning, Proceduren hämtar artikel efter angiven parameter(artikelID)  ***/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[usp_artikel] @artikelID int
ASå
SELECT  
             [rubrik]
			,[beskrivning]
			
			
						
FROM artikel
WHERE artikelID=@artikelID
ORDER BY CreatedDate DESC

GO

USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_anstallda]    Script Date: 2016-11-18 13:27:23 ******/
/***ARTIKEL, hämtar rubrik och beskrivning, Proceduren hämtar artikel efter angiven parameter(artikelID)  ***/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[usp_anstallda]
ASå
SELECT  
             [namn]
			,[beskrivning]
			,[behandlarMan]
			,[behandlarKvinnor]
			,[aktiv]

			
			
						
FROM anstallda
WHERE aktiv=1

GO

USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_annonsorer]    Script Date: 2016-11-18 13:44:49 ******/
/*** Annonsörer. hämtar namn beskrivning och länk till sidan. Proceduren hämtar annonsör efter angiven parameter(annonsorID)  ***/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[usp_annonsorer] @annonsorID int
ASå
SELECT  
             [namn]
			,[beskrivning]
			,[lank]
			

			
			
						
FROM annonsorer
WHERE annonsorID=@annonsorID

GO

USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_tjanster]    Script Date: 2016-11-18 13:47:29 ******/
/*** tjänster. hämtar namn beskrivning och pris på alla tillgängliga tjänster.   ***/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[usp_tjanster]
ASå
SELECT  
             [namn]
			,[beskrivning]
			,[pris]

			

			
			
						
FROM tjanster


GO


USE [harohal]
GO
/****** Object:  StoredProcedure [dbo].[usp_login]    Script Date: 2016-12-06 11:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
=======================================================================
Procedure Name..........: dbo.usp_login
Parameters..............: username, password
Return Value............: userID
Database................: T4
Server..................: Harohal
Date....................: 2016-12-01
By......................: Linus Beckman, Erik Sandberg
Used On.................: Webbokning
Components..............: 
Changed Date, By........: -null-
Change..................: -null-
=======================================================================
Description.............: Gets input from the user and compares it with 
........................: the existing data, if it exists then return userid
=======================================================================
*/

ALTER Procedure [dbo].[usp_login] @losenord nvarchar(64), @username nvarchar(100)
AS

BEGIN
	DECLARE @PersonId varchar(36) = ''

	SELECT @PersonId = personid					
	FROM personer
	WHERE @losenord = losenord 
	AND mail = @username;

	SELECT @PersonId AS PersonId					

END








USE [harohal]
GO
/****** Object:  StoredProcedure [dbo].[usp_createUser]    Script Date: 2016-12-06 11:14:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Author: Linus Beckman
--Created 2016-12-06 08:50:56
--Looks if the user already exists in the database, if it does then dont create, otherwise create.
ALTER PROCEDURE [dbo].[usp_createUser]
    @ForNamn        NVARCHAR(100), 
    @EfterNamn      NVARCHAR(100), 
    @mail			NVARCHAR(100), 
    @Personnr       CHAR(13), 
    @losenord       NVARCHAR(64),  
	@Nyhetsbrev		bit,
	@TarFaktura		bit

	AS 

	DECLARE 
	@varCountNbr int

    BEGIN
        SELECT @varCountNbr = COUNT(1)
        FROM Personer
        WHERE  @mail = mail
		OR @Personnr = personnr

        IF  @varCountNbr = 0
		BEGIN
			INSERT INTO [dbo].[personer]
           ([fornamn]
           ,[efternamn]
           ,[personnr]
           ,[mail]
           ,[losenord]
           ,[nyhetsbrev]
           ,[tarFaktura]
           ,[anstalld]
		   ,[registreringsDatum]
		   ,[maxSkuld]
		   ,[CreatedBy])
     VALUES
           (@ForNamn
           ,@efternamn
           ,@personnr
           ,@mail
           ,@losenord
           ,@nyhetsbrev
           ,@tarFaktura
           ,0
		   ,GETDATE()
		   ,null
		   ,CAST('B14BC077-F1DF-457C-9F7E-7CB9E0BC1CF9' AS UNIQUEIDENTIFIER))
		END
    END;


