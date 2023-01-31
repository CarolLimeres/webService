USE [LojaCarro]
GO

/****** Object:  Table [dbo].[Carro]    Script Date: 18/01/2023 20:14:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Carro](
	[Chassi] [varchar](17) NOT NULL,
	[Modelo ID] [int] NOT NULL,
	[Cor] [varchar](50) NOT NULL,
	[Preço] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Carro] PRIMARY KEY CLUSTERED 
(
	[Chassi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Carro]  WITH CHECK ADD  CONSTRAINT [FK_Carro_Modelo] FOREIGN KEY([Modelo ID])
REFERENCES [dbo].[Modelo] ([ID])
GO

ALTER TABLE [dbo].[Carro] CHECK CONSTRAINT [FK_Carro_Modelo]
GO

