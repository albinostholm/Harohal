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












