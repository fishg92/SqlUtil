SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create FUNCTION [dbo].[ExtractToken] 
(
	@rawCommand varchar(4000)
)
RETURNS varchar(4000)
AS
BEGIN
	declare @return varchar(4000)
	set @return = ltrim(rtrim(@rawCommand))

	if @return like 'exec dbo.usp_ValidateToken%' 
		set @return = substring(@return,41,73)
	else
		set @return = ''
		

	RETURN @return
END
GO
