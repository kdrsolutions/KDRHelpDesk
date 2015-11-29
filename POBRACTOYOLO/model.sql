GO
CREATE TABLE [dbo].[Ocena] (
    [IdOceny]      INT           NOT NULL,
    [IdZgloszenia] NVARCHAR (50) NOT NULL,
    [Ocena]        NCHAR (10)    NOT NULL
);
GO
CREATE TABLE [dbo].[Role] (
    [IdRoli] INT           NOT NULL,
    [Nazwa]  NVARCHAR (50) NOT NULL
);

GO
CREATE TABLE [dbo].[Specjaliści] (
    [IdSpecjalisty] INT           NOT NULL,
    [Imie]          NVARCHAR (50) NOT NULL,
    [Nazwisko]      NVARCHAR (50) NOT NULL,
    [Specjalność]   NVARCHAR (50) NOT NULL
);

GO
CREATE TABLE [dbo].[Statusy] (
    [IdStatusu] INT        NOT NULL,
    [Nazwa]     NCHAR (25) NOT NULL
);

GO
CREATE TABLE [dbo].[Tematy] (
    [IdTypu]  INT            NOT NULL,
    [Nazwa]   NVARCHAR (500) NOT NULL,
    [Aktywny] BIT            NOT NULL
);

GO
CREATE TABLE [dbo].[TematySpecjalisci] (
    [IdTematu]      INT NOT NULL,
    [IdUzytkownika] INT NOT NULL
);

GO
CREATE TABLE [dbo].[Uzytkownicy] (
    [IdUzytkownika] INT             IDENTITY (1, 1) NOT NULL,
    [Login]         NVARCHAR (50)   NOT NULL,
    [HashHaslo]     VARBINARY (MAX) NOT NULL,
    [Imie]          NVARCHAR (50)   NOT NULL,
    [Nazwisko]      NVARCHAR (50)   NOT NULL,
    [EMail]         NVARCHAR (200)  NOT NULL,
    [NrTelefonu]    VARCHAR (50)    NOT NULL,
    [Firma]         NVARCHAR (200)  NOT NULL,
    [Opis]          NVARCHAR (500)  NOT NULL,
    [Adres]         NVARCHAR (500)  NOT NULL,
    [Administrator] BIT             NOT NULL,
    [Specjalista]   BIT             NOT NULL,
    [Aktywny]       BIT             NOT NULL
);

GO
CREATE TABLE [dbo].[Zgloszenia] (
    [IDZgloszenia]    INT             IDENTITY (1, 1) NOT NULL,
    [Temat]           NVARCHAR (500)  NOT NULL,
    [Opis]            NVARCHAR (2000) NOT NULL,
    [IdStatusu]       INT             NOT NULL,
    [IdTematu]        INT             NOT NULL,
    [DataZgloszenia]  DATETIME        NOT NULL,
    [DataZakonczenia] DATETIME        NULL,
    [IDUzytkownika]   INT             NOT NULL,
    [IDSpecjalisty]   INT             NULL
);

GO
CREATE TABLE [dbo].[ZgloszeniaStatusy] (
    [IdStatusu] INT            NOT NULL,
    [Nazwa]     NVARCHAR (100) NOT NULL
);

GO
ALTER TABLE [dbo].[Korespondencja]
    ADD CONSTRAINT [DF_Korespondencja_Data] DEFAULT (getdate()) FOR [Data];

GO
ALTER TABLE [dbo].[Uzytkownicy]
    ADD CONSTRAINT [DF_Uzytkownicy_Administrator] DEFAULT ((0)) FOR [Administrator];

GO
ALTER TABLE [dbo].[Uzytkownicy]
    ADD CONSTRAINT [DF_Uzytkownicy_Aktywny] DEFAULT ((1)) FOR [Aktywny];

GO
ALTER TABLE [dbo].[Uzytkownicy]
    ADD CONSTRAINT [DF_Uzytkownicy_Specjalista] DEFAULT ((0)) FOR [Specjalista];

GO
ALTER TABLE [dbo].[Zgloszenia]
    ADD CONSTRAINT [DF_Zgloszenia_IDUzytkownika] DEFAULT ((0)) FOR [IDUzytkownika];

GO
ALTER TABLE [dbo].[Korespondencja]
    ADD CONSTRAINT [PK_Korespondencja] PRIMARY KEY CLUSTERED ([IdKorespondencji] ASC);

GO
ALTER TABLE [dbo].[Ocena]
    ADD CONSTRAINT [PK_Ocena] PRIMARY KEY CLUSTERED ([IdOceny] ASC);

GO
ALTER TABLE [dbo].[Przypomnienia]
    ADD CONSTRAINT [PK_Przypomnienia] PRIMARY KEY CLUSTERED ([IdPrzypomnienia] ASC);

GO
ALTER TABLE [dbo].[Specjaliści]
    ADD CONSTRAINT [PK_Specjaliści] PRIMARY KEY CLUSTERED ([IdSpecjalisty] ASC);

GO
ALTER TABLE [dbo].[Zgloszenia]
    ADD CONSTRAINT [PK_Statusy] PRIMARY KEY CLUSTERED ([IDZgloszenia] ASC);

GO
ALTER TABLE [dbo].[ZgloszeniaStatusy]
    ADD CONSTRAINT [PK_Statusy_1] PRIMARY KEY CLUSTERED ([IdStatusu] ASC);

GO
ALTER TABLE [dbo].[Statusy]
    ADD CONSTRAINT [PK_Statusy_2] PRIMARY KEY CLUSTERED ([IdStatusu] ASC);

GO
ALTER TABLE [dbo].[TematySpecjalisci]
    ADD CONSTRAINT [PK_TematySpecjalisci] PRIMARY KEY CLUSTERED ([IdTematu] ASC, [IdUzytkownika] ASC);

GO
ALTER TABLE [dbo].[Uzytkownicy]
    ADD CONSTRAINT [PK_Uzytkownicy] PRIMARY KEY CLUSTERED ([IdUzytkownika] ASC);

GO
ALTER TABLE [dbo].[Tematy]
    ADD CONSTRAINT [PK_ZgloszeniaTematy] PRIMARY KEY CLUSTERED ([IdTypu] ASC);

GO
