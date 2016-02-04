CREATE TABLE [dbo].[LongQueries]
(
[RowNumber] [int] NOT NULL IDENTITY(0, 1),
[EventClass] [int] NULL,
[TextData] [varchar] (5000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ApplicationName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NTUserName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LoginName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CPU] [int] NULL,
[Reads] [bigint] NULL,
[Writes] [bigint] NULL,
[Duration] [bigint] NULL,
[ClientProcessID] [int] NULL,
[SPID] [int] NULL,
[StartTime] [datetime] NULL,
[EndTime] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LongQueries] ADD CONSTRAINT [PK__LongQuer__AAAC09D8182C9B23] PRIMARY KEY CLUSTERED  ([RowNumber]) ON [PRIMARY]
GO
