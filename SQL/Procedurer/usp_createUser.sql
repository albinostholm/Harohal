USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_createUser]    Script Date: 2016-12-20 09:24:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




/*
=======================================================================
Procedure Name..........: dbo.usp_createUser
Parameters..............: -null-
Return Value............: namn, beskrivning, lank
Database................: T4
Server..................: Harohal
Date....................: 2016-12-06
By......................: Linus Beckman
Used On.................: ordrar
Components..............: 
Changed Date, By........: -null-
Change..................: -null-
=======================================================================
Description.............: Looks if the user already exists in the database,
 if it does then dont create, otherwise create.
=======================================================================
*/

CREATE PROCEDURE [dbo].[usp_createUser]
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

		SELECT 'CF70E916-1FAD-4705-A29E-1BCAF1D513EC'
    END;



GO

