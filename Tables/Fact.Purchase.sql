CREATE TABLE [Fact].[Purchase]
(
[Purchase Key] [bigint] NOT NULL IDENTITY(1, 1),
[Date Key] [date] NOT NULL,
[Supplier Key] [int] NOT NULL,
[Stock Item Key] [int] NOT NULL,
[WWI Purchase Order ID] [int] NULL,
[Ordered Outers] [int] NOT NULL,
[Ordered Quantity] [int] NOT NULL,
[Received Outers] [int] NOT NULL,
[Package] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Is Order Finalized] [bit] NOT NULL,
[Lineage Key] [int] NOT NULL
) ON [PS_Date] ([Date Key])
GO
ALTER TABLE [Fact].[Purchase] ADD CONSTRAINT [PK_Fact_Purchase] PRIMARY KEY NONCLUSTERED  ([Purchase Key], [Date Key]) ON [PS_Date] ([Date Key])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCX_Fact_Purchase] ON [Fact].[Purchase] ON [PS_Date] ([Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Purchase_Date_Key] ON [Fact].[Purchase] ([Date Key]) ON [PS_Date] ([Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Purchase_Stock_Item_Key] ON [Fact].[Purchase] ([Stock Item Key]) ON [PS_Date] ([Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Purchase_Supplier_Key] ON [Fact].[Purchase] ([Supplier Key]) ON [PS_Date] ([Date Key])
GO
