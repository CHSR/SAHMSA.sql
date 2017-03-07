CREATE TABLE [dbo].[Interview]
(
[InterviewPK] [int] NOT NULL IDENTITY(1, 1),
[MainFK] [int] NOT NULL,
[Interval] [int] NULL,
[InterviewType] [nchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[InterviewDate] [date] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Interview] ADD CONSTRAINT [PK_Interview] PRIMARY KEY CLUSTERED  ([InterviewPK]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Interview] ADD CONSTRAINT [FK_Interview_MainFK] FOREIGN KEY ([MainFK]) REFERENCES [dbo].[Main] ([MainPK])
GO
