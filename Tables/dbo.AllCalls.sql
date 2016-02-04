CREATE TABLE [dbo].[AllCalls]
(
[RowNumber] [int] NOT NULL IDENTITY(0, 1),
[EventClass] [int] NULL,
[TextData] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NTUserName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClientProcessID] [int] NULL,
[ApplicationName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LoginName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPID] [int] NULL,
[Duration] [bigint] NULL,
[StartTime] [datetime] NULL,
[EndTime] [datetime] NULL,
[Reads] [bigint] NULL,
[Writes] [bigint] NULL,
[CPU] [int] NULL,
[BinaryData] [image] NULL,
[NewColumn] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AllCalls] ADD CONSTRAINT [PK__AllCalls__AAAC09D884C2B235] PRIMARY KEY CLUSTERED  ([RowNumber]) ON [PRIMARY]
GO
