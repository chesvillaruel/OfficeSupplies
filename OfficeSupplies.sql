CREATE DATABASE OfficeSupplies
USE OfficeSupplies

CREATE DATABASE UKBANK
GO

select * from [dbo].[P1-OfficeSupplies Dashboard_LATEST]
select * from [dbo].[Binder]
select * from [dbo].[Desk]
select * from [dbo].[Pen]
select * from [dbo].[Pencil]
select * from [dbo].[PenSet]


ALTER TABLE [dbo].[P1-OfficeSupplies Dashboard_LATEST] ADD TotalSales AS ([Units] *[Unit Price])
ALTER TABLE [dbo].[P1-OfficeSupplies Dashboard_LATEST] ADD Years AS (Year([OrderDate]))
ALTER TABLE [dbo].[P1-OfficeSupplies Dashboard_LATEST] ADD Months AS (Month([OrderDate]))

ALTER TABLE [dbo].[P1-OfficeSupplies Dashboard_LATEST] ADD TotalSales AS ([Units] * [Unit Price])
ALTER TABLE [dbo].[P1-OfficeSupplies Dashboard_LATEST] ALTER COLUMN [Units] Float
ALTER TABLE [dbo].[P1-OfficeSupplies Dashboard_LATEST] ALTER COLUMN [Unit Price] Float

select TotalSales from [dbo].[P1-OfficeSupplies Dashboard_LATEST] 