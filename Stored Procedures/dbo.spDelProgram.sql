SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spDelProgram](@ProgramPK int)

AS


DELETE 
FROM Program
WHERE ProgramPK = @ProgramPK
GO