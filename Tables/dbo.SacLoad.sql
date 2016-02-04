CREATE TABLE [dbo].[SacLoad]
(
[RowNumber] [int] NOT NULL IDENTITY(0, 1),
[EventClass] [int] NULL,
[TextData] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
[EndTime] [datetime] NULL,
[BinaryData] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SacLoad] ADD CONSTRAINT [PK__SacLoad__AAAC09D88585F46D] PRIMARY KEY CLUSTERED  ([RowNumber]) ON [PRIMARY]
GO
