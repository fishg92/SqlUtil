CREATE TABLE [dbo].[Logging]
(
[pkTrace] [decimal] (18, 0) NOT NULL IDENTITY(1, 1),
[DateTime] [datetime] NOT NULL,
[Source] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ApplicationID] [int] NOT NULL,
[EntryType] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Message] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AssociateWith] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Object] [varbinary] (255) NULL,
[ObjectLen] [int] NULL,
[LupUser] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LupDate] [datetime] NULL,
[CreateUser] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreateDate] [datetime] NULL,
[EffectiveLupUser] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EffectiveLupDate] [datetime] NULL,
[EffectiveCreateUser] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EffectiveCreateDate] [datetime] NULL,
[LUPMac] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LUPIP] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreateMac] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreateIP] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
