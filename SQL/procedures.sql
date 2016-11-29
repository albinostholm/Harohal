USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_nyheter]    Script Date: 2016-11-18 13:22:57 ******/

/***NYHETER, h�mtar nyhetsid, rubrik,beskrivning och om nyheten �r publicerade eller inte och n�r. Proceduren h�mtar bara publicerade nyheter   ***/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[usp_nyheter]
AS�
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

/***ARTIKEL, h�mtar rubrik och beskrivning, Proceduren h�mtar artikel efter angiven parameter(artikelID)  ***/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[usp_artikel] @artikelID int
AS�
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
/***ARTIKEL, h�mtar rubrik och beskrivning, Proceduren h�mtar artikel efter angiven parameter(artikelID)  ***/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[usp_anstallda]
AS�
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
/*** Annons�rer. h�mtar namn beskrivning och l�nk till sidan. Proceduren h�mtar annons�r efter angiven parameter(annonsorID)  ***/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[usp_annonsorer] @annonsorID int
AS�
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
/*** tj�nster. h�mtar namn beskrivning och pris p� alla tillg�ngliga tj�nster.   ***/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[usp_tjanster]
AS�
SELECT  
             [namn]
			,[beskrivning]
			,[pris]

			

			
			
						
FROM tjanster


GO












