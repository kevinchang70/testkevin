CREATE TABLE [Fact].[Movement]
(
[Movement Key] [bigint] NOT NULL IDENTITY(1, 1),
[Date Key] [date] NOT NULL,
[Stock Item Key] [int] NOT NULL,
[Customer Key] [int] NULL,
[Supplier Key] [int] NULL,
[Transaction Type Key] [int] NOT NULL,
[WWI Stock Item Transaction ID] [int] NOT NULL,
[WWI Invoice ID] [int] NULL,
[WWI Purchase Order ID] [int] NULL,
[Quantity] [int] NOT NULL,
[Lineage Key] [int] NOT NULL
) ON [PS_Date] ([Date Key])
GO
ALTER TABLE [Fact].[Movement] ADD CONSTRAINT [PK_Fact_Movement] PRIMARY KEY NONCLUSTERED  ([Movement Key], [Date Key]) ON [PS_Date] ([Date Key])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCX_Fact_Movement] ON [Fact].[Movement] ON [PS_Date] ([Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Movement_Customer_Key] ON [Fact].[Movement] ([Customer Key]) ON [PS_Date] ([Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Movement_Date_Key] ON [Fact].[Movement] ([Date Key]) ON [PS_Date] ([Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Movement_Stock_Item_Key] ON [Fact].[Movement] ([Stock Item Key]) ON [PS_Date] ([Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Movement_Supplier_Key] ON [Fact].[Movement] ([Supplier Key]) ON [PS_Date] ([Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Movement_Transaction_Type_Key] ON [Fact].[Movement] ([Transaction Type Key]) ON [PS_Date] ([Date Key])
GO
CREATE NONCLUSTERED INDEX [IX_Integration_Movement_WWI_Stock_Item_Transaction_ID] ON [Fact].[Movement] ([WWI Stock Item Transaction ID]) ON [PS_Date] ([Date Key])
GO
