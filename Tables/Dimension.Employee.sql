CREATE TABLE [Dimension].[Employee]
(
[Employee Key] [int] NOT NULL,
[WWI Employee ID] [int] NOT NULL,
[Employee] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Preferred Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Is Salesperson] [bit] NOT NULL,
[Photo] [varbinary] (max) NULL,
[Valid From] [datetime2] NOT NULL,
[Valid To] [datetime2] NOT NULL,
[Lineage Key] [int] NOT NULL
) ON [USERDATA]
GO
ALTER TABLE [Dimension].[Employee] ADD CONSTRAINT [PK_Dimension_Employee] PRIMARY KEY CLUSTERED  ([Employee Key]) ON [USERDATA]
GO
CREATE NONCLUSTERED INDEX [IX_Dimension_Employee_WWIEmployeeID] ON [Dimension].[Employee] ([WWI Employee ID], [Valid From], [Valid To]) ON [USERDATA]
GO
