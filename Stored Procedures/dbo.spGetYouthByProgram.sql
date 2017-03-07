SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		Yuying Cao
-- Create date: May 28, 2015
-- Description:	Return all registrations by program
-- Edit date:
-- Edited by: 
-- Edit Reason: 
-- =============================================

create PROCEDURE [dbo].[spGetYouthByProgram]
@progFK int = NULL


AS
BEGIN
SET NOCOUNT ON;
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

SELECT MainPK, rtrim(YouthFName) + ' ' + rtrim(YouthLName) AS YouthName FROM Main

WHERE Programfk=@progfk

END




GO
