SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spGetProgrambyPK]

(@ProgramPK int)
AS
SET NOCOUNT ON;

SELECT * 
FROM Program
WHERE ProgramPK = @ProgramPK
GO
