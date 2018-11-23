CREATE TABLE [Fact].[Transaction]
(
[Transaction Key] [bigint] NOT NULL IDENTITY(1, 1),
[Date Key] [date] NOT NULL,
[Customer Key] [int] NULL,
[Bill To Customer Key] [int] NULL,
[Supplier Key] [int] NULL,
[Transaction Type Key] [int] NOT NULL,
[Payment Method Key] [int] NULL,
[WWI Customer Transaction ID] [int] NULL,
[WWI Supplier Transaction ID] [int] NULL,
[WWI Invoice ID] [int] NULL,
[WWI Purchase Order ID] [int] NULL,
[Supplier Invoice Number] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Total Excluding Tax] [decimal] (18, 2) NOT NULL,
[Tax Amount] [decimal] (18, 2) NOT NULL,
[Total Including Tax] [decimal] (18, 2) NOT NULL,
[Outstanding Balance] [decimal] (18, 2) NOT NULL,
[Is Finalized] [bit] NOT NULL,
[Lineage Key] [int] NOT NULL
) ON [PS_Date] ([Date Key])
GO
ALTER TABLE [Fact].[Transaction] ADD CONSTRAINT [PK_Fact_Transaction] PRIMARY KEY NONCLUSTERED  ([Transaction Key], [Date Key]) ON [PS_Date] ([Date Key])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCX_Fact_Transaction] ON [Fact].[Transaction] ON [PS_Date] ([Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Transaction_Bill_To_Customer_Key] ON [Fact].[Transaction] ([Bill To Customer Key]) ON [PS_Date] ([Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Transaction_Customer_Key] ON [Fact].[Transaction] ([Customer Key]) ON [PS_Date] ([Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Transaction_Date_Key] ON [Fact].[Transaction] ([Date Key]) ON [PS_Date] ([Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Transaction_Payment_Method_Key] ON [Fact].[Transaction] ([Payment Method Key]) ON [PS_Date] ([Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Transaction_Supplier_Key] ON [Fact].[Transaction] ([Supplier Key]) ON [PS_Date] ([Date Key])
GO
CREATE NONCLUSTERED INDEX [FK_Fact_Transaction_Transaction_Type_Key] ON [Fact].[Transaction] ([Transaction Type Key]) ON [PS_Date] ([Date Key])
GO
