USE [master]
GO
/****** Object:  Database [apiRestNavarroPabloDB]    Script Date: 6/6/2020 15:24:29 ******/
CREATE DATABASE [apiRestNavarroPabloDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'apiRestNavarroPabloDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\apiRestNavarroPabloDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'apiRestNavarroPabloDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\apiRestNavarroPabloDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [apiRestNavarroPabloDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET RECOVERY FULL 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET  MULTI_USER 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'apiRestNavarroPabloDB', N'ON'
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET QUERY_STORE = OFF
GO
USE [apiRestNavarroPabloDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/6/2020 15:24:29 ******/
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
/****** Object:  Table [dbo].[Alumnos]    Script Date: 6/6/2020 15:24:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumnos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dni] [int] NOT NULL,
	[nombre] [nvarchar](max) NOT NULL,
	[apellido] [nvarchar](max) NOT NULL,
	[curso] [nvarchar](max) NULL,
	[año] [int] NOT NULL,
 CONSTRAINT [PK_Alumnos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200606163523_BD', N'3.1.4')
GO
SET IDENTITY_INSERT [dbo].[Alumnos] ON 
GO
INSERT [dbo].[Alumnos] ([id], [dni], [nombre], [apellido], [curso], [año]) VALUES (1, 1234455, N'Fernando', N'Lopez', N'Programacion III', 2020)
GO
INSERT [dbo].[Alumnos] ([id], [dni], [nombre], [apellido], [curso], [año]) VALUES (2, 31051191, N'Pablo', N'Navarro', N'Programacion V', 2020)
GO
INSERT [dbo].[Alumnos] ([id], [dni], [nombre], [apellido], [curso], [año]) VALUES (3, 29282654, N'Lola', N'Lopez', N'Matemética II', 2020)
GO
INSERT [dbo].[Alumnos] ([id], [dni], [nombre], [apellido], [curso], [año]) VALUES (4, 29282654, N'Emmanuel', N'Sanatori', N'Ingenieria de software II', 2020)
GO
INSERT [dbo].[Alumnos] ([id], [dni], [nombre], [apellido], [curso], [año]) VALUES (5, 9876325, N'Leandro', N'Lopez', N'Base de Datos II', 2020)
GO
SET IDENTITY_INSERT [dbo].[Alumnos] OFF
GO
USE [master]
GO
ALTER DATABASE [apiRestNavarroPabloDB] SET  READ_WRITE 
GO
