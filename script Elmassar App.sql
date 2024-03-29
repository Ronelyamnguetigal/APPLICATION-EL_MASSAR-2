USE [Almassar_app]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 17/02/2022 20:30:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[code_categorie] [int] IDENTITY(1,1) NOT NULL,
	[descritption] [varchar](50) NOT NULL,
	[tarifaire] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code_categorie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chambre]    Script Date: 17/02/2022 20:30:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chambre](
	[Num_chambre] [int] IDENTITY(1,1) NOT NULL,
	[telephone_chambre] [varchar](50) NOT NULL,
	[code_categories] [int] NOT NULL,
	[Num_hotels] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Num_chambre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[classes]    Script Date: 17/02/2022 20:30:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classes](
	[Nbre_etoiles] [int] IDENTITY(1,1) NOT NULL,
	[caracteristique] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Nbre_etoiles] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clients]    Script Date: 17/02/2022 20:30:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients](
	[code_client] [int] IDENTITY(1,1) NOT NULL,
	[nom] [varchar](50) NOT NULL,
	[prenom] [varchar](50) NOT NULL,
	[adresse] [varchar](50) NOT NULL,
	[ville] [varchar](50) NOT NULL,
	[code_postal] [varchar](50) NOT NULL,
	[pays] [varchar](50) NOT NULL,
	[telephone] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consommations]    Script Date: 17/02/2022 20:30:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consommations](
	[Num_consommation] [int] IDENTITY(1,1) NOT NULL,
	[date_consommation] [date] NULL,
	[heure_consommation] [varchar](50) NOT NULL,
	[code_client] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Num_consommation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotels]    Script Date: 17/02/2022 20:30:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotels](
	[Num_hotel] [int] IDENTITY(1,1) NOT NULL,
	[nom_hotel] [varchar](50) NOT NULL,
	[adresse_hotel] [varchar](50) NOT NULL,
	[code_postal] [varchar](50) NOT NULL,
	[contact_hotel] [varchar](50) NOT NULL,
	[nbre_etoile] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Num_hotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[offre]    Script Date: 17/02/2022 20:30:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[offre](
	[code_prestations] [int] NOT NULL,
	[Num_hotels] [int] NOT NULL,
	[prix_prestation] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prestations]    Script Date: 17/02/2022 20:30:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prestations](
	[code_prestation] [int] IDENTITY(1,1) NOT NULL,
	[Designation_Prestation] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code_prestation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservation]    Script Date: 17/02/2022 20:30:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservation](
	[id_reservation] [int] IDENTITY(1,1) NOT NULL,
	[Date_debut] [date] NULL,
	[date_fin] [date] NULL,
	[datePayeArrhes] [date] NULL,
	[MontantArrhes] [varchar](50) NOT NULL,
	[Num_chambres] [int] NOT NULL,
	[code_clients] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_reservation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[chambre]  WITH CHECK ADD  CONSTRAINT [code_categoriefk] FOREIGN KEY([code_categories])
REFERENCES [dbo].[categories] ([code_categorie])
GO
ALTER TABLE [dbo].[chambre] CHECK CONSTRAINT [code_categoriefk]
GO
ALTER TABLE [dbo].[chambre]  WITH CHECK ADD  CONSTRAINT [Num_hotelfk] FOREIGN KEY([Num_hotels])
REFERENCES [dbo].[hotels] ([Num_hotel])
GO
ALTER TABLE [dbo].[chambre] CHECK CONSTRAINT [Num_hotelfk]
GO
ALTER TABLE [dbo].[consommations]  WITH CHECK ADD  CONSTRAINT [clientfk] FOREIGN KEY([code_client])
REFERENCES [dbo].[clients] ([code_client])
GO
ALTER TABLE [dbo].[consommations] CHECK CONSTRAINT [clientfk]
GO
ALTER TABLE [dbo].[hotels]  WITH CHECK ADD  CONSTRAINT [classefk] FOREIGN KEY([nbre_etoile])
REFERENCES [dbo].[classes] ([Nbre_etoiles])
GO
ALTER TABLE [dbo].[hotels] CHECK CONSTRAINT [classefk]
GO
ALTER TABLE [dbo].[offre]  WITH CHECK ADD  CONSTRAINT [code_prestationsfk] FOREIGN KEY([code_prestations])
REFERENCES [dbo].[prestations] ([code_prestation])
GO
ALTER TABLE [dbo].[offre] CHECK CONSTRAINT [code_prestationsfk]
GO
ALTER TABLE [dbo].[offre]  WITH CHECK ADD  CONSTRAINT [Num_hotelsfk] FOREIGN KEY([Num_hotels])
REFERENCES [dbo].[hotels] ([Num_hotel])
GO
ALTER TABLE [dbo].[offre] CHECK CONSTRAINT [Num_hotelsfk]
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD  CONSTRAINT [code_clientfk] FOREIGN KEY([code_clients])
REFERENCES [dbo].[clients] ([code_client])
GO
ALTER TABLE [dbo].[reservation] CHECK CONSTRAINT [code_clientfk]
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD  CONSTRAINT [Num_chambrefk] FOREIGN KEY([Num_chambres])
REFERENCES [dbo].[chambre] ([Num_chambre])
GO
ALTER TABLE [dbo].[reservation] CHECK CONSTRAINT [Num_chambrefk]
GO
