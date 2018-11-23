CREATE TABLE [Dimension].[Payment Method]
(
[Payment Method Key] [int] NOT NULL,
[WWI Payment Method ID] [int] NOT NULL,
[Payment Method] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Valid From] [datetime2] NOT NULL,
[Valid To] [datetime2] NOT NULL,
[Lineage Key] [int] NOT NULL
) ON [USERDATA]
GO
ALTER TABLE [Dimension].[Payment Method] ADD CONSTRAINT [PK_Dimension_Payment_Method] PRIMARY KEY CLUSTERED  ([Payment Method Key]) ON [USERDATA]
GO
CREATE NONCLUSTERED INDEX [IX_Dimension_Payment_Method_WWIPaymentMethodID] ON [Dimension].[Payment Method] ([WWI Payment Method ID], [Valid From], [Valid To]) ON [USERDATA]
GO
