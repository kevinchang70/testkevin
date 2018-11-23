CREATE TABLE [Dimension].[Date]
(
[Date] [date] NOT NULL,
[Day Number] [int] NOT NULL,
[Day] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Month] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Short Month] [nvarchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Calendar Month Number] [int] NOT NULL,
[Calendar Month Label] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Calendar Year] [int] NOT NULL,
[Calendar Year Label] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Fiscal Month Number] [int] NOT NULL,
[Fiscal Month Label] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Fiscal Year] [int] NOT NULL,
[Fiscal Year Label] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ISO Week Number] [int] NOT NULL
) ON [USERDATA]
GO
ALTER TABLE [Dimension].[Date] ADD CONSTRAINT [PK_Dimension_Date] PRIMARY KEY CLUSTERED  ([Date]) ON [USERDATA]
GO
