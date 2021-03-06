USE [HelpDeak]
GO
/****** Object:  Table [dbo].[Uzytkownicy]    Script Date: 11/02/2015 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uzytkownicy](
	[IdUzytkownika] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Haslo] [nvarchar](50) NOT NULL,
	[Imie] [nvarchar](50) NOT NULL,
	[Nazwisko] [nvarchar](50) NOT NULL,
	[EMail] [nvarchar](200) NOT NULL,
	[NrTelefonu] [nvarchar](50) NOT NULL,
	[Firma] [nvarchar](200) NULL,
 CONSTRAINT [PK_Uzytkownicy] PRIMARY KEY CLUSTERED 
(
	[IdUzytkownika] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsterkiTypy]    Script Date: 11/02/2015 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsterkiTypy](
	[IdTypu] [int] NOT NULL,
	[Nazwa] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UsterkiTypy] PRIMARY KEY CLUSTERED 
(
	[IdTypu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[UsterkiTypy] ([IdTypu], [Nazwa]) VALUES (1, N'Hydraulik')
INSERT [dbo].[UsterkiTypy] ([IdTypu], [Nazwa]) VALUES (2, N'Kominiarz')
/****** Object:  Table [dbo].[UsterkiStatusy]    Script Date: 11/02/2015 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsterkiStatusy](
	[IdStatusu] [int] NOT NULL,
	[Nazwa] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Statusy_1] PRIMARY KEY CLUSTERED 
(
	[IdStatusu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[UsterkiStatusy] ([IdStatusu], [Nazwa]) VALUES (1, N'Oczekujący')
INSERT [dbo].[UsterkiStatusy] ([IdStatusu], [Nazwa]) VALUES (2, N'Zamknięty')
INSERT [dbo].[UsterkiStatusy] ([IdStatusu], [Nazwa]) VALUES (3, N'W trakcie')
/****** Object:  Table [dbo].[Usterki]    Script Date: 11/02/2015 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usterki](
	[IDUsterki] [int] NOT NULL,
	[Tytuł] [nvarchar](500) NOT NULL,
	[Opis] [nvarchar](max) NOT NULL,
	[IdStatusu] [int] NOT NULL,
 CONSTRAINT [PK_Statusy] PRIMARY KEY CLUSTERED 
(
	[IDUsterki] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
