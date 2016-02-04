CREATE TABLE [dbo].[PilotErrorsAll]
(
[pkTrace] [decimal] (18, 0) NULL,
[DateTime] [datetime] NULL,
[Source] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ApplicationID] [int] NULL,
[EntryType] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Message] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AssociateWith] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Object] [varbinary] (255) NULL,
[ObjectLen] [int] NULL,
[LupUser] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LupDate] [datetime] NULL,
[CreateUser] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreateDate] [datetime] NULL,
[Customer] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MessageAsVCMax] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
