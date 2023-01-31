USE [LojaCarro]
GO

/****** Object:  Table [dbo].[Compra]    Script Date: 18/01/2023 20:17:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Compra](
	[ID] [int] NOT NULL,
	[Data] [datetime] NOT NULL,
	[Cliente ID] [varchar](8) NOT NULL,
	[Carro ID] [varchar](17) NOT NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Carro] FOREIGN KEY([Carro ID])
REFERENCES [dbo].[Carro] ([Chassi])
GO

ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Carro]
GO

ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Cliente] FOREIGN KEY([Cliente ID])
REFERENCES [dbo].[Cliente] ([BI])
GO

ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Cliente]
GO

