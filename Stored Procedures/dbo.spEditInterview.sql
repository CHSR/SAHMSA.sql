SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spEditInterview](@InterviewPK int=NULL,
@MainFK int=NULL,
@Interval int=NULL,
@InterviewType nchar(10)=NULL,
@InterviewDate date=NULL)
AS
UPDATE Interview
SET 
MainFK = @MainFK, 
Interval = @Interval, 
InterviewType = @InterviewType, 
InterviewDate = @InterviewDate
WHERE InterviewPK = @InterviewPK
GO
