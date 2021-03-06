USE [master]
GO
/****** Object:  Database [UPPart2]    Script Date: 4/5/2019 11:43:28 PM ******/
CREATE DATABASE [UPPart2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UPPart2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\UPPart2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UPPart2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\UPPart2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [UPPart2] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UPPart2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UPPart2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UPPart2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UPPart2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UPPart2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UPPart2] SET ARITHABORT OFF 
GO
ALTER DATABASE [UPPart2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UPPart2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UPPart2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UPPart2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UPPart2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UPPart2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UPPart2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UPPart2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UPPart2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UPPart2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UPPart2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UPPart2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UPPart2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UPPart2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UPPart2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UPPart2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UPPart2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UPPart2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UPPart2] SET  MULTI_USER 
GO
ALTER DATABASE [UPPart2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UPPart2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UPPart2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UPPart2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UPPart2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UPPart2] SET QUERY_STORE = OFF
GO
USE [UPPart2]
GO
/****** Object:  Table [dbo].[Calendar]    Script Date: 4/5/2019 11:43:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](150) NOT NULL,
	[Day] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[Year] [int] NOT NULL,
 CONSTRAINT [PK_Calendar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TreeView]    Script Date: 4/5/2019 11:43:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TreeView](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Parent] [int] NULL,
	[URL] [varchar](255) NULL,
	[PicturePath] [varchar](255) NULL,
 CONSTRAINT [PK_TreeView] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Calendar] ON 

INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year]) VALUES (3, N'xxxx', 12, 3, 2019)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year]) VALUES (5, N'yyy', 25, 5, 2019)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year]) VALUES (6, N'zzzz', 12, 4, 2019)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year]) VALUES (13, N'', 1, 1, 2014)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year]) VALUES (14, N'', 1, 1, 2014)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year]) VALUES (15, N'', 1, 1, 2014)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year]) VALUES (16, N'', 1, 1, 2014)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year]) VALUES (17, N'', 6, 6, 2018)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year]) VALUES (18, N'', 8, 3, 2015)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year]) VALUES (19, N'', 31, 12, 2020)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year]) VALUES (20, N'', 31, 12, 2020)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year]) VALUES (21, N'', 31, 12, 2020)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year]) VALUES (22, N'', 31, 12, 2020)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year]) VALUES (23, N'', 31, 12, 2020)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year]) VALUES (24, N'MAx', 14, 3, 2017)
SET IDENTITY_INSERT [dbo].[Calendar] OFF
SET IDENTITY_INSERT [dbo].[TreeView] ON 

INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (4, N'Level 1x', NULL, NULL, NULL)
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (5, N'Level 1y', NULL, NULL, NULL)
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (6, N'Level 1z', NULL, NULL, NULL)
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (7, N'Level11x', 4, NULL, NULL)
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (8, N'Level 11y', 4, NULL, NULL)
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (9, N'49650843_371589333671027_1070678498705670144_o.jpg', NULL, NULL, N'Upload/bb0a6dc8-d9be-4d5f-9701-59ab5206f3ca.jpg')
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (10, N'49650843_371589333671027_1070678498705670144_o.jpg', NULL, NULL, N'Upload/fe82c56a-c336-494b-a549-4de7778a82d1.jpg')
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (11, N'49650843_371589333671027_1070678498705670144_o.jpg', NULL, NULL, N'Upload/f86f49e7-f55c-40df-a5e8-6c1cdfcfd071.jpg')
SET IDENTITY_INSERT [dbo].[TreeView] OFF
/****** Object:  StoredProcedure [dbo].[spCalendar]    Script Date: 4/5/2019 11:43:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCalendar] 
	@Day int,
	@Month int,
	@Year int
AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT	ID, Title
	FROM	Calendar
	WHERE	(Day = @Day) AND (Month = @Month) AND (Year = @Year)   
END
GO
/****** Object:  StoredProcedure [dbo].[spCalendarByID]    Script Date: 4/5/2019 11:43:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[spCalendarByID]
	@ID int

AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT	ID, Title, Day, Month, Year
	FROM	Calendar
	WHERE	(ID = @ID)
	   
END
GO
/****** Object:  StoredProcedure [dbo].[spCalendarInsert]    Script Date: 4/5/2019 11:43:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCalendarInsert]
	@ID int =NULL,
	@Title varchar(50),
	@Day int,
	@Month int,
	@Year int

AS
BEGIN
	IF @ID IS NULL
		BEGIN
			INSERT INTO	Calendar(Title, Day,Month,Year)
			VALUES		(@Title,@Day,@Month,@Year)
		END
	ELSE
		BEGIN
			UPDATE Calendar 
			SET 
			Title	= @Title,
			Day		= @Day,
			Month	= @Month,
			Year    = @Year
			WHERE ID = @ID
		END
END
GO
/****** Object:  StoredProcedure [dbo].[spTreeViewInsertedFile]    Script Date: 4/5/2019 11:43:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spTreeViewInsertedFile]
	@Name varchar(50),
	@PicturePath varchar(255)
AS
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO TreeView(Name,PicturePath)
	VALUES  (@Name,@PicturePath)
END
GO
USE [master]
GO
ALTER DATABASE [UPPart2] SET  READ_WRITE 
GO
