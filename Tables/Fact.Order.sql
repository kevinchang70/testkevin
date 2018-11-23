CREATE TABLE [Fact].[Order]
(
[Order Key] [bigint] NOT NULL IDENTITY(1, 1),
[City Key] [int] NOT NULL,
[Customer Key] [int] NOT NULL,
[Stock Item Key] [int] NOT NULL,
[Order Date Key] [date] NOT NULL,
[Picked Date Key] [date] NULL,
[Salesperson Key] [int] NOT NULL,
[Picker Key] [int] NULL,
[WWI Order ID] [int] NOT NULL,
[WWI Backorder ID] [int] NULL,
[Description] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Package] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Quantity] [int] NOT NULL,
[Unit Price] [decimal] (18, 2) NOT NULL,
[Tax Rate] [decimal] (18, 3) NOT NULL,
[Total Excluding Tax] [decimal] (18, 2) NOT NULL,
[Tax Amount] [decimal] (18, 2) NOT NULL,
[Total Including Tax] [decimal] (18, 2) NOT NULL,
[Lineage Key] [int] NOT NULL
) ON [PS_Date] ([Order Date Key])
GO
ALTER TABLE [Fact].[Order] ADD CONSTRAINT [PK_Fact_Order] PRIMARY KEY NONCLUSTERED  ([Order Key], [Order Date Key]) ON [PS_Date] ([Order Date Key])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCX_Fact_Order] ON [Fact].[Order] ON [PS_Date] ([Order Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Order_City_Key] ON [Fact].[Order] ([City Key]) ON [PS_Date] ([Order Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Order_Customer_Key] ON [Fact].[Order] ([Customer Key]) ON [PS_Date] ([Order Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Order_Order_Date_Key] ON [Fact].[Order] ([Order Date Key]) ON [PS_Date] ([Order Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Order_Picked_Date_Key] ON [Fact].[Order] ([Picked Date Key]) ON [PS_Date] ([Order Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Order_Picker_Key] ON [Fact].[Order] ([Picker Key]) ON [PS_Date] ([Order Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Order_Salesperson_Key] ON [Fact].[Order] ([Salesperson Key]) ON [PS_Date] ([Order Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Order_Stock_Item_Key] ON [Fact].[Order] ([Stock Item Key]) ON [PS_Date] ([Order Date Key])
GO
CREATE NONCLUSTERED INDEX [IX_Integration_Order_WWI_Order_ID] ON [Fact].[Order] ([WWI Order ID]) ON [PS_Date] ([Order Date Key])
GO
