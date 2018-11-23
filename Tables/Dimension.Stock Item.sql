CREATE TABLE [Dimension].[Stock Item]
(
[Stock Item Key] [int] NOT NULL,
[WWI Stock Item ID] [int] NOT NULL,
[Stock Item] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Color] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Selling Package] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Buying Package] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Brand] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Size] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Lead Time Days] [int] NOT NULL,
[Quantity Per Outer] [int] NOT NULL,
[Is Chiller Stock] [bit] NOT NULL,
[Barcode] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Tax Rate] [decimal] (18, 3) NOT NULL,
[Unit Price] [decimal] (18, 2) NOT NULL,
[Recommended Retail Price] [decimal] (18, 2) NULL,
[Typical Weight Per Unit] [decimal] (18, 3) NOT NULL,
[Photo] [varbinary] (max) NULL,
[Valid From] [datetime2] NOT NULL,
[Valid To] [datetime2] NOT NULL,
[Lineage Key] [int] NOT NULL
) ON [USERDATA]
GO
ALTER TABLE [Dimension].[Stock Item] ADD CONSTRAINT [PK_Dimension_Stock_Item] PRIMARY KEY CLUSTERED  ([Stock Item Key]) ON [USERDATA]
GO
CREATE NONCLUSTERED INDEX [IX_Dimension_Stock_Item_WWIStockItemID] ON [Dimension].[Stock Item] ([WWI Stock Item ID], [Valid From], [Valid To]) ON [USERDATA]
GO
