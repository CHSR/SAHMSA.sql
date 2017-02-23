SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spDelInterview](@InterviewPK int)

AS


DELETE 
FROM Interview
WHERE InterviewPK = @InterviewPK
GO
