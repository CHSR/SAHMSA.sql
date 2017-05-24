SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Chris Papas
-- Create date: 5-3-2017
-- Description:	Any case where the last interview was 150 or more days old, by program
-- =============================================
CREATE PROCEDURE [dbo].[rptCasesOver150]
	-- Add the parameters for the stored procedure here
	@programfk  as VARCHAR(MAX)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @programfk IS NULL BEGIN
		SELECT @programfk = 
			SUBSTRING((SELECT ',' + LTRIM(RTRIM(STR(ProgramPK))) 
						FROM Program
						FOR XML PATH('')),2,8000)
	END

	SET @programfk = REPLACE(@programfk,'"','');
    -- Insert statements for procedure here
	SELECT YouthID, daysold, program.ProgramName
	FROM dbo.Main
	INNER JOIN (
	SELECT DATEDIFF(DAY, MAX(interviewdate), GETDATE()) AS DaysOld, MainFK
	, MAX(interviewdate) AS intdate
	FROM dbo.Interview
	GROUP BY mainfk) a ON a.MainFK = MainPK
	INNER JOIN dbo.Program ON Program.ProgramPK = Main.ProgramFK
	INNER JOIN dbo.SplitString(@programfk,',') ON main.ProgramFK  = listitem
	WHERE a.DaysOld > 149


END
GO
