CREATE TABLE [Fact].[Sale]
(
[Sale Key] [bigint] NOT NULL IDENTITY(1, 1),
[City Key] [int] NOT NULL,
[Customer Key] [int] NOT NULL,
[Bill To Customer Key] [int] NOT NULL,
[Stock Item Key] [int] NOT NULL,
[Invoice Date Key] [date] NOT NULL,
[Delivery Date Key] [date] NULL,
[Salesperson Key] [int] NOT NULL,
[WWI Invoice ID] [int] NOT NULL,
[Description] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Package] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Quantity] [int] NOT NULL,
[Unit Price] [decimal] (18, 2) NOT NULL,
[Tax Rate] [decimal] (18, 3) NOT NULL,
[Total Excluding Tax] [decimal] (18, 2) NOT NULL,
[Tax Amount] [decimal] (18, 2) NOT NULL,
[Profit] [decimal] (18, 2) NOT NULL,
[Total Including Tax] [decimal] (18, 2) NOT NULL,
[Total Dry Items] [int] NOT NULL,
[Total Chiller Items] [int] NOT NULL,
[Lineage Key] [int] NOT NULL
) ON [PS_Date] ([Invoice Date Key])
GO
ALTER TABLE [Fact].[Sale] ADD CONSTRAINT [PK_Fact_Sale] PRIMARY KEY NONCLUSTERED  ([Sale Key], [Invoice Date Key]) ON [PS_Date] ([Invoice Date Key])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCX_Fact_Sale] ON [Fact].[Sale] ON [PS_Date] ([Invoice Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Sale_Bill_To_Customer_Key] ON [Fact].[Sale] ([Bill To Customer Key]) ON [PS_Date] ([Invoice Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Sale_City_Key] ON [Fact].[Sale] ([City Key]) ON [PS_Date] ([Invoice Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Sale_Customer_Key] ON [Fact].[Sale] ([Customer Key]) ON [PS_Date] ([Invoice Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Sale_Delivery_Date_Key] ON [Fact].[Sale] ([Delivery Date Key]) ON [PS_Date] ([Invoice Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Sale_Invoice_Date_Key] ON [Fact].[Sale] ([Invoice Date Key]) ON [PS_Date] ([Invoice Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Sale_Salesperson_Key] ON [Fact].[Sale] ([Salesperson Key]) ON [PS_Date] ([Invoice Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Sale_Stock_Item_Key] ON [Fact].[Sale] ([Stock Item Key]) ON [PS_Date] ([Invoice Date Key])
GO
