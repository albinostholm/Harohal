USE [harohal]
GO

/****** Object:  StoredProcedure [dbo].[usp_ADMIN_newAnstalld]    Script Date: 2017-02-24 13:54:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_ADMIN_newAnstalld] @personnummer nvarchar (20), @beskrivning nvarchar (200), @behandlarMan bit, @behandlarKvinnor bit, @createdBy uniqueidentifier
AS
DECLARE
	@id uniqueidentifier;

SET @id = dbo.udf_getUserID(@personnummer)

BEGIN
INSERT INTO anstallda
(
	anstalldID,
	personID,
	beskrivning,
	behandlarMan,
	behandlarKvinnor,
	aktiv,
	CreatedBy
)
VALUES
(
	@id,
	@id,
	@beskrivning,
	@behandlarMan,
	@behandlarKvinnor,
	1,
	@createdBy
)
END
GO

