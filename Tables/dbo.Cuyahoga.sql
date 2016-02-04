CREATE TABLE [dbo].[Cuyahoga]
(
[RowNumber] [int] NOT NULL IDENTITY(0, 1),
[EventClass] [int] NULL,
[TextData] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LoginName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Duration] [bigint] NULL,
[DatabaseID] [int] NULL,
[DatabaseName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPID] [int] NULL,
[BinaryData] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cuyahoga] ADD CONSTRAINT [PK__Cuyahoga__AAAC09D838996AB5] PRIMARY KEY CLUSTERED  ([RowNumber]) ON [PRIMARY]
GO
