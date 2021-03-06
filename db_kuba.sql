USE [Helpdesk9]
GO
/****** Object:  Table [dbo].[Korespondencja]    Script Date: 29.11.2015 22:06:45 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ocena]    Script Date: 29.11.2015 22:06:45 ******/
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
/****** Object:  Table [dbo].[Przypomnienia]    Script Date: 29.11.2015 22:06:45 ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 29.11.2015 22:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IdRoli] [int] NOT NULL,
	[Nazwa] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Specjaliści]    Script Date: 29.11.2015 22:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specjaliści](
	[IdSpecjalisty] [int] IDENTITY(1,1) NOT NULL,
	[Imie] [nvarchar](50) NOT NULL,
	[Nazwisko] [nvarchar](50) NOT NULL,
	[Specjalność] [int] NOT NULL,
	[IDUzytkownika] [int] NOT NULL,
 CONSTRAINT [PK_Specjaliści] PRIMARY KEY CLUSTERED 
(
	[IdSpecjalisty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Specjalizacje]    Script Date: 29.11.2015 22:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Specjalizacje](
	[id] [int] NOT NULL,
	[Specjalizacja] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Statusy]    Script Date: 29.11.2015 22:06:45 ******/
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
/****** Object:  Table [dbo].[Tematy]    Script Date: 29.11.2015 22:06:45 ******/
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
/****** Object:  Table [dbo].[TematySpecjalisci]    Script Date: 29.11.2015 22:06:45 ******/
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
/****** Object:  Table [dbo].[typy_okresu]    Script Date: 29.11.2015 22:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[typy_okresu](
	[id] [int] NOT NULL,
	[okres] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Uzytkownicy]    Script Date: 29.11.2015 22:06:45 ******/
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
	[Administrator] [bit] NOT NULL,
	[Specjalista] [bit] NOT NULL,
	[Aktywny] [bit] NOT NULL,
 CONSTRAINT [PK_Uzytkownicy] PRIMARY KEY CLUSTERED 
