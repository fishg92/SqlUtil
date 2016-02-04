CREATE TABLE [dbo].[rrrm]
(
[RowNumber] [int] NOT NULL IDENTITY(0, 1),
[EventClass] [int] NULL,
[TextData] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Duration] [bigint] NULL,
[SPID] [int] NULL,
[DatabaseID] [int] NULL,
[DatabaseName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ObjectType] [int] NULL,
[LoginName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BinaryData] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[rrrm] ADD CONSTRAINT [PK__rrrm__AAAC09D82C3393D0] PRIMARY KEY CLUSTERED  ([RowNumber]) ON [PRIMARY]
GO
