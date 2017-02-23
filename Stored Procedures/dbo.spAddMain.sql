SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spAddMain](@YouthFName nchar(30)=NULL,
@YouthLName nchar(30)=NULL,
@YouthID nchar(30)=NULL,
@Medicaid bit=NULL,
@County nchar(30)=NULL,
@CurrentProvider nchar(30)=NULL,
@CurrentProviderPhone nchar(30)=NULL,
@CareGiverFName nchar(30)=NULL,
@CareGiverLName nchar(30)=NULL,
@Phone nchar(30)=NULL,
@AlternatePhone nchar(30)=NULL,
@email nchar(50)=NULL,
@Address1 nchar(30)=NULL,
@Address2 nchar(30)=NULL,
@City nchar(30)=NULL,
@State nchar(2)=NULL,
@Zip nchar(10)=NULL,
@MainCreator nchar(10)=NULL)
AS
INSERT INTO Main(
YouthFName,
YouthLName,
YouthID,
Medicaid,
County,
CurrentProvider,
CurrentProviderPhone,
CareGiverFName,
CareGiverLName,
Phone,
AlternatePhone,
email,
Address1,
Address2,
City,
State,
Zip,
MainCreator
)
VALUES(
@YouthFName,
@YouthLName,
@YouthID,
@Medicaid,
@County,
@CurrentProvider,
@CurrentProviderPhone,
@CareGiverFName,
@CareGiverLName,
@Phone,
@AlternatePhone,
@email,
@Address1,
@Address2,
@City,
@State,
@Zip,
@MainCreator
)

SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]
GO
