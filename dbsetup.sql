USE [master]
GO

/****** Object:  Database [openwitprod]    Script Date: 6/17/2021 9:56:14 PM ******/
CREATE DATABASE [openwitprod]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'openwitprod', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\openwitprod.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'openwitprod_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\openwitprod_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [openwitprod].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [openwitprod] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [openwitprod] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [openwitprod] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [openwitprod] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [openwitprod] SET ARITHABORT OFF 
GO

ALTER DATABASE [openwitprod] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [openwitprod] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [openwitprod] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [openwitprod] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [openwitprod] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [openwitprod] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [openwitprod] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [openwitprod] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [openwitprod] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [openwitprod] SET  DISABLE_BROKER 
GO

ALTER DATABASE [openwitprod] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [openwitprod] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [openwitprod] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [openwitprod] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [openwitprod] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [openwitprod] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [openwitprod] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [openwitprod] SET RECOVERY FULL 
GO

ALTER DATABASE [openwitprod] SET  MULTI_USER 
GO

ALTER DATABASE [openwitprod] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [openwitprod] SET DB_CHAINING OFF 
GO

ALTER DATABASE [openwitprod] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [openwitprod] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [openwitprod] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [openwitprod] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [openwitprod] SET QUERY_STORE = OFF
GO

ALTER DATABASE [openwitprod] SET  READ_WRITE 
GO

