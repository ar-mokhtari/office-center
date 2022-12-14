USE [OfficeCenter]
GO
/****** Object:  Table [dbo].[ReceiptFinancial]    Script Date: 11/26/2011 01:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiptFinancial](
	[ReceiptFinancialID] [int] NOT NULL,
	[ReceiptFinancialDate] [nvarchar](8) NOT NULL,
	[ReceiptID] [int] NOT NULL,
	[ReceiptFinancialType] [tinyint] NOT NULL,
	[PayType] [tinyint] NOT NULL,
	[UsanceDate] [nvarchar](8) NOT NULL,
	[Amount] [money] NOT NULL,
 CONSTRAINT [PK_ReceiptFinancial] PRIMARY KEY CLUSTERED 
(
	[ReceiptFinancialID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
