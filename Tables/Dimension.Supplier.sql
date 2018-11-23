CREATE TABLE [Dimension].[Supplier]
(
[Supplier Key] [int] NOT NULL,
[WWI Supplier ID] [int] NOT NULL,
[Supplier] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Category] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Primary Contact] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Supplier Reference] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Payment Days] [int] NOT NULL,
[Postal Code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Valid From] [datetime2] NOT NULL,
[Valid To] [datetime2] NOT NULL,
[Lineage Key] [int] NOT NULL
) ON [USERDATA]
GO
ALTER TABLE [Dimension].[Supplier] ADD CONSTRAINT [PK_Dimension_Supplier] PRIMARY KEY CLUSTERED  ([Supplier Key]) ON [USERDATA]
GO
CREATE NONCLUSTERED INDEX [IX_Dimension_Supplier_WWISupplierID] ON [Dimension].[Supplier] ([WWI Supplier ID], [Valid From], [Valid To]) ON [USERDATA]
GO
