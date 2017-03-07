SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spEditMain](@MainPK int=NULL,
@YouthFName nchar(30)=NULL,
@YouthLName nchar(30)=NULL,
@YouthID nchar(30)=NULL,
@Medicaid bit=NULL,
@CurrentProvider nchar(30)=NULL,
@CurrentProviderPhone nchar(30)=NULL,
@CareGiverFName nchar(30)=NULL,
@CareGiverLName nchar(30)=NULL,
@YouthOrCaregiverContactInfo nchar(10)=NULL,
@Phone nchar(30)=NULL,
@AlternatePhone nchar(30)=NULL,
@email nchar(50)=NULL,
@Address1 nchar(30)=NULL,
@Address2 nchar(30)=NULL,
@City nchar(30)=NULL,
@Zip nchar(10)=NULL,
@MainEditor nchar(10)=NULL,
@ProgramFK int=NULL,
@AgreesToInterview bit=NULL)
AS
UPDATE Main
SET 
YouthFName = @YouthFName, 
YouthLName = @YouthLName, 
YouthID = @YouthID, 
Medicaid = @Medicaid, 
CurrentProvider = @CurrentProvider, 
CurrentProviderPhone = @CurrentProviderPhone, 
CareGiverFName = @CareGiverFName, 
CareGiverLName = @CareGiverLName, 
YouthOrCaregiverContactInfo = @YouthOrCaregiverContactInfo, 
Phone = @Phone, 
AlternatePhone = @AlternatePhone, 
email = @email, 
Address1 = @Address1, 
Address2 = @Address2, 
City = @City, 
Zip = @Zip, 
MainEditor = @MainEditor, 
ProgramFK = @ProgramFK, 
AgreesToInterview = @AgreesToInterview
WHERE MainPK = @MainPK
GO