(
	[IdUzytkownika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Zgloszenia]    Script Date: 29.11.2015 22:06:45 ******/
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
	[DataZakonczenia] [datetime] NOT NULL,
	[IDUzytkownika] [int] NOT NULL,
	[IDSpecjalisty] [int] NOT NULL,
 CONSTRAINT [PK_Statusy] PRIMARY KEY CLUSTERED 
(
	[IDZgloszenia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ZgloszeniaStatusy]    Script Date: 29.11.2015 22:06:45 ******/
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
INSERT [dbo].[Korespondencja] ([IdKorespondencji], [IdZgloszenia], [IdUzytkownika], [Tresc], [Data]) VALUES (1, 2, 3, N'iluahylifas', CAST(0x00008ECC00000000 AS DateTime))
INSERT [dbo].[Ocena] ([IdOceny], [IdZgloszenia], [Ocena]) VALUES (1, N'1', N'2         ')
INSERT [dbo].[Specjalizacje] ([id], [Specjalizacja]) VALUES (1, N'Kominiarz')
INSERT [dbo].[Specjalizacje] ([id], [Specjalizacja]) VALUES (2, N'Administrator')
INSERT [dbo].[Specjalizacje] ([id], [Specjalizacja]) VALUES (3, N'Dozorca')
INSERT [dbo].[typy_okresu] ([id], [okres]) VALUES (1, N'Godzina')
INSERT [dbo].[typy_okresu] ([id], [okres]) VALUES (2, N'Tydzień')
INSERT [dbo].[typy_okresu] ([id], [okres]) VALUES (3, N'Miesiąc')
INSERT [dbo].[typy_okresu] ([id], [okres]) VALUES (4, N'Rok')
SET IDENTITY_INSERT [dbo].[Uzytkownicy] ON 

INSERT [dbo].[Uzytkownicy] ([IdUzytkownika], [Login], [HashHaslo], [Imie], [Nazwisko], [EMail], [NrTelefonu], [Firma], [Opis], [Adres], [Administrator], [Specjalista], [Aktywny]) VALUES (2, N'test', 0xA94A8FE5CCB19BA61C4C0873D391E987982FBBD3, N'Dawid', N'Nowak', N'cip@wp.pl', N'123456789', N'Firma', N'Opis', N'Adres', 1, 1, 1)
INSERT [dbo].[Uzytkownicy] ([IdUzytkownika], [Login], [HashHaslo], [Imie], [Nazwisko], [EMail], [NrTelefonu], [Firma], [Opis], [Adres], [Administrator], [Specjalista], [Aktywny]) VALUES (3, N'test1', 0xA94A8FE5CCB19BA61C4C0873D391E987982FBBD3, N'Kuba', N'Nowak', N'cip@wp.pl', N'123456789', N'Firma', N'Opis', N'Adres', 1, 1, 1)
INSERT [dbo].[Uzytkownicy] ([IdUzytkownika], [Login], [HashHaslo], [Imie], [Nazwisko], [EMail], [NrTelefonu], [Firma], [Opis], [Adres], [Administrator], [Specjalista], [Aktywny]) VALUES (4, N'test2', 0xA94A8FE5CCB19BA61C4C0873D391E987982FBBD3, N'Dawid', N'Nowak', N'cip@wp.pl', N'123456789', N'Firma', N'Opis', N'Adres', 1, 1, 1)
INSERT [dbo].[Uzytkownicy] ([IdUzytkownika], [Login], [HashHaslo], [Imie], [Nazwisko], [EMail], [NrTelefonu], [Firma], [Opis], [Adres], [Administrator], [Specjalista], [Aktywny]) VALUES (5, N'test3', 0xA94A8FE5CCB19BA61C4C0873D391E987982FBBD3, N'Dawid', N'Nowak', N'cip@wp.pl', N'123456789', N'Firma', N'Opis', N'Adres', 1, 1, 1)
INSERT [dbo].[Uzytkownicy] ([IdUzytkownika], [Login], [HashHaslo], [Imie], [Nazwisko], [EMail], [NrTelefonu], [Firma], [Opis], [Adres], [Administrator], [Specjalista], [Aktywny]) VALUES (6, N'test4', 0xA94A8FE5CCB19BA61C4C0873D391E987982FBBD3, N'Dawid', N'Nowak', N'cip@wp.pl', N'123456789', N'Firma', N'Opis', N'Adres', 1, 1, 1)
INSERT [dbo].[Uzytkownicy] ([IdUzytkownika], [Login], [HashHaslo], [Imie], [Nazwisko], [EMail], [NrTelefonu], [Firma], [Opis], [Adres], [Administrator], [Specjalista], [Aktywny]) VALUES (7, N'test5', 0xA94A8FE5CCB19BA61C4C0873D391E987982FBBD3, N'Dawid', N'Nowak', N'cip@wp.pl', N'123456789', N'Firma', N'Opis', N'Adres', 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Uzytkownicy] OFF
SET IDENTITY_INSERT [dbo].[Zgloszenia] ON 

INSERT [dbo].[Zgloszenia] ([IDZgloszenia], [Temat], [Opis], [IdStatusu], [IdTematu], [DataZgloszenia], [DataZakonczenia], [IDUzytkownika], [IDSpecjalisty]) VALUES (6, N'Zanieczyszczona klatka schodowa', N'W imieniu moim i sąsiadów proszę o posprzątanie klatki schodowej.', 1, 0, CAST(0x0000A55F0168C9F9 AS DateTime), CAST(0x0000000000000000 AS DateTime), 2, 3)
SET IDENTITY_INSERT [dbo].[Zgloszenia] OFF
INSERT [dbo].[ZgloszeniaStatusy] ([IdStatusu], [Nazwa]) VALUES (1, N'Oczekujący')
INSERT [dbo].[ZgloszeniaStatusy] ([IdStatusu], [Nazwa]) VALUES (2, N'Zamknięty')
INSERT [dbo].[ZgloszeniaStatusy] ([IdStatusu], [Nazwa]) VALUES (3, N'W trakcie')
ALTER TABLE [dbo].[Korespondencja] ADD  CONSTRAINT [DF_Korespondencja_Data]  DEFAULT (getdate()) FOR [Data]
GO
ALTER TABLE [dbo].[Uzytkownicy] ADD  CONSTRAINT [DF_Uzytkownicy_Administrator]  DEFAULT ((0)) FOR [Administrator]
GO
ALTER TABLE [dbo].[Uzytkownicy] ADD  CONSTRAINT [DF_Uzytkownicy_Specjalista]  DEFAULT ((0)) FOR [Specjalista]
GO
ALTER TABLE [dbo].[Uzytkownicy] ADD  CONSTRAINT [DF_Uzytkownicy_Aktywny]  DEFAULT ((1)) FOR [Aktywny]
GO
ALTER TABLE [dbo].[Zgloszenia] ADD  CONSTRAINT [DF_Zgloszenia_IdTematu]  DEFAULT ((0)) FOR [IdTematu]
GO
ALTER TABLE [dbo].[Zgloszenia] ADD  CONSTRAINT [DF_Zgloszenia_DataZgloszenia]  DEFAULT (getdate()) FOR [DataZgloszenia]
GO
ALTER TABLE [dbo].[Zgloszenia] ADD  CONSTRAINT [DF_Zgloszenia_DataZakonczenia]  DEFAULT (getdate()-getdate()) FOR [DataZakonczenia]
GO
ALTER TABLE [dbo].[Zgloszenia] ADD  CONSTRAINT [DF_Zgloszenia_IDUzytkownika]  DEFAULT ((0)) FOR [IDUzytkownika]
GO
