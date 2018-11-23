CREATE TABLE [Dimension].[Customer]
(
[Customer Key] [int] NOT NULL,
[WWI Customer ID] [int] NOT NULL,
[Customer] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Bill To Customer] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Category] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Buying Group] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Primary Contact] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Postal Code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Valid From] [datetime2] NOT NULL,
[Valid To] [datetime2] NOT NULL,
[Lineage Key] [int] NOT NULL,
[testkevin] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [USERDATA]
GO
ALTER TABLE [Dimension].[Customer] ADD CONSTRAINT [PK_Dimension_Customer] PRIMARY KEY CLUSTERED  ([Customer Key]) ON [USERDATA]
GO
CREATE NONCLUSTERED INDEX [IX_Dimension_Customer_WWICustomerID] ON [Dimension].[Customer] ([WWI Customer ID], [Valid From], [Valid To]) ON [USERDATA]
GO
