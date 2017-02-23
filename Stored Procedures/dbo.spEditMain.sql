SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spEditMain](@MainPK int=NULL,
@YouthFName nchar(30)=NULL,
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
@MainEditor nchar(10)=NULL)
AS
UPDATE Main
SET 
YouthFName = @YouthFName, 
YouthLName = @YouthLName, 
YouthID = @YouthID, 
Medicaid = @Medicaid, 
County = @County, 
CurrentProvider = @CurrentProvider, 
CurrentProviderPhone = @CurrentProviderPhone, 
CareGiverFName = @CareGiverFName, 
CareGiverLName = @CareGiverLName, 
Phone = @Phone, 
AlternatePhone = @AlternatePhone, 
email = @email, 
Address1 = @Address1, 
Address2 = @Address2, 
City = @City, 
State = @State, 
Zip = @Zip, 
MainEditor = @MainEditor
WHERE MainPK = @MainPK
GO
