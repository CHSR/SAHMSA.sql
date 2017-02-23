SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spEditProgram](@ProgramPK int=NULL,
@ProgramEditor char(10)=NULL,
@ProgramCode char(5)=NULL,
@ProgramContractManager char(30)=NULL,
@ProgramName char(60)=NULL,
@ProgramContractManagerPhone char(60)=NULL)
AS
UPDATE Program
SET 
ProgramEditor = @ProgramEditor, 
ProgramCode = @ProgramCode, 
ProgramContractManager = @ProgramContractManager, 
ProgramName = @ProgramName, 
ProgramContractManagerPhone = @ProgramContractManagerPhone
WHERE ProgramPK = @ProgramPK
GO
