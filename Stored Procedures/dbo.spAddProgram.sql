SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spAddProgram](@ProgramCreator char(10)=NULL,
@ProgramCode char(5)=NULL,
@ProgramContractManager char(30)=NULL,
@ProgramName char(60)=NULL,
@ProgramContractManagerPhone char(60)=NULL)
AS
INSERT INTO Program(
ProgramCreator,
ProgramCode,
ProgramContractManager,
ProgramName,
ProgramContractManagerPhone
)
VALUES(
@ProgramCreator,
@ProgramCode,
@ProgramContractManager,
@ProgramName,
@ProgramContractManagerPhone
)

SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]
GO
