CREATE TABLE [Dimension].[City]
(
[City Key] [int] NOT NULL,
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
[Valid To] [datetime2] NOT NULL,
[Lineage Key] [int] NOT NULL
) ON [USERDATA]
GO
ALTER TABLE [Dimension].[City] ADD CONSTRAINT [PK_Dimension_City] PRIMARY KEY CLUSTERED  ([City Key]) ON [USERDATA]
GO
CREATE NONCLUSTERED INDEX [IX_Dimension_City_WWICityID] ON [Dimension].[City] ([WWI City ID], [Valid From], [Valid To]) ON [USERDATA]
GO
