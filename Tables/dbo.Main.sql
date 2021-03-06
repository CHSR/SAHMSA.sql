CREATE TABLE [dbo].[Main]
(
[MainPK] [int] NOT NULL IDENTITY(1, 1),
[YouthFName] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YouthLName] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YouthID] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Medicaid] [bit] NULL,
[CurrentProvider] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CurrentProviderPhone] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CareGiverFName] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CareGiverLName] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CareGiverPhone] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CareGiverAlternatePhone] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CareGiveremail] [nchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CareGiverAddress1] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CareGiverAddress2] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CareGiverCity] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CareGiverZip] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MainCreator] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MainCreateDate] [date] NOT NULL CONSTRAINT [DF_Main_MainCreateDate] DEFAULT (getdate()),
[MainEditor] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MainEditDate] [date] NULL,
[ProgramFK] [int] NOT NULL,
[CaregiverAgreesToInterview] [bit] NULL,
[YouthPhone] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[YouthAlternatePhone] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Youthemail] [nchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[YouthAddress1] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[YouthAddress2] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[YouthCity] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[YouthZip] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[YouthAgreesToInterview] [bit] NULL
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create TRIGGER [dbo].[TR_MainEditDate] ON [dbo].[Main]
FOR UPDATE 
AS
UPDATE Main SET Main.MainEditDate= GETDATE()
FROM Main INNER JOIN Inserted ON Main.[MainPK]= Inserted.[MainPK]
GO
ALTER TABLE [dbo].[Main] ADD CONSTRAINT [PK_Main] PRIMARY KEY CLUSTERED  ([MainPK]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Main] ADD CONSTRAINT [FK_Main_ProgramFK] FOREIGN KEY ([ProgramFK]) REFERENCES [dbo].[Program] ([ProgramPK])
GO
