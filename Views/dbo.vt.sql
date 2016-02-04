SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create view [dbo].[vt]
as

select * from validatetoken
union all
select * from validatetoken2
GO
