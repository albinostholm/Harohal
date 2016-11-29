--DROP TABLE annonsorer
--GO
--DROP TABLE artikel
--GO
--DROP TABLE nyheter
--GO
--DROP TABLE anstalld_schema
--GO
--DROP TABLE anstalld_tjanst
--GO
--DROP TABLE ordrar
--GO
--DROP TABLE tjanster
--GO
--DROP TABLE anstallda
--GO
--DROP TABLE personer
--GO


--Generell kundinfo
CREATE TABLE personer(
	personID uniqueidentifier PRIMARY KEY NOT NULL,
	fornamn nvarchar(100) NOT NULL,
	efternamn nvarchar(100) NOT NULL,
	personnr char(13) NOT NULL,
	mail nvarchar(100) NOT NULL,
	losenord nvarchar(64) NOT NULL,
	registreringsDatum datetime NULL,
	nyhetsbrev bit NOT NULL,
	tarFaktura bit NOT NULL,
	maxSkuld money NULL,
	anstalld bit NOT NULL,

	CreatedDate Datetime NOT NULL DEFAULT (getdate()),
	CreatedBy int NULL,
	UpdatedDate Datetime NULL,
	UpdatedBy int NULL,
);
GO

--Vilka tjänster som erbjuds samt info om dem
CREATE TABLE tjanster(
	tjanstID int PRIMARY KEY NOT NULL,
	namn nvarchar(100)  NOT NULL,
	beskrivning nvarchar(2500) NOT NULL,
	bild varchar(130) NULL,
	pris money NOT NULL,
	tid datetime NULL,

	CreatedDate Datetime NOT NULL DEFAULT (getdate()),
	CreatedBy int NOT NULL,
	UpdatedDate Datetime NULL,
	UpdatedBy int NULL,
);
GO

--Generell info om massörer
CREATE TABLE anstallda(
	anstalldID uniqueidentifier PRIMARY KEY NOT NULL,
	personID uniqueidentifier NOT NULL,
	namn nvarchar(200) NOT NULL,
	beskrivning nvarchar(2500) NOT NULL,
	bild varchar(130) NULL,
	behandlarMan bit NOT NULL,
	behandlarKvinnor bit NOT NULL,
	aktiv bit NULL,

	CreatedDate Datetime NOT NULL DEFAULT (getdate()),
	CreatedBy uniqueidentifier NOT NULL,
	UpdatedDate Datetime NULL,
	UpdatedBy int NULL,
);
GO

ALTER TABLE anstallda WITH CHECK ADD CONSTRAINT FK_anstallda_personer
FOREIGN KEY (personID)
REFERENCES personer(personID)
GO

--Länkar samman vilka tjänster en massör utför
CREATE TABLE anstalld_tjanst(
	tjanstID int NOT NULL,
	anstalldID uniqueidentifier NOT NULL,

	CreatedDate Datetime NOT NULL DEFAULT (getdate()),
	CreatedBy int NOT NULL,
	UpdatedDate Datetime NULL,
	UpdatedBy int NULL,
);
GO

ALTER TABLE anstalld_tjanst WITH CHECK ADD CONSTRAINT FK__anstalld_tjanst_tjanster
FOREIGN KEY (tjanstID)
REFERENCES tjanster(tjanstID)
GO

ALTER TABLE anstalld_tjanst WITH CHECK ADD CONSTRAINT FK__anstalld_tjanst_anstallda
FOREIGN KEY (anstalldID)
REFERENCES anstallda(anstalldID)
GO

--Massörens schema
CREATE TABLE anstalld_schema(
	schemaID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	anstalldID uniqueidentifier NOT NULL,

	startTid datetime NOT NULL,
	slutTid datetime NOT NULL,
	datum datetime NOT NULL,

	CreatedDate Datetime NOT NULL DEFAULT (getdate()),
	CreatedBy int NOT NULL,
	UpdatedDate Datetime NULL,
	UpdatedBy int NULL,
);
GO

