USE [master]
GO

/****** Object:  Database [HelpDeak]    Script Date: 11/02/2015 17:15:10 ******/
CREATE DATABASE [HelpDeak] ON  PRIMARY 
( NAME = N'HelpDeak', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\HelpDeak.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HelpDeak_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\HelpDeak_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [HelpDeak] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HelpDeak].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [HelpDeak] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [HelpDeak] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [HelpDeak] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [HelpDeak] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [HelpDeak] SET ARITHABORT OFF 
GO

ALTER DATABASE [HelpDeak] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [HelpDeak] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [HelpDeak] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [HelpDeak] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [HelpDeak] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [HelpDeak] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [HelpDeak] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [HelpDeak] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [HelpDeak] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [HelpDeak] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [HelpDeak] SET  DISABLE_BROKER 
GO

ALTER DATABASE [HelpDeak] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [HelpDeak] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [HelpDeak] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [HelpDeak] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [HelpDeak] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [HelpDeak] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [HelpDeak] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [HelpDeak] SET  READ_WRITE 
GO

ALTER DATABASE [HelpDeak] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [HelpDeak] SET  MULTI_USER 
GO

ALTER DATABASE [HelpDeak] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [HelpDeak] SET DB_CHAINING OFF 
GO

