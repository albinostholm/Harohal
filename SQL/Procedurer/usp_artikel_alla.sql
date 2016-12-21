USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_artikel_alla]    Script Date: 2016-12-21 10:20:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[usp_artikel_alla] 
AS
SELECT  
			 [artikelID],
             [rubrik]
			,[beskrivning]			
						
FROM artikel

ORDER BY CreatedDate DESC
GO

