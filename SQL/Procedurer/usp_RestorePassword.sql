USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_RestorePassword]    Script Date: 2016-12-20 09:28:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
=======================================================================
Procedure Name..........: dbo.usp_restorePassword
Parameters..............: mail, lösenord
Return Value............: -NULL-
Database................: T4
Server..................: Harohal
Date....................: 2016-12-06
By......................: Linus Beckman
Used On.................: ordrar
Components..............: 
Changed Date, By........: -NULL-
Change..................: -NULL-
=======================================================================
Description.............: byter lösenord till det nya önskade efter 
........................: mail
=======================================================================
*/
CREATE PROCEDURE [dbo].[usp_RestorePassword]
    @mail			NVARCHAR(100), 
    @losenord       NVARCHAR(64) 

	AS
	BEGIN
		SET NOCOUNT ON;
		UPDATE Personer
		set losenord = @losenord
		WHERE mail = @mail;
		
		Select 1
	END

GO

