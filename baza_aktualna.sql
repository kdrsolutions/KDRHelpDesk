USE [HelpDesk8]
GO
/****** Object:  Table [dbo].[ZgloszeniaStatusy]    Script Date: 11/16/2015 17:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZgloszeniaStatusy](
	[IdStatusu] [int] NOT NULL,
	[Nazwa] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Statusy_1] PRIMARY KEY CLUSTERED 
(
	[IdStatusu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ZgloszeniaStatusy] ([IdStatusu], [Nazwa]) VALUES (1, N'Oczekujący')
INSERT [dbo].[ZgloszeniaStatusy] ([IdStatusu], [Nazwa]) VALUES (2, N'Zamknięty')
INSERT [dbo].[ZgloszeniaStatusy] ([IdStatusu], [Nazwa]) VALUES (3, N'W trakcie')
/****** Object:  Table [dbo].[Zgloszenia]    Script Date: 11/16/2015 17:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zgloszenia](
	[IDZgloszenia] [int] NOT NULL,
	[Temat] [nvarchar](500) NOT NULL,
	[Opis] [nvarchar](2000) NOT NULL,
	[IdStatusu] [int] NOT NULL,
	[IdTematu] [int] NOT NULL,
	[DataZgloszenia] [datetime] NOT NULL,
	[DataZakonczenia] [datetime] NOT NULL,
 CONSTRAINT [PK_Statusy] PRIMARY KEY CLUSTERED 
(
	[IDZgloszenia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uzytkownicy]    Script Date: 11/16/2015 17:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Uzytkownicy](
	[IdUzytkownika] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[HashHaslo] [varchar](50) NOT NULL,
	[Imie] [nvarchar](50) NOT NULL,
	[Nazwisko] [nvarchar](50) NOT NULL,
	[EMail] [nvarchar](200) NOT NULL,
	[NrTelefonu] [varchar](50) NOT NULL,
	[Firma] [nvarchar](200) NOT NULL,
	[Opis] [nvarchar](500) NOT NULL,
	[Adres] [nvarchar](500) NOT NULL,
	[Administrator] [bit] NOT NULL,
	[Specjalista] [bit] NOT NULL,
	[Aktywny] [bit] NOT NULL,
 CONSTRAINT [PK_Uzytkownicy] PRIMARY KEY CLUSTERED 
(
	[IdUzytkownika] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TematySpecjalisci]    Script Date: 11/16/2015 17:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TematySpecjalisci](
	[IdTematu] [int] NOT NULL,
	[IdUzytkownika] [int] NOT NULL,
 CONSTRAINT [PK_TematySpecjalisci] PRIMARY KEY CLUSTERED 
(
	[IdTematu] ASC,
	[IdUzytkownika] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tematy]    Script Date: 11/16/2015 17:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tematy](
	[IdTypu] [int] NOT NULL,
	[Nazwa] [nvarchar](500) NOT NULL,
	[Aktywny] [bit] NOT NULL,
 CONSTRAINT [PK_ZgloszeniaTematy] PRIMARY KEY CLUSTERED 
(
	[IdTypu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statusy]    Script Date: 11/16/2015 17:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statusy](
	[IdStatusu] [int] NOT NULL,
	[Nazwa] [nchar](25) NOT NULL,
 CONSTRAINT [PK_Statusy_2] PRIMARY KEY CLUSTERED 
(
	[IdStatusu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/16/2015 17:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IdRoli] [int] NOT NULL,
	[Nazwa] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Przypomnienia]    Script Date: 11/16/2015 17:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Przypomnienia](
	[IdPrzypomnienia] [int] IDENTITY(1,1) NOT NULL,
	[TypOkresu] [varchar](20) NOT NULL,
	[DataNastWywol] [datetime] NOT NULL,
	[DlugoscOkresu] [int] NOT NULL,
	[Opis] [nvarchar](500) NOT NULL,
	[KodBledu] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Przypomnienia] PRIMARY KEY CLUSTERED 
(
	[IdPrzypomnienia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Korespondencja]    Script Date: 11/16/2015 17:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Korespondencja](
	[IdKorespondencji] [int] NOT NULL,
	[IdZgloszenia] [int] NOT NULL,
	[IdUzytkownika] [int] NOT NULL,
	[Tresc] [nvarchar](2000) NOT NULL,
	[Data] [datetime] NOT NULL,
 CONSTRAINT [PK_Korespondencja] PRIMARY KEY CLUSTERED 
(
	[IdKorespondencji] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Korespondencja_Data]    Script Date: 11/16/2015 17:09:04 ******/
ALTER TABLE [dbo].[Korespondencja] ADD  CONSTRAINT [DF_Korespondencja_Data]  DEFAULT (getdate()) FOR [Data]
GO
/****** Object:  Default [DF_Uzytkownicy_Administrator]    Script Date: 11/16/2015 17:09:04 ******/
ALTER TABLE [dbo].[Uzytkownicy] ADD  CONSTRAINT [DF_Uzytkownicy_Administrator]  DEFAULT ((0)) FOR [Administrator]
GO
/****** Object:  Default [DF_Uzytkownicy_Specjalista]    Script Date: 11/16/2015 17:09:04 ******/
ALTER TABLE [dbo].[Uzytkownicy] ADD  CONSTRAINT [DF_Uzytkownicy_Specjalista]  DEFAULT ((0)) FOR [Specjalista]
GO
/****** Object:  Default [DF_Uzytkownicy_Aktywny]    Script Date: 11/16/2015 17:09:04 ******/
ALTER TABLE [dbo].[Uzytkownicy] ADD  CONSTRAINT [DF_Uzytkownicy_Aktywny]  DEFAULT ((1)) FOR [Aktywny]
GO
