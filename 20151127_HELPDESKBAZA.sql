USE [Helpdesk9]
GO
/****** Object:  Table [dbo].[Korespondencja]    Script Date: 2015-11-27 17:15:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Korespondencja](
	[IdKorespondencji] [int] NOT NULL,
	[IdZgloszenia] [int] NOT NULL,
	[IdUzytkownika] [int] NOT NULL,
	[Tresc] [nvarchar](2000) NOT NULL,
	[Data] [datetime] NOT NULL CONSTRAINT [DF_Korespondencja_Data]  DEFAULT (getdate()),
 CONSTRAINT [PK_Korespondencja] PRIMARY KEY CLUSTERED 
(
	[IdKorespondencji] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ocena]    Script Date: 2015-11-27 17:15:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ocena](
	[IdOceny] [int] NOT NULL,
	[IdZgloszenia] [nvarchar](50) NOT NULL,
	[Ocena] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Ocena] PRIMARY KEY CLUSTERED 
(
	[IdOceny] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Przypomnienia]    Script Date: 2015-11-27 17:15:25 ******/
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
	[IdUzytkownika] [int] NULL,
 CONSTRAINT [PK_Przypomnienia] PRIMARY KEY CLUSTERED 
(
	[IdPrzypomnienia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 2015-11-27 17:15:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IdRoli] [int] NOT NULL,
	[Nazwa] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Specjaliści]    Script Date: 2015-11-27 17:15:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specjaliści](
	[IdSpecjalisty] [int] NOT NULL,
	[Imie] [nvarchar](50) NOT NULL,
	[Nazwisko] [nvarchar](50) NOT NULL,
	[Specjalność] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Specjaliści] PRIMARY KEY CLUSTERED 
