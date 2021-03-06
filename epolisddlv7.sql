USE [master]
GO
/****** Object:  Database [epolis2]    Script Date: 15/10/2020 14:45:57 ******/
CREATE DATABASE [epolis2]
GO
USE [epolis2]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 15/10/2020 14:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mbroker]    Script Date: 15/10/2020 14:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Mjenisasuransi]    Script Date: 15/10/2020 14:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mjenisasuransi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KODEJENISASURANSI] [nvarchar](10) NULL,
	[JENISASURANSI] [nvarchar](100) NULL,
	[UPDATEDBYID] [INT] NULL,
	[UPDATEDTIME] [datetime2](7)  NULL,
	[CREATEDBYID] [INT] NULL,
	[CREATEDTIME] [datetime2](7)  NULL,
	[ISDELETED] [BIT] ,
	[DELETEDBYID] [INT]  NULL,
	[DELETEDTIME] [datetime2]  NULL,
 CONSTRAINT [PK_Mjenisasuransi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mokupasi]    Script Date: 15/10/2020 14:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mokupasi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KODEOKUPASI] [nvarchar](10) NULL,
	[NAMAOKUPASI] [nvarchar](100) NULL,
	[KELAS1] [decimal](10, 4) NOT NULL,
	[KELAS2] [decimal](10, 4) NOT NULL,
	[RESIKO] [nvarchar](15) NULL,
	[UPDATEDBYID] [INT] NULL,
	[UPDATEDTIME] [datetime2](7)  NULL,
	[CREATEDBYID] [INT] NULL,
	[CREATEDTIME] [datetime2](7)  NULL,
	[ISDELETED] [BIT] ,
	[DELETEDBYID] [INT]  NULL,
	[DELETEDTIME] [datetime2]  NULL,
 CONSTRAINT [PK_Mokupasi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mperluasan]    Script Date: 15/10/2020 14:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mperluasan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[	] [int] NULL,
	[KODEPERLUASAN] [nvarchar](10) NULL,
	[DESKRIPSI] [nvarchar](10) NULL,
	[RATEPERLUASAN] [decimal](10, 4) NOT NULL,
	[RESIKO] [nvarchar](15) NULL,
	[UPDATEDBYID] [INT] NULL,
	[UPDATEDTIME] [datetime2](7)  NULL,
	[CREATEDBYID] [INT] NULL,
	[CREATEDTIME] [datetime2](7)  NULL,
	[ISDELETED] [BIT] ,
	[DELETEDBYID] [INT]  NULL,
	[DELETEDTIME] [datetime2]  NULL,
 CONSTRAINT [PK_Mperluasan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mpertanggungan]    Script Date: 15/10/2020 14:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mpertanggungan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MOKUPASIID] [int] NULL,
	[KODEPERTANGGUNGAN] [nvarchar](10) NULL,
	[DESKRIPSI] [nvarchar](10) NULL,
	[RATEPERTANGGUNGAN] [decimal](10, 4) NOT NULL,
	[RESIKO] [nvarchar](15) NULL,
	[UPDATEDBYID] [INT] NULL,
	[UPDATEDTIME] [datetime2](7)  NULL,
	[CREATEDBYID] [INT] NULL,
	[CREATEDTIME] [datetime2](7)  NULL,
	[ISDELETED] [BIT] ,
	[DELETEDBYID] [INT]  NULL,
	[DELETEDTIME] [datetime2]  NULL,
 CONSTRAINT [PK_Mpertanggungan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mperusahaanasuransi]    Script Date: 15/10/2020 14:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mperusahaanasuransi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KODEPERUSAHAAN] [nvarchar](8) NULL,
	[NAMAPERUSAHAAN] [nvarchar](40) NULL,
	[ALAMAT] [nvarchar](500) NULL,
	[NOTLP] [nvarchar](20) NULL,
	[NOFAX] [nvarchar](20) NULL,
	[CONTACTPERSON] [nvarchar](35) NULL,
	[EMAIL] [nvarchar](35) NULL,
	[UPDATEDBYID] [INT] NULL,
	[UPDATEDTIME] [datetime2](7)  NULL,
	[CREATEDBYID] [INT] NULL,
	[CREATEDTIME] [datetime2](7)  NULL,
	[ISDELETED] [BIT] ,
	[DELETEDBYID] [INT]  NULL,
	[DELETEDTIME] [datetime2]  NULL,
 CONSTRAINT [PK_Mperusahaanasuransi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Msysparam]    Script Date: 15/10/2020 14:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Msysparam](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PARAMCODE] [nvarchar](20) NULL,
	[PARAMNAME] [nvarchar](50) NULL,
	[PARAMVALUE] [nvarchar](100) NULL,
	[PARAMDESC] [nvarchar](100) NULL,
	[ISMASKED] [nvarchar](1) NULL,
	[PARAMGROUP] [nvarchar](50) NULL,
	[ORDERNO] [int] NOT NULL,
	[UPDATEDBYID] [INT] NULL,
	[UPDATEDTIME] [datetime2](7)  NULL,
	[CREATEDBYID] [INT] NULL,
	[CREATEDTIME] [datetime2](7)  NULL,
	[ISDELETED] [BIT] ,
	[DELETEDBYID] [INT]  NULL,
	[DELETEDTIME] [datetime2]  NULL,
	[ISACTIVE] [BIT]  NULL
 CONSTRAINT [PK_Msysparam] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MuserGroup]    Script Date: 15/10/2020 14:45:58 ******/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tkontrakasuransi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[mperusahaanasuransiID] [int] NULL,
	[mjenisasuransiID] [int] NULL,
	[mokupasiID] [int] NULL,
	[STDKELAS1] [decimal](10, 4) NOT NULL,
	[STDKELAS2] [decimal](10, 4) NOT NULL,
	[RESIKO] [nvarchar](15) NULL,
	[TANGGALMULAI] [datetime2](7) NOT NULL,
	[TANGGALSELESAI] [datetime2](7) NOT NULL,
	[UPDATEDBYID] [INT] NULL,
	[UPDATEDTIME] [datetime2](7)  NULL,
	[CREATEDBYID] [INT] NULL,
	[CREATEDTIME] [datetime2](7)  NULL,
	[ISDELETED] [BIT] ,
	[DELETEDBYID] [INT]  NULL,
	[DELETEDTIME] [datetime2]  NULL,
 CONSTRAINT [PK_Tkontrakasuransi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tnasabah]    Script Date: 15/10/2020 14:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tnasabah](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAMA] [nvarchar](10) NULL,
	[NOREGBANK] [nvarchar](20) NULL,
	[NOFASILITAS] [nvarchar](16) NULL,
	[NOREKENING] [nvarchar](10) NULL,
	[ADMINID] [nvarchar](20) NULL,
	[TGLINPUT] [datetime2](7) NOT NULL,
	[TGLOTORISASI] [datetime2](7) NOT NULL,
	[STATUS] [nvarchar](2) NULL,
	[JENISKELAMIN] [nvarchar](1) NULL,
	[TGLLAHIR] [datetime2](7) NOT NULL,
	[TEMPATLAHIR] [nvarchar](30) NULL,
	[NOTLPRUMAH] [nvarchar](20) NULL,
	[NOHP] [nvarchar](20) NULL,
	[CONTACTPERSON] [nvarchar](40) NULL,
	[PEKERJAAN] [nvarchar](20) NULL,
	[KODEAREA] [nvarchar](5) NULL,
	[NOTLPKANTOR] [nvarchar](20) NULL,
	[NOFAX] [nvarchar](20) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[ALAMAT] [nvarchar](500) NULL,
	[NOURUTFASILITAS] [nvarchar](4) NULL,
	[NOBASE] [nvarchar](10) NULL,
	[UPDATEDBYID] [INT] NULL,
	[UPDATEDTIME] [datetime2](7)  NULL,
	[CREATEDBYID] [INT] NULL,
	[CREATEDTIME] [datetime2](7)  NULL,
	[ISDELETED] [BIT] ,
	[DELETEDBYID] [INT]  NULL,
	[DELETEDTIME] [datetime2]  NULL,
 CONSTRAINT [PK_Tnasabah] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tpenutupan]    Script Date: 15/10/2020 14:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tpenutupan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tnasabahID] [int] FOREIGN KEY REFERENCES Tnasabah(ID),
	[JENISPENUTUPAN] [nvarchar](1) NULL,
	[NOREGPENUTUPAN] [nvarchar](20) NULL,
	[ADMINID] [nvarchar](50) NULL,
	[TGLINPUT] [datetime2](7) NOT NULL,
	[TGLOTORISASI] [datetime2](7) NOT NULL,
	[STATUS] [nvarchar](2) NULL,
	[NOSKK] [nvarchar](20) NULL,
	[TGLSKK] [nvarchar](max) NULL,
	[NOPK] [nvarchar](20) NULL,
	[CIF] [nvarchar](20) NULL,
	[ISBROKER] [int] NOT NULL,
	[ISUPDATEPENUTUPANRENEWAL] [int] NOT NULL,
	[UPDATEDBYID] [INT] NULL,
	[UPDATEDTIME] [datetime2](7)  NULL,
	[CREATEDBYID] [INT] NULL,
	[CREATEDTIME] [datetime2](7)  NULL,
	[ISDELETED] [BIT] ,
	[DELETEDBYID] [INT]  NULL,
	[DELETEDTIME] [datetime2]  NULL,
 CONSTRAINT [PK_Tpenutupan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tpenutupandetil]    Script Date: 15/10/2020 14:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tpenutupandetil](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tpenutupanID] [int] FOREIGN KEY REFERENCES Tpenutupan(ID),
	[tkontrakasuransiID] [int] FOREIGN KEY REFERENCES Tkontrakasuransi(ID),
	[NAMATERTANGGUNG] [nvarchar](50) NULL,
	[LOKASIOBJEKTERTANGGUNG] [nvarchar](500) NULL,
	[MATAUANG] [nvarchar](3) NULL,
	[JUMLAHPERTANGGUNGAN] [decimal](10, 4) NOT NULL,
	[TANGGALMULAI] [datetime2](7) NOT NULL,
	[TANGGALAKHIR] [datetime2](7) NOT NULL,
	[UPDATEDBYID] [INT] NULL,
	[UPDATEDTIME] [datetime2](7)  NULL,
	[CREATEDBYID] [INT] NULL,
	[CREATEDTIME] [datetime2](7)  NULL,
	[ISDELETED] [BIT] ,
	[DELETEDBYID] [INT]  NULL,
	[DELETEDTIME] [datetime2]  NULL
	 
 CONSTRAINT [PK_Tpenutupandetil] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
