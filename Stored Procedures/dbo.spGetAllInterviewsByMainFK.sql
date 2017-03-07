SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create PROCEDURE [dbo].[spGetAllInterviewsByMainFK]

(@MainFK int)
AS
SET NOCOUNT ON;

SELECT [InterviewPK]
      ,[MainFK]
      ,[Interval]
      ,[InterviewType]
      ,[InterviewDate]
FROM Interview
WHERE MainFK = @MainFK
order by InterviewDate

GO
