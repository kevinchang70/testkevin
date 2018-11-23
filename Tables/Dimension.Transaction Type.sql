CREATE TABLE [Dimension].[Transaction Type]
(
[Transaction Type Key] [int] NOT NULL,
[WWI Transaction Type ID] [int] NOT NULL,
[Transaction Type] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Valid From] [datetime2] NOT NULL,
[Valid To] [datetime2] NOT NULL,
[Lineage Key] [int] NOT NULL
) ON [USERDATA]
GO
ALTER TABLE [Dimension].[Transaction Type] ADD CONSTRAINT [PK_Dimension_Transaction_Type] PRIMARY KEY CLUSTERED  ([Transaction Type Key]) ON [USERDATA]
GO
CREATE NONCLUSTERED INDEX [IX_Dimension_Transaction_Type_WWITransactionTypeID] ON [Dimension].[Transaction Type] ([WWI Transaction Type ID], [Valid From], [Valid To]) ON [USERDATA]
GO