/****** Object:  Table [dbo].[Tperluasan]    Script Date: 15/10/2020 14:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tperluasan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tpenutupandetilID] [int] FOREIGN KEY REFERENCES Tpenutupandetil(ID),
	[KODEPERLUASAN] [nvarchar](10) NULL,
	[DESKRIPSI] [nvarchar](10) NULL,
	[RATEPERLUASAN] [decimal](10, 4) NOT NULL,
	[RESIKO] [nvarchar](15) NULL,
	[NILAIPERLUASAN] [decimal](10, 4) NOT NULL,
	[UPDATEDBYID] [INT] NULL,
	[UPDATEDTIME] [datetime2](7)  NULL,
	[CREATEDBYID] [INT] NULL,
	[CREATEDTIME] [datetime2](7)  NULL,
	[ISDELETED] [BIT] ,
	[DELETEDBYID] [INT]  NULL,
	[DELETEDTIME] [datetime2]  NULL,
 CONSTRAINT [PK_Tperluasan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tpertanggungan]    Script Date: 15/10/2020 14:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tpertanggungan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tpenutupandetilID] [int]FOREIGN KEY REFERENCES Tpenutupandetil(ID),
	[KODEPERTANGGUNGAN] [nvarchar](10) NULL,
	[DESKRIPSI] [nvarchar](10) NULL,
	[RATEPERTANGGUNGAN] [decimal](10, 4) NOT NULL,
	[RESIKO] [nvarchar](15) NULL,
	[NILAIPERTANGGUNGAN] [decimal](10, 4) NOT NULL,
	[UPDATEDBYID] [INT] NULL,
	[UPDATEDTIME] [datetime2](7)  NULL,
	[CREATEDBYID] [INT] NULL,
	[CREATEDTIME] [datetime2](7)  NULL,
	[ISDELETED] [BIT] ,
	[DELETEDBYID] [INT]  NULL,
	[DELETEDTIME] [datetime2]  NULL,
 CONSTRAINT [PK_Tpertanggungan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Mbroker](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KODEBROKER] [nvarchar](8) NULL,
	[NAMABROKER] [nvarchar](40) NULL,
	[ALAMAT] [nvarchar](500) NULL,
	[NOTLP] [nvarchar](20) NULL,
	[NOFAX] [nvarchar](20) NULL,
	[CONTACTPERSON] [nvarchar](35) NULL,
	[EMAIL] [nvarchar](35) NULL,
	[UPDATEDBYID] [INT] NULL,
	[UPDATEDTIME] [datetime2](7)  NULL,
	[CREATEDBYID] [INT] NULL,
	[CREATEDTIME] [datetime2](7)  NULL,
	[ISDELETED] [BIT] ,
	[DELETEDBYID] [INT]  NULL,
	[DELETEDTIME] [datetime2]  NULL,
 CONSTRAINT [PK_MBROKER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Tcounterengine](	
	[COUNTERNAME] [nvarchar](30) NOT NULL,
	[LASTCOUNTER]	[INT]
 CONSTRAINT [PK_[Tcounterengine] PRIMARY KEY CLUSTERED )


	
CREATE TABLE [dbo].[MuserGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[USERGROUPCODE] [nvarchar](20) NULL,
	[USERGROUPNAME] [nvarchar](40) NULL,
	[USERGROUPDESC] [nvarchar](100) NULL,
	[STATUS] [nvarchar](1) NULL,
	[UPDATEDBYID] [INT] NULL,
	[UPDATEDTIME] [datetime2](7)  NULL,
	[CREATEDBYID] [INT] NULL,
	[CREATEDTIME] [datetime2](7)  NULL,
	[ISDELETED] [BIT] ,
	[DELETEDBYID] [INT]  NULL,
	[DELETEDTIME] [datetime2]  NULL,
 CONSTRAINT [PK_MuserGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC)


CREATE TABLE [dbo].[Mmenu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MENUORDERNO] [INT] NULL,
	[MENUGROUP] [nvarchar](40) NULL,
	[MENUGROUPICON] [nvarchar](50) NULL,
	[MENUSUBGROUP] [nvarchar](40) NULL,
	[MENUSUBGROUPICON] [nvarchar](100) NULL,
	
	[MENUNAME] [nvarchar](50) NULL,
	[MENUICON] [nvarchar](50) NULL,
	[MENUPATH] [nvarchar](100) NULL,
	[MENUPARAMNAME] [nvarchar](10) NULL,
	[MENUPARAMVALUE] [nvarchar](30) NULL,
	[MENUDESC] [nvarchar](100) NULL,	
	[UPDATEDBYID] [INT] NULL,	
	[UPDATEDTIME] [datetime2] NULL,
	[ISDELETED] [BIT] NULL,
	[DELETEDBYID] [INT] NULL,
	[DELETEDTIME] [datetime2] NULL,
	[CREATEDTIME] [datetime2]  NULL,
	[CREATEDBYID] [INT] NULL
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC))
	
	

CREATE TABLE [dbo].[Musergroupmenu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MMENUID] [INT] NULL,
	[MUSERGROUPID] [int] NULL,
	
	[UPDATEDBYID] [INT] NULL,	
	[UPDATEDTIME] [datetime2] NULL,
	[ISDELETED] [BIT] NULL,
	[DELETEDBYID] [INT] NULL,
	[DELETEDTIME] [datetime2] NULL,
	[CREATEDTIME] [datetime2]  NULL,
	[CREATEDBYID] [INT] NULL
 CONSTRAINT [PK_Musergroupmenu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC))
	
	
	

CREATE TABLE [dbo].[Muser](
	[ID] [int] IDENTITY(1,1) NOT NULL,	
	[MUSERGROUPID] [int] NULL,
	[USERID] [NVARCHAR] (15) NULL,
	[USERNAME] [NVARCHAR](50) NULL,
	[PASSWORD] [NVARCHAR](70) NULL,
	[USERMAIL] [NVARCHAR](100) NULL,
	[STATUSACTIVE] [BIT] NULL,
	[ISACTIVE] [BIT] NULL,
	[ISLOGIN] [BIT] NULL,
	[LASTONLINE] [DATETIME2] NULL,	
	[UPDATEDBYID] [INT] NULL,	
	[UPDATEDTIME] [datetime2] NULL,
	[ISDELETED] [BIT] NULL,
	[DELETEDBYID] [INT] NULL,
	[DELETEDTIME] [datetime2] NULL,
	[CREATEDTIME] [datetime2]  NULL,
	[CREATEDBYID] [INT] NULL
 CONSTRAINT [PK_Muser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC))
	


======================================================================================================================================================================
/****** Object:  Index [IX_Mbroker_tpenutupanID]    Script Date: 15/10/2020 14:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_Mbroker_tpenutupanID] ON [dbo].[Mbroker]
(
	[tpenutupanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Mperluasan_MOKUPASIID]    Script Date: 15/10/2020 14:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_Mperluasan_MOKUPASIID] ON [dbo].[Mperluasan]
(
	[MOKUPASIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Mpertanggungan_MOKUPASIID]    Script Date: 15/10/2020 14:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_Mpertanggungan_MOKUPASIID] ON [dbo].[Mpertanggungan]
(
	[MOKUPASIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tkontrakasuransi_mjenisasuransiID]    Script Date: 15/10/2020 14:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_Tkontrakasuransi_mjenisasuransiID] ON [dbo].[Tkontrakasuransi]
(
	[mjenisasuransiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tkontrakasuransi_mokupasiID]    Script Date: 15/10/2020 14:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_Tkontrakasuransi_mokupasiID] ON [dbo].[Tkontrakasuransi]
(
	[mokupasiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tkontrakasuransi_mperusahaanasuransiID]    Script Date: 15/10/2020 14:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_Tkontrakasuransi_mperusahaanasuransiID] ON [dbo].[Tkontrakasuransi]
(
	[mperusahaanasuransiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tpenutupan_tnasabahID]    Script Date: 15/10/2020 14:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_Tpenutupan_tnasabahID] ON [dbo].[Tpenutupan]
(
	[tnasabahID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tpenutupandetil_tkontrakasuransiID]    Script Date: 15/10/2020 14:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_Tpenutupandetil_tkontrakasuransiID] ON [dbo].[Tpenutupandetil]
(
	[tkontrakasuransiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tpenutupandetil_tpenutupanID]    Script Date: 15/10/2020 14:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_Tpenutupandetil_tpenutupanID] ON [dbo].[Tpenutupandetil]
(
	[tpenutupanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tperluasan_tpenutupandetilID]    Script Date: 15/10/2020 14:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_Tperluasan_tpenutupandetilID] ON [dbo].[Tperluasan]
(
	[tpenutupandetilID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tpertanggungan_tpenutupandetilID]    Script Date: 15/10/2020 14:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_Tpertanggungan_tpenutupandetilID] ON [dbo].[Tpertanggungan]
(
	[tpenutupandetilID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Mbroker]  WITH CHECK ADD  CONSTRAINT [FK_Mbroker_Tpenutupan_tpenutupanID] FOREIGN KEY([tpenutupanID])
REFERENCES [dbo].[Tpenutupan] ([ID])
GO
ALTER TABLE [dbo].[Mbroker] CHECK CONSTRAINT [FK_Mbroker_Tpenutupan_tpenutupanID]
GO
ALTER TABLE [dbo].[Mperluasan]  WITH CHECK ADD  CONSTRAINT [FK_Mperluasan_Mokupasi_MOKUPASIID] FOREIGN KEY([MOKUPASIID])
REFERENCES [dbo].[Mokupasi] ([ID])
GO
ALTER TABLE [dbo].[Mperluasan] CHECK CONSTRAINT [FK_Mperluasan_Mokupasi_MOKUPASIID]
GO
ALTER TABLE [dbo].[Mpertanggungan]  WITH CHECK ADD  CONSTRAINT [FK_Mpertanggungan_Mokupasi_MOKUPASIID] FOREIGN KEY([MOKUPASIID])
REFERENCES [dbo].[Mokupasi] ([ID])
GO
ALTER TABLE [dbo].[Mpertanggungan] CHECK CONSTRAINT [FK_Mpertanggungan_Mokupasi_MOKUPASIID]
GO
ALTER TABLE [dbo].[Tkontrakasuransi]  WITH CHECK ADD  CONSTRAINT [FK_Tkontrakasuransi_Mjenisasuransi_mjenisasuransiID] FOREIGN KEY([mjenisasuransiID])
REFERENCES [dbo].[Mjenisasuransi] ([ID])
GO
ALTER TABLE [dbo].[Tkontrakasuransi] CHECK CONSTRAINT [FK_Tkontrakasuransi_Mjenisasuransi_mjenisasuransiID]
GO
ALTER TABLE [dbo].[Tkontrakasuransi]  WITH CHECK ADD  CONSTRAINT [FK_Tkontrakasuransi_Mokupasi_mokupasiID] FOREIGN KEY([mokupasiID])
REFERENCES [dbo].[Mokupasi] ([ID])
GO
ALTER TABLE [dbo].[Tkontrakasuransi] CHECK CONSTRAINT [FK_Tkontrakasuransi_Mokupasi_mokupasiID]
GO
ALTER TABLE [dbo].[Tkontrakasuransi]  WITH CHECK ADD  CONSTRAINT [FK_Tkontrakasuransi_Mperusahaanasuransi_mperusahaanasuransiID] FOREIGN KEY([mperusahaanasuransiID])
REFERENCES [dbo].[Mperusahaanasuransi] ([ID])
GO
ALTER TABLE [dbo].[Tkontrakasuransi] CHECK CONSTRAINT [FK_Tkontrakasuransi_Mperusahaanasuransi_mperusahaanasuransiID]
GO
ALTER TABLE [dbo].[Tpenutupan]  WITH CHECK ADD  CONSTRAINT [FK_Tpenutupan_Tnasabah_tnasabahID] FOREIGN KEY([tnasabahID])
REFERENCES [dbo].[Tnasabah] ([ID])
GO
ALTER TABLE [dbo].[Tpenutupan] CHECK CONSTRAINT [FK_Tpenutupan_Tnasabah_tnasabahID]
GO
ALTER TABLE [dbo].[Tpenutupandetil]  WITH CHECK ADD  CONSTRAINT [FK_Tpenutupandetil_Tkontrakasuransi_tkontrakasuransiID] FOREIGN KEY([tkontrakasuransiID])
REFERENCES [dbo].[Tkontrakasuransi] ([ID])
GO
ALTER TABLE [dbo].[Tpenutupandetil] CHECK CONSTRAINT [FK_Tpenutupandetil_Tkontrakasuransi_tkontrakasuransiID]
GO
ALTER TABLE [dbo].[Tpenutupandetil]  WITH CHECK ADD  CONSTRAINT [FK_Tpenutupandetil_Tpenutupan_tpenutupanID] FOREIGN KEY([tpenutupanID])
REFERENCES [dbo].[Tpenutupan] ([ID])
GO
ALTER TABLE [dbo].[Tpenutupandetil] CHECK CONSTRAINT [FK_Tpenutupandetil_Tpenutupan_tpenutupanID]
GO
ALTER TABLE [dbo].[Tperluasan]  WITH CHECK ADD  CONSTRAINT [FK_Tperluasan_Tpenutupandetil_tpenutupandetilID] FOREIGN KEY([tpenutupandetilID])
REFERENCES [dbo].[Tpenutupandetil] ([ID])
GO
ALTER TABLE [dbo].[Tperluasan] CHECK CONSTRAINT [FK_Tperluasan_Tpenutupandetil_tpenutupandetilID]
GO
ALTER TABLE [dbo].[Tpertanggungan]  WITH CHECK ADD  CONSTRAINT [FK_Tpertanggungan_Tpenutupandetil_tpenutupandetilID] FOREIGN KEY([tpenutupandetilID])
REFERENCES [dbo].[Tpenutupandetil] ([ID])
GO
ALTER TABLE [dbo].[Tpertanggungan] CHECK CONSTRAINT [FK_Tpertanggungan_Tpenutupandetil_tpenutupandetilID]
GO
USE [master]
GO
ALTER DATABASE [epolis2] SET  READ_WRITE 
GO
