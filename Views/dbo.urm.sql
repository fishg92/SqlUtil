SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create view [dbo].[urm]
as
select	RowNumber
		, EventClass
		, TextData = convert(varchar(8000),TextData)
		, CPU
		, Reads
		, Writes
		, Duration
		, StartTime
		, EndTime
from urrm
GO
