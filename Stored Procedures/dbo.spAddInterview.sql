SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spAddInterview](@MainFK int=NULL,
@Interval int=NULL,
@InterviewType nchar(20)=NULL,
@InterviewDate date=NULL)
AS
INSERT INTO Interview(
MainFK,
Interval,
InterviewType,
InterviewDate
)
VALUES(
@MainFK,
@Interval,
@InterviewType,
@InterviewDate
)

SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]
GO
