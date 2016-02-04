SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[ExtractProcName] 
(
	@rawCommand varchar(4000)
)
RETURNS varchar(4000)
AS
BEGIN
	declare @return varchar(4000)
	set @return = ltrim(rtrim(@rawCommand))
	
	
	if LEFT(@return,7) = 'declare'
	and CHARINDEX('exec ',@return)>0
		begin
		declare @execPos int
		set @execPos = CHARINDEX('exec dbo.',@return)
		set @return = SUBSTRING(@return,@execPos,4000)
		end
		

	if left(@return,4) = 'exec'
		set @return = ltrim(substring(@return,5,4000))

	declare @atPos int
	
	set @atPos = charindex('@',@return)
		
	if @atPos > 0
		set @return = rtrim(left(@return,@atPos-1))
	
	if left(@return,4)= 'dbo.'
		set @return = ltrim(substring(@return,5,4000))

	if LEFT(@return,36)='SELECT DISTINCT pktask = task.pktask'
		set @return = 'Task Select'
		
	if left(@return,18) = 'spInsertScrapeData'
		set @return = 'spInsertScrapeData'
		
	if @return = 'usp_LogEntry'
		begin
		
		set @atPos = CHARINDEX('@Message=',@rawCommand)
		declare @associatePos int
		set @associatePos = CHARINDEX(',@AssociateWith',@rawCommand)
		
		if @atPos > 0
		and @associatePos > 0
			begin
			set @return = @return + ' ' + SUBSTRING(@rawCommand,@atPos + 11,(@associatePos - @atPos - 12))
			end
		
		end
		
		
	if left(@return,1) = '['
		set @return = substring(@return,2,500)
		
	if right(@return,1) = ']'
		set @return = left(@return,datalength(@return)-1)		

	if @return like 'GetQueuesForAirportScreensByLocation%'
		set @return = 'GetQueuesForAirportScreensByLocation'

	if @return = 'UpdateRRRMInformationSingleUser'
	or @return = 'UpdateRRRMInformation'
		set @return = 'UpdateRRRRMInformation'
	RETURN @return
END
GO
