USE [Banka]
GO
/****** Object:  Table [dbo].[Adresler]    Script Date: 20.10.2022 20:16:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adresler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MusteriId] [int] NOT NULL,
	[AdresDetay] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Adresler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bilancolar]    Script Date: 20.10.2022 20:16:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bilancolar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MusteriId] [int] NOT NULL,
	[Tarih] [datetime] NOT NULL,
	[Tutar] [money] NOT NULL,
 CONSTRAINT [PK_Bilancolar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GercekMusteriler]    Script Date: 20.10.2022 20:16:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GercekMusteriler](
	[MusteriId] [int] NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
	[Soyad] [nvarchar](50) NOT NULL,
	[TcKimlikNo] [char](11) NOT NULL,
 CONSTRAINT [PK_GercekMusteriler] PRIMARY KEY CLUSTERED 
(
	[MusteriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_GercekMusteriler_TcKimlikNo] UNIQUE NONCLUSTERED 
(
	[TcKimlikNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kanallar]    Script Date: 20.10.2022 20:16:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kanallar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Kanallar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 20.10.2022 20:16:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[id] [int] NOT NULL,
	[MusteriNo] [char](10) NOT NULL,
	[KanalId] [int] NOT NULL,
 CONSTRAINT [PK_Musteriler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_Musteriler_MusteriNo] UNIQUE NONCLUSTERED 
(
	[MusteriNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sendikalar]    Script Date: 20.10.2022 20:16:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sendikalar](
	[MusteriId] [int] NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Sendikalar] PRIMARY KEY CLUSTERED 
(
	[MusteriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicariFaaliyetler]    Script Date: 20.10.2022 20:16:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicariFaaliyetler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GercekMusteriId] [int] NOT NULL,
	[BaslangicTarihi] [datetime] NOT NULL,
 CONSTRAINT [PK_TicariFaaliyetler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_TicariFaaliyetler_GercekMusteriId] UNIQUE NONCLUSTERED 
(
	[GercekMusteriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TuzelMusteriler]    Script Date: 20.10.2022 20:16:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TuzelMusteriler](
	[MusteriId] [int] NOT NULL,
	[Unvan] [varchar](50) NOT NULL,
	[VergiNo] [char](10) NOT NULL,
 CONSTRAINT [PK_TuzelMusteriler] PRIMARY KEY CLUSTERED 
(
	[MusteriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Adresler]  WITH CHECK ADD  CONSTRAINT [FK_Adresler_Musteriler] FOREIGN KEY([MusteriId])
REFERENCES [dbo].[Musteriler] ([id])
GO
ALTER TABLE [dbo].[Adresler] CHECK CONSTRAINT [FK_Adresler_Musteriler]
GO
ALTER TABLE [dbo].[Bilancolar]  WITH CHECK ADD  CONSTRAINT [FK_Bilancolar_Musteriler] FOREIGN KEY([MusteriId])
REFERENCES [dbo].[Musteriler] ([id])
GO
ALTER TABLE [dbo].[Bilancolar] CHECK CONSTRAINT [FK_Bilancolar_Musteriler]
GO
ALTER TABLE [dbo].[GercekMusteriler]  WITH CHECK ADD  CONSTRAINT [FK_GercekMusteriler_Musteriler] FOREIGN KEY([MusteriId])
REFERENCES [dbo].[Musteriler] ([id])
GO
ALTER TABLE [dbo].[GercekMusteriler] CHECK CONSTRAINT [FK_GercekMusteriler_Musteriler]
GO
ALTER TABLE [dbo].[Musteriler]  WITH CHECK ADD  CONSTRAINT [FK_Musteriler_Kanallar] FOREIGN KEY([KanalId])
REFERENCES [dbo].[Kanallar] ([Id])
GO
ALTER TABLE [dbo].[Musteriler] CHECK CONSTRAINT [FK_Musteriler_Kanallar]
GO
ALTER TABLE [dbo].[Musteriler]  WITH CHECK ADD  CONSTRAINT [FK_Musteriler_Sendikalar] FOREIGN KEY([id])
REFERENCES [dbo].[Sendikalar] ([MusteriId])
GO
ALTER TABLE [dbo].[Musteriler] CHECK CONSTRAINT [FK_Musteriler_Sendikalar]
GO
ALTER TABLE [dbo].[TicariFaaliyetler]  WITH CHECK ADD  CONSTRAINT [FK_TicariFaaliyetler_GercekMusteriler] FOREIGN KEY([GercekMusteriId])
REFERENCES [dbo].[GercekMusteriler] ([MusteriId])
GO
ALTER TABLE [dbo].[TicariFaaliyetler] CHECK CONSTRAINT [FK_TicariFaaliyetler_GercekMusteriler]
GO
ALTER TABLE [dbo].[TuzelMusteriler]  WITH CHECK ADD  CONSTRAINT [FK_TuzelMusteriler_Musteriler] FOREIGN KEY([MusteriId])
REFERENCES [dbo].[Musteriler] ([id])
GO
ALTER TABLE [dbo].[TuzelMusteriler] CHECK CONSTRAINT [FK_TuzelMusteriler_Musteriler]
GO
