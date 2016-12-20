<<<<<<< HEAD
llINSERT INTO anstalld_schema
(anstalldID,startTid,slutTid,datum,CreatedBy)
SELECT anstalldID,startTid,slutTid,datum,CreatedBy from uppdaterat_schema$

go

select * from anstalld_schema


SELECT 
	startTid,
	DATEPART(ww, startTid) AS vecka,
	DATEPART(dd, startTid) AS datum,
	CONVERT(VARCHAR(5),GETDATE(),114) 'hh:mi:ss:mmm'
	--CONVERT(nvarchar(5), DATEPART(hh, startTid)) + ':' + CONVERT(nvarchar(5), DATEPART(MI, startTid)) AS Starttid
FROM anstalld_schema
where schemaID=1



SELECT Convert(Datetime, GetDate(), 108)



SELECT 
	GETDATE() 'Today', 
	CONVERT(VARCHAR(5),GETDATE(),114) 'hh:mi:ss:mmm'





=======
llINSERT INTO anstalld_schema
(anstalldID,startTid,slutTid,datum,CreatedBy)
SELECT anstalldID,startTid,slutTid,datum,CreatedBy from uppdaterat_schema$

go

select * from anstalld_schema


SELECT 
	startTid,
	DATEPART(ww, startTid) AS vecka,
	DATEPART(dd, startTid) AS datum,
	CONVERT(VARCHAR(5),GETDATE(),114) 'hh:mi:ss:mmm'
	--CONVERT(nvarchar(5), DATEPART(hh, startTid)) + ':' + CONVERT(nvarchar(5), DATEPART(MI, startTid)) AS Starttid
FROM anstalld_schema
where schemaID=1



SELECT Convert(Datetime, GetDate(), 108)



SELECT 
	GETDATE() 'Today', 
	CONVERT(VARCHAR(5),GETDATE(),114) 'hh:mi:ss:mmm'





>>>>>>> 2ac3caf66151e99ed960ad5a2169a90de5e5b137
