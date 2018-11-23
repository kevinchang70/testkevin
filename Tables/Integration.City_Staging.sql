CREATE TABLE [Integration].[City_Staging]
(
[City Staging Key] [int] NOT NULL IDENTITY(1, 1),
[WWI City ID] [int] NOT NULL,
[City] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[State Province] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Country] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Continent] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Sales Territory] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Region] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Subregion] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Location] [sys].[geography] NULL,
[Latest Recorded Population] [bigint] NOT NULL,
[Valid From] [datetime2] NOT NULL,
[Valid To] [datetime2] NOT NULL
) ON [USERDATA]
GO
ALTER TABLE [Integration].[City_Staging] ADD CONSTRAINT [PK_Integration_City_Staging] PRIMARY KEY CLUSTERED  ([City Staging Key]) ON [USERDATA]
GO
CREATE NONCLUSTERED INDEX [IX_Integration_City_Staging_WWI_City_ID] ON [Integration].[City_Staging] ([WWI City ID]) ON [USERDATA]
GO