(
	[IdSpecjalisty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statusy]    Script Date: 2015-11-27 17:15:25 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tematy]    Script Date: 2015-11-27 17:15:25 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TematySpecjalisci]    Script Date: 2015-11-27 17:15:25 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Uzytkownicy]    Script Date: 2015-11-27 17:15:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Uzytkownicy](
	[IdUzytkownika] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[HashHaslo] [varbinary](max) NOT NULL,
	[Imie] [nvarchar](50) NOT NULL,
	[Nazwisko] [nvarchar](50) NOT NULL,
	[EMail] [nvarchar](200) NOT NULL,
	[NrTelefonu] [varchar](50) NOT NULL,
	[Firma] [nvarchar](200) NOT NULL,
	[Opis] [nvarchar](500) NOT NULL,
	[Adres] [nvarchar](500) NOT NULL,
	[Administrator] [bit] NOT NULL CONSTRAINT [DF_Uzytkownicy_Administrator]  DEFAULT ((0)),
	[Specjalista] [bit] NOT NULL CONSTRAINT [DF_Uzytkownicy_Specjalista]  DEFAULT ((0)),
	[Aktywny] [bit] NOT NULL CONSTRAINT [DF_Uzytkownicy_Aktywny]  DEFAULT ((1)),
 CONSTRAINT [PK_Uzytkownicy] PRIMARY KEY CLUSTERED 
(
	[IdUzytkownika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Zgloszenia]    Script Date: 2015-11-27 17:15:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zgloszenia](
	[IDZgloszenia] [int] IDENTITY(1,1) NOT NULL,
	[Temat] [nvarchar](500) NOT NULL,
	[Opis] [nvarchar](2000) NOT NULL,
	[IdStatusu] [int] NOT NULL,
	[IdTematu] [int] NOT NULL,
	[DataZgloszenia] [datetime] NOT NULL,
	[DataZakonczenia] [datetime] NULL,
	[IDUzytkownika] [int] NOT NULL CONSTRAINT [DF_Zgloszenia_IDUzytkownika]  DEFAULT ((0)),
	[IDSpecjalisty] [int] NULL,
 CONSTRAINT [PK_Statusy] PRIMARY KEY CLUSTERED 
(
	[IDZgloszenia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ZgloszeniaStatusy]    Script Date: 2015-11-27 17:15:25 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Korespondencja] ([IdKorespondencji], [IdZgloszenia], [IdUzytkownika], [Tresc], [Data]) VALUES (1, 2, 3, N'iluahylifas', CAST(N'2000-02-02 00:00:00.000' AS DateTime))
INSERT [dbo].[Ocena] ([IdOceny], [IdZgloszenia], [Ocena]) VALUES (1, N'2', N'2         ')
INSERT [dbo].[Ocena] ([IdOceny], [IdZgloszenia], [Ocena]) VALUES (2, N'3', N'2         ')
INSERT [dbo].[Ocena] ([IdOceny], [IdZgloszenia], [Ocena]) VALUES (3, N'3', N'3         ')
INSERT [dbo].[Ocena] ([IdOceny], [IdZgloszenia], [Ocena]) VALUES (4, N'4', N'4         ')
INSERT [dbo].[Ocena] ([IdOceny], [IdZgloszenia], [Ocena]) VALUES (5, N'5', N'5         ')
SET IDENTITY_INSERT [dbo].[Przypomnienia] ON 

INSERT [dbo].[Przypomnienia] ([IdPrzypomnienia], [TypOkresu], [DataNastWywol], [DlugoscOkresu], [Opis], [KodBledu], [IdUzytkownika]) VALUES (1, N'3', CAST(N'2014-04-02 00:00:00.000' AS DateTime), 10, N'opis', N'14', 2)
INSERT [dbo].[Przypomnienia] ([IdPrzypomnienia], [TypOkresu], [DataNastWywol], [DlugoscOkresu], [Opis], [KodBledu], [IdUzytkownika]) VALUES (2, N'4', CAST(N'2014-05-12 00:00:00.000' AS DateTime), 14, N'opis', N'29', 2)
SET IDENTITY_INSERT [dbo].[Przypomnienia] OFF
INSERT [dbo].[Specjaliści] ([IdSpecjalisty], [Imie], [Nazwisko], [Specjalność]) VALUES (1, N'Bogdan', N'Allach', N'Pogotowie Gazowe')
INSERT [dbo].[Specjaliści] ([IdSpecjalisty], [Imie], [Nazwisko], [Specjalność]) VALUES (2, N'Amadeusz', N'Akbar', N'Hydraulik')
INSERT [dbo].[Tematy] ([IdTypu], [Nazwa], [Aktywny]) VALUES (0, N'Inne', 1)
INSERT [dbo].[Tematy] ([IdTypu], [Nazwa], [Aktywny]) VALUES (1, N'Brak wody', 1)
INSERT [dbo].[Tematy] ([IdTypu], [Nazwa], [Aktywny]) VALUES (2, N'Brak prądu', 1)
INSERT [dbo].[Tematy] ([IdTypu], [Nazwa], [Aktywny]) VALUES (3, N'Brak gazu', 1)
SET IDENTITY_INSERT [dbo].[Uzytkownicy] ON 

INSERT [dbo].[Uzytkownicy] ([IdUzytkownika], [Login], [HashHaslo], [Imie], [Nazwisko], [EMail], [NrTelefonu], [Firma], [Opis], [Adres], [Administrator], [Specjalista], [Aktywny]) VALUES (2, N'test', 0xA94A8FE5CCB19BA61C4C0873D391E987982FBBD3, N'Dawid', N'Nowak', N'cip@wp.pl', N'123456789', N'Firma', N'Opis', N'Adres', 1, 1, 1)
INSERT [dbo].[Uzytkownicy] ([IdUzytkownika], [Login], [HashHaslo], [Imie], [Nazwisko], [EMail], [NrTelefonu], [Firma], [Opis], [Adres], [Administrator], [Specjalista], [Aktywny]) VALUES (3, N'test2', 0xA94A8FE5CCB19BA61C4C0873D391E987982FBBD3, N'Krzysztof', N'Nowak', N'cip@wp.pl', N'123456789', N'Firma', N'Opis', N'Adres', 1, 1, 1)
INSERT [dbo].[Uzytkownicy] ([IdUzytkownika], [Login], [HashHaslo], [Imie], [Nazwisko], [EMail], [NrTelefonu], [Firma], [Opis], [Adres], [Administrator], [Specjalista], [Aktywny]) VALUES (4, N'test3', 0xA94A8FE5CCB19BA61C4C0873D391E987982FBBD3, N'Jarek', N'Nowak', N'cip@wp.pl', N'123456789', N'Firma', N'Opis', N'Adres', 1, 1, 1)
INSERT [dbo].[Uzytkownicy] ([IdUzytkownika], [Login], [HashHaslo], [Imie], [Nazwisko], [EMail], [NrTelefonu], [Firma], [Opis], [Adres], [Administrator], [Specjalista], [Aktywny]) VALUES (5, N'test4', 0xA94A8FE5CCB19BA61C4C0873D391E987982FBBD3, N'Janusz', N'Nowak', N'cip@wp.pl', N'123456789', N'Firma', N'Opis', N'Adres', 1, 1, 1)
INSERT [dbo].[Uzytkownicy] ([IdUzytkownika], [Login], [HashHaslo], [Imie], [Nazwisko], [EMail], [NrTelefonu], [Firma], [Opis], [Adres], [Administrator], [Specjalista], [Aktywny]) VALUES (6, N'test5', 0xA94A8FE5CCB19BA61C4C0873D391E987982FBBD3, N'Marek', N'Nowak', N'cip@wp.pl', N'123456789', N'Firma', N'Opis', N'Adres', 1, 1, 1)
INSERT [dbo].[Uzytkownicy] ([IdUzytkownika], [Login], [HashHaslo], [Imie], [Nazwisko], [EMail], [NrTelefonu], [Firma], [Opis], [Adres], [Administrator], [Specjalista], [Aktywny]) VALUES (7, N'test6', 0xA94A8FE5CCB19BA61C4C0873D391E987982FBBD3, N'Paweł', N'Nowak', N'cip@wp.pl', N'123456789', N'Firma', N'Opis', N'Adres', 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Uzytkownicy] OFF
SET IDENTITY_INSERT [dbo].[Zgloszenia] ON 

INSERT [dbo].[Zgloszenia] ([IDZgloszenia], [Temat], [Opis], [IdStatusu], [IdTematu], [DataZgloszenia], [DataZakonczenia], [IDUzytkownika], [IDSpecjalisty]) VALUES (1, N'Temat', N'Opis', 2, 5, CAST(N'2014-12-03 00:00:00.000' AS DateTime), CAST(N'2015-04-06 00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[Zgloszenia] ([IDZgloszenia], [Temat], [Opis], [IdStatusu], [IdTematu], [DataZgloszenia], [DataZakonczenia], [IDUzytkownika], [IDSpecjalisty]) VALUES (2, N'awaria wody', N'za duzo wody', 1, 12, CAST(N'2015-12-24 00:00:00.000' AS DateTime), NULL, 2, 2)
INSERT [dbo].[Zgloszenia] ([IDZgloszenia], [Temat], [Opis], [IdStatusu], [IdTematu], [DataZgloszenia], [DataZakonczenia], [IDUzytkownika], [IDSpecjalisty]) VALUES (3, N'awaria elktrowni', N'za malo pradu', 2, 15, CAST(N'2014-02-14 00:00:00.000' AS DateTime), NULL, 2, 3)
INSERT [dbo].[Zgloszenia] ([IDZgloszenia], [Temat], [Opis], [IdStatusu], [IdTematu], [DataZgloszenia], [DataZakonczenia], [IDUzytkownika], [IDSpecjalisty]) VALUES (5, N'awaria nana', N'nana', 1, 2, CAST(N'2013-02-10 00:00:00.000' AS DateTime), NULL, 2, 4)
INSERT [dbo].[Zgloszenia] ([IDZgloszenia], [Temat], [Opis], [IdStatusu], [IdTematu], [DataZgloszenia], [DataZakonczenia], [IDUzytkownika], [IDSpecjalisty]) VALUES (6, N'awaria nana', N'nana', 1, 2, CAST(N'2013-02-10 00:00:00.000' AS DateTime), NULL, 2, 5)
INSERT [dbo].[Zgloszenia] ([IDZgloszenia], [Temat], [Opis], [IdStatusu], [IdTematu], [DataZgloszenia], [DataZakonczenia], [IDUzytkownika], [IDSpecjalisty]) VALUES (8, N'5', N'yt', 1, 2, CAST(N'2015-11-27 15:35:27.260' AS DateTime), NULL, 2, NULL)
INSERT [dbo].[Zgloszenia] ([IDZgloszenia], [Temat], [Opis], [IdStatusu], [IdTematu], [DataZgloszenia], [DataZakonczenia], [IDUzytkownika], [IDSpecjalisty]) VALUES (9, N'2', N'za malo pradu', 1, 2, CAST(N'2015-11-27 15:35:58.230' AS DateTime), NULL, 2, NULL)
INSERT [dbo].[Zgloszenia] ([IDZgloszenia], [Temat], [Opis], [IdStatusu], [IdTematu], [DataZgloszenia], [DataZakonczenia], [IDUzytkownika], [IDSpecjalisty]) VALUES (10, N'2', N'za malo pradu', 1, 2, CAST(N'2015-11-27 15:40:12.880' AS DateTime), NULL, 2, NULL)
INSERT [dbo].[Zgloszenia] ([IDZgloszenia], [Temat], [Opis], [IdStatusu], [IdTematu], [DataZgloszenia], [DataZakonczenia], [IDUzytkownika], [IDSpecjalisty]) VALUES (11, N'2', N'za malo pradu', 1, 2, CAST(N'2015-11-27 15:40:39.747' AS DateTime), NULL, 2, NULL)
INSERT [dbo].[Zgloszenia] ([IDZgloszenia], [Temat], [Opis], [IdStatusu], [IdTematu], [DataZgloszenia], [DataZakonczenia], [IDUzytkownika], [IDSpecjalisty]) VALUES (12, N'4', N'rwrw', 1, 1, CAST(N'2015-11-27 15:45:55.750' AS DateTime), NULL, 2, NULL)
INSERT [dbo].[Zgloszenia] ([IDZgloszenia], [Temat], [Opis], [IdStatusu], [IdTematu], [DataZgloszenia], [DataZakonczenia], [IDUzytkownika], [IDSpecjalisty]) VALUES (13, N'5', N'gg', 1, 1, CAST(N'2015-11-27 15:49:31.740' AS DateTime), NULL, 2, NULL)
INSERT [dbo].[Zgloszenia] ([IDZgloszenia], [Temat], [Opis], [IdStatusu], [IdTematu], [DataZgloszenia], [DataZakonczenia], [IDUzytkownika], [IDSpecjalisty]) VALUES (15, N'xxxx', N'jj', 1, 2, CAST(N'2015-11-27 15:52:25.477' AS DateTime), NULL, 2, NULL)
INSERT [dbo].[Zgloszenia] ([IDZgloszenia], [Temat], [Opis], [IdStatusu], [IdTematu], [DataZgloszenia], [DataZakonczenia], [IDUzytkownika], [IDSpecjalisty]) VALUES (16, N't', N't', 1, 1, CAST(N'2015-11-27 16:04:29.307' AS DateTime), NULL, 2, NULL)
INSERT [dbo].[Zgloszenia] ([IDZgloszenia], [Temat], [Opis], [IdStatusu], [IdTematu], [DataZgloszenia], [DataZakonczenia], [IDUzytkownika], [IDSpecjalisty]) VALUES (17, N'LOOOOOOOOOOOOL', N'OPIIIIIIIIIIIISSSSSSSS', 1, 0, CAST(N'2015-11-27 16:45:25.107' AS DateTime), NULL, 2, NULL)
INSERT [dbo].[Zgloszenia] ([IDZgloszenia], [Temat], [Opis], [IdStatusu], [IdTematu], [DataZgloszenia], [DataZakonczenia], [IDUzytkownika], [IDSpecjalisty]) VALUES (18, N'bo tak', N'cedcedc', 1, 2, CAST(N'2015-11-27 17:08:38.693' AS DateTime), NULL, 2, NULL)
SET IDENTITY_INSERT [dbo].[Zgloszenia] OFF
INSERT [dbo].[ZgloszeniaStatusy] ([IdStatusu], [Nazwa]) VALUES (1, N'Oczekujący')
INSERT [dbo].[ZgloszeniaStatusy] ([IdStatusu], [Nazwa]) VALUES (2, N'Zamknięty')
INSERT [dbo].[ZgloszeniaStatusy] ([IdStatusu], [Nazwa]) VALUES (3, N'W trakcie')
