USE [master]
GO
/****** Object:  Database [Wine_Shop_Balkaran]    Script Date: 08-07-2020 12:50:41 AM ******/
CREATE DATABASE [Wine_Shop_Balkaran]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wine_Shop_Balkaran', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Wine_Shop_Balkaran.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wine_Shop_Balkaran_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Wine_Shop_Balkaran_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wine_Shop_Balkaran].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET  MULTI_USER 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wine_Shop_Balkaran]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 08-07-2020 12:50:41 AM ******/
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
/****** Object:  Table [dbo].[CustomerMasters]    Script Date: 08-07-2020 12:50:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerMasters](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Age] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[RateListMasterID] [int] NULL,
	[WineMasterID] [int] NULL,
 CONSTRAINT [PK_CustomerMasters] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RateListMasters]    Script Date: 08-07-2020 12:50:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RateListMasters](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Price] [decimal](18, 2) NULL,
 CONSTRAINT [PK_RateListMasters] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WineMasters]    Script Date: 08-07-2020 12:50:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WineMasters](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_WineMasters] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200707185107_InitialCreate', N'3.1.5')
GO
SET IDENTITY_INSERT [dbo].[CustomerMasters] ON 

GO
INSERT [dbo].[CustomerMasters] ([ID], [Name], [Age], [Email], [RateListMasterID], [WineMasterID]) VALUES (1, N'Nirmal Singh', N'28', N'singhnirmal128@gmail.com', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[CustomerMasters] OFF
GO
SET IDENTITY_INSERT [dbo].[RateListMasters] ON 

GO
INSERT [dbo].[RateListMasters] ([ID], [Price]) VALUES (1, CAST(500.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[RateListMasters] OFF
GO
SET IDENTITY_INSERT [dbo].[WineMasters] ON 

GO
INSERT [dbo].[WineMasters] ([ID], [Name]) VALUES (1, N'Smiran off')
GO
SET IDENTITY_INSERT [dbo].[WineMasters] OFF
GO
/****** Object:  Index [IX_CustomerMasters_RateListMasterID]    Script Date: 08-07-2020 12:50:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerMasters_RateListMasterID] ON [dbo].[CustomerMasters]
(
	[RateListMasterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerMasters_WineMasterID]    Script Date: 08-07-2020 12:50:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerMasters_WineMasterID] ON [dbo].[CustomerMasters]
(
	[WineMasterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomerMasters]  WITH CHECK ADD  CONSTRAINT [FK_CustomerMasters_RateListMasters_RateListMasterID] FOREIGN KEY([RateListMasterID])
REFERENCES [dbo].[RateListMasters] ([ID])
GO
ALTER TABLE [dbo].[CustomerMasters] CHECK CONSTRAINT [FK_CustomerMasters_RateListMasters_RateListMasterID]
GO
ALTER TABLE [dbo].[CustomerMasters]  WITH CHECK ADD  CONSTRAINT [FK_CustomerMasters_WineMasters_WineMasterID] FOREIGN KEY([WineMasterID])
REFERENCES [dbo].[WineMasters] ([ID])
GO
ALTER TABLE [dbo].[CustomerMasters] CHECK CONSTRAINT [FK_CustomerMasters_WineMasters_WineMasterID]
GO
USE [master]
GO
ALTER DATABASE [Wine_Shop_Balkaran] SET  READ_WRITE 
GO
