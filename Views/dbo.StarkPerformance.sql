SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO





create view [dbo].[StarkPerformance]
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
		
from StarkAllCalls
where EventClass in (10,12)
and ApplicationName <> 'Crystal Reports'
and TextData not like '%/*%'
and TextData not like 'alter index%'
and textdata not like 'backup database%'









GO
