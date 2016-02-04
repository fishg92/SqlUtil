SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create view [dbo].[c701]
as
select * from cleveland0701
union all
select * from cleveland0701a
GO
