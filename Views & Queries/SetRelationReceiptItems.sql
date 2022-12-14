USE [OfficeCenter]
GO


DROP TABLE [dbo].[ReceiptItems]
GO

/****** Object:  Table [dbo].[ReceiptItems]    Script Date: 01/07/2012 01:36:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiptItems](
	[ReceiptItemsID] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptID] [int] NOT NULL,
	[Rcode] [int] NOT NULL,
	[RAmount] [int] NOT NULL,
	[RPrice] [money] NOT NULL,
	[RDescription] [nvarchar](150) NULL,
	[RPriceSum] [money] NOT NULL,
 CONSTRAINT [PK_ReceiptItems] PRIMARY KEY CLUSTERED 
(
	[ReceiptItemsID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_ReceiptItems_ReceiptItems]    Script Date: 01/07/2012 01:36:59 ******/
ALTER TABLE [dbo].[ReceiptItems]  WITH NOCHECK ADD  CONSTRAINT [FK_ReceiptItems_ReceiptItems] FOREIGN KEY([ReceiptID])
REFERENCES [dbo].[Receipt] ([ReceiptID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ReceiptItems] NOCHECK CONSTRAINT [FK_ReceiptItems_ReceiptItems]
GO
