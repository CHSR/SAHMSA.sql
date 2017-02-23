CREATE TABLE [dbo].[Program]
(
[ProgramPK] [int] NOT NULL IDENTITY(1, 1),
[ProgramCreateDate] [datetime] NOT NULL CONSTRAINT [DF_Program_ProgramCreateDate] DEFAULT (getdate()),
[ProgramCreator] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProgramEditDate] [datetime] NULL,
[ProgramEditor] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProgramCode] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProgramContractManager] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProgramName] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProgramContractManagerPhone] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[TR_ProgramEditDate] ON [dbo].[Program]
FOR UPDATE 
AS
UPDATE Program SET Program.ProgramEditDate= GETDATE()
FROM [Program] INNER JOIN Inserted ON [Program].[ProgramPK]= Inserted.[ProgramPK]
GO
ALTER TABLE [dbo].[Program] ADD CONSTRAINT [PK_Program] PRIMARY KEY CLUSTERED  ([ProgramPK]) ON [PRIMARY]
GO
