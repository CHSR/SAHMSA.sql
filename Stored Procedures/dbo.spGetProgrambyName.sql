SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		Yuying Cao
-- Create date: 07/15/2015
-- Description:	Return all registrations by program and programSite
-- Edit date:
-- Edited by: 
-- Edit Reason: 
-- =============================================
creATE PROCEDURE [dbo].[spGetProgrambyName]

(@ProgramName CHAR(60))
AS
SET NOCOUNT ON;

SELECT *
FROM Program
WHERE ProgramName = @ProgramName
GO
