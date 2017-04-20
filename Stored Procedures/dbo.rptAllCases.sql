SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Chris Papas
-- Create date: 4-12-2017
-- Description:	All Cases by Program
-- =============================================
CREATE PROCEDURE [dbo].[rptAllCases]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT YouthID FROM dbo.Main
	ORDER BY YouthID
END
GO
