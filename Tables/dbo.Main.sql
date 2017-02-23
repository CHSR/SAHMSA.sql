CREATE TABLE [dbo].[Main]
(
[MainPK] [int] NOT NULL IDENTITY(1, 1),
[YouthFName] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YouthLName] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YouthID] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Medicaid] [bit] NULL,
[County] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CurrentProvider] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CurrentProviderPhone] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CareGiverFName] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CareGiverLName] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Phone] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AlternatePhone] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[email] [nchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address1] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address2] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[State] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Zip] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MainCreator] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MainCreateDate] [date] NOT NULL CONSTRAINT [DF_Main_MainCreateDate] DEFAULT (getdate()),
[MainEditor] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MainEditDate] [date] NULL
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
