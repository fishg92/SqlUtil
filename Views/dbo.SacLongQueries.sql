SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO






CREATE view [dbo].[SacLongQueries]
as
select ProcName = dbo.ExtractProcName(TextData)
		,RowNumber
		,TextData
		,ApplicationName
		,CPU
		,Reads
		,Writes
		,Duration
		,ClientProcessID
		,SPID
		,StartTime
		,EndTime
		
from SacPostFix-- Sac2Second -- LongQueries
where EventClass in (10,12)
and ApplicationName <> 'Crystal Reports'
and textdata not like 'backup database%'










GO
