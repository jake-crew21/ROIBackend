USE [master]
GO
/****** Object:  Database [ROI_HR_Management_DB]    Script Date: 10/05/2022 11:46:36 AM ******/
CREATE DATABASE [ROI_HR_Management_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ROI_HR_Management_DB', FILENAME = N'C:\Users\jakes\ROI_HR_Management_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ROI_HR_Management_DB_log', FILENAME = N'C:\Users\jakes\ROI_HR_Management_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ROI_HR_Management_DB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ROI_HR_Management_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ROI_HR_Management_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET  MULTI_USER 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ROI_HR_Management_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ROI_HR_Management_DB] SET QUERY_STORE = OFF
GO
USE [ROI_HR_Management_DB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [ROI_HR_Management_DB]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 10/05/2022 11:46:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [tinyint] IDENTITY(0,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 10/05/2022 11:46:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](20) NULL,
	[DepartmentID] [tinyint] NOT NULL,
	[Street] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](10) NULL,
	[Zip] [nvarchar](10) NULL,
	[Country] [nvarchar](70) NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DepartmentID], [Name]) VALUES (0, N'General')
INSERT [dbo].[Department] ([DepartmentID], [Name]) VALUES (1, N'Information Communications Technology')
INSERT [dbo].[Department] ([DepartmentID], [Name]) VALUES (2, N'Finance')
INSERT [dbo].[Department] ([DepartmentID], [Name]) VALUES (3, N'Marketing')
INSERT [dbo].[Department] ([DepartmentID], [Name]) VALUES (4, N'Human Resources')
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([PersonID], [Name], [Phone], [DepartmentID], [Street], [City], [State], [Zip], [Country]) VALUES (1, N'John 
Smith', N'02 9988 2211', 1, N'1 Code Lane', N'Javaville', N'NSW', N'0100', N'Australia')
INSERT [dbo].[Person] ([PersonID], [Name], [Phone], [DepartmentID], [Street], [City], [State], [Zip], [Country]) VALUES (2, N'Sue 
White', N'03 8899 2255', 2, N'16 Bit Way', N'Byte Cove', N'QLD', N'1101', N'Australia')
INSERT [dbo].[Person] ([PersonID], [Name], [Phone], [DepartmentID], [Street], [City], [State], [Zip], [Country]) VALUES (3, N'Bob 
O’Bits', N'05 7788 2255', 3, N'8 Silicon Road', N'Cloud Hills', N'VIC', N'1001', N'Australia')
INSERT [dbo].[Person] ([PersonID], [Name], [Phone], [DepartmentID], [Street], [City], [State], [Zip], [Country]) VALUES (4, N'Mary 
Blue', N'06 4455 9988', 2, N'4 Processor
Boulevard', N'Appletson', N'NT', N'1010', N'Australia')
INSERT [dbo].[Person] ([PersonID], [Name], [Phone], [DepartmentID], [Street], [City], [State], [Zip], [Country]) VALUES (5, N'Mick 
Green', N'02 9988 1122', 3, N'700
Bandwidth
Street', N'Bufferland', N'NSW', N'0110', N'Australia')
SET IDENTITY_INSERT [dbo].[Person] OFF
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_Department]
GO
USE [master]
GO
ALTER DATABASE [ROI_HR_Management_DB] SET  READ_WRITE 
GO