ALTER TABLE anstalld_schema WITH CHECK ADD CONSTRAINT FK__anstalld_schema_anstallda
FOREIGN KEY (anstalldID)
REFERENCES anstallda(anstalldID)
GO

--Ordrarna som lagts, de läggs 'över' massörens schema
CREATE TABLE ordrar(
	orderID uniqueidentifier PRIMARY KEY NOT NULL DEFAULT (newid()),
	tjanstID int NOT NULL,
	anstalldID uniqueidentifier NOT NULL,
	personID uniqueidentifier NOT NULL,
	betald bit NOT NULL,
	orderDatum datetime  NOT NULL,
	startTid datetime NOT NULL,
	slutTid datetime NOT NULL,
	aktiv bit NOT NULL,

	CreatedDate Datetime NOT NULL DEFAULT (getdate()),
	CreatedBy int NOT NULL,
	UpdatedDate Datetime NULL,
	UpdatedBy int NULL,
);
GO

ALTER TABLE ordrar WITH CHECK ADD CONSTRAINT FK__ordrar_anstallda
FOREIGN KEY (anstalldID)
REFERENCES anstallda(anstalldID)
GO

ALTER TABLE ordrar WITH CHECK ADD CONSTRAINT FK__ordrar_tjanster
FOREIGN KEY (tjanstID)
REFERENCES tjanster(tjanstID)
GO

ALTER TABLE ordrar WITH CHECK ADD CONSTRAINT FK__ordrar_personer
FOREIGN KEY (personID)
REFERENCES personer(personID)
GO

--Nyheterna som visas på startsidan
CREATE TABLE nyheter(
    nyhetsID int PRIMARY KEY NOT NULL,
	anstalldID uniqueidentifier NOT NULL,
	rubrik nvarchar(50) NOT NULL,
	beskrivning nvarchar(2000) NOT NULL,
	publicerad bit NOT NULL,
	publiceradDatum datetime NULL,

	CreatedDate Datetime NOT NULL DEFAULT (getdate()),
	CreatedBy int NOT NULL,
	UpdatedDate Datetime NULL,
	UpdatedBy int NULL,
);
GO

ALTER TABLE nyheter WITH CHECK ADD CONSTRAINT FK_nyheter_anstallda
FOREIGN KEY (anstalldID)
REFERENCES anstallda(anstalldID)
GO

--Textstycken som visas på olika sidor
CREATE TABLE artikel(
	artikelID int PRIMARY KEY NOT NULL,
	anstalldID uniqueidentifier NOT NULL,
	rubrik nvarchar(50) NOT NULL,
	beskrivning nvarchar(650) NOT NULL,

	CreatedDate Datetime NOT NULL DEFAULT (getdate()),
	CreatedBy int NOT NULL,
	UpdatedDate Datetime NULL,
	UpdatedBy int NULL,
);
GO

ALTER TABLE artikel WITH CHECK ADD CONSTRAINT FK_artikel_anstallda
FOREIGN KEY (anstalldID)
REFERENCES anstallda(anstalldID)
GO

--Annonsörer rutorna som finns på startsidan
CREATE TABLE annonsorer(
	annonsorID int PRIMARY KEY NOT NULL,
	anstalldID uniqueidentifier NOT NULL,
	namn nvarchar(200) NOT NULL,
	beskrivning nvarchar(2500) NOT NULL,
	lank nvarchar(500) NULL,
	bild varchar(130) NULL,

	CreatedDate Datetime NOT NULL DEFAULT (getdate()),
	CreatedBy uniqueidentifier NOT NULL,
	UpdatedDate Datetime NULL,
	UpdatedBy int NULL,
);
GO

ALTER TABLE annonsorer WITH CHECK ADD CONSTRAINT FK_annonser_anstallda
FOREIGN KEY (anstalldID)
REFERENCES anstallda(anstalldID)
GO