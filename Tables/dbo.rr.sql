CREATE TABLE [dbo].[rr]
(
[RowNumber] [int] NOT NULL IDENTITY(0, 1),
[EventClass] [int] NULL,
[TextData] [varchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Duration] [bigint] NULL,
[SPID] [int] NULL,
[ObjectType] [int] NULL,
[LoginName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
