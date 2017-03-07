SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spGetLastInterview]

(@MainFK int)
AS
SET NOCOUNT ON;

SELECT Top 1 [InterviewPK]
      ,[MainFK]
      ,[Interval]
      ,[InterviewType] as FinalInterviewInterval
      ,[InterviewDate]
FROM Interview
WHERE MainFK = @MainFK
order by InterviewDate desc

GO
