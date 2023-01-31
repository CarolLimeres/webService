USE [LojaCarro]
GO

/****** Object:  Table [dbo].[Cliente]    Script Date: 18/01/2023 20:17:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cliente](
	[BI] [varchar](8) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Contacto] [varchar](9) NOT NULL,
	[Email] [varchar](50) NULL,
	[Endereço] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[BI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

