CREATE TABLE [Fact].[Stock Holding]
(
[Stock Holding Key] [bigint] NOT NULL IDENTITY(1, 1),
[Stock Item Key] [int] NOT NULL,
[Quantity On Hand] [int] NOT NULL,
[Bin Location] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Last Stocktake Quantity] [int] NOT NULL,
[Last Cost Price] [decimal] (18, 2) NOT NULL,
[Reorder Level] [int] NOT NULL,
[Target Stock Level] [int] NOT NULL,
[Lineage Key] [int] NOT NULL
) ON [USERDATA]
GO
ALTER TABLE [Fact].[Stock Holding] ADD CONSTRAINT [PK_Fact_Stock_Holding] PRIMARY KEY NONCLUSTERED  ([Stock Holding Key]) ON [USERDATA]
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCX_Fact_Stock_Holding] ON [Fact].[Stock Holding] ON [USERDATA]
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Stock_Holding_Stock_Item_Key] ON [Fact].[Stock Holding] ([Stock Item Key]) ON [USERDATA]
GO
