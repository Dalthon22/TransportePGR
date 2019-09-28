USE [sigestran]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__voucher_p__procu__367C1819]') AND parent_object_id = OBJECT_ID(N'[dbo].[voucher_procu_assign]'))
ALTER TABLE [dbo].[voucher_procu_assign] DROP CONSTRAINT [FK__voucher_p__procu__367C1819]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__voucher_p__num_v__3864608B]') AND parent_object_id = OBJECT_ID(N'[dbo].[voucher_procu_assign]'))
ALTER TABLE [dbo].[voucher_procu_assign] DROP CONSTRAINT [FK__voucher_p__num_v__3864608B]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__voucher_f__num_v__3C34F16F]') AND parent_object_id = OBJECT_ID(N'[dbo].[voucher_folo6_assign]'))
ALTER TABLE [dbo].[voucher_folo6_assign] DROP CONSTRAINT [FK__voucher_f__num_v__3C34F16F]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__voucher_f__folo6__37703C52]') AND parent_object_id = OBJECT_ID(N'[dbo].[voucher_folo6_assign]'))
ALTER TABLE [dbo].[voucher_folo6_assign] DROP CONSTRAINT [FK__voucher_f__folo6__37703C52]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__vehicle__procura__5EBF139D]') AND parent_object_id = OBJECT_ID(N'[dbo].[vehicle]'))
ALTER TABLE [dbo].[vehicle] DROP CONSTRAINT [FK__vehicle__procura__5EBF139D]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__procuradu__addre__47A6A41B]') AND parent_object_id = OBJECT_ID(N'[dbo].[procuraduria]'))
ALTER TABLE [dbo].[procuraduria] DROP CONSTRAINT [FK__procuradu__addre__47A6A41B]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__places_co__frequ__3E1D39E1]') AND parent_object_id = OBJECT_ID(N'[dbo].[places_container]'))
ALTER TABLE [dbo].[places_container] DROP CONSTRAINT [FK__places_co__frequ__3E1D39E1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__places_co__folo___40058253]') AND parent_object_id = OBJECT_ID(N'[dbo].[places_container]'))
ALTER TABLE [dbo].[places_container] DROP CONSTRAINT [FK__places_co__folo___40058253]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__places_co__addre__3B40CD36]') AND parent_object_id = OBJECT_ID(N'[dbo].[places_container]'))
ALTER TABLE [dbo].[places_container] DROP CONSTRAINT [FK__places_co__addre__3B40CD36]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__frequent___frequ__6477ECF3]') AND parent_object_id = OBJECT_ID(N'[dbo].[frequent_place]'))
ALTER TABLE [dbo].[frequent_place] DROP CONSTRAINT [FK__frequent___frequ__6477ECF3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__frequent___depar__6383C8BA]') AND parent_object_id = OBJECT_ID(N'[dbo].[frequent_place]'))
ALTER TABLE [dbo].[frequent_place] DROP CONSTRAINT [FK__frequent___depar__6383C8BA]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__frequent___city___628FA481]') AND parent_object_id = OBJECT_ID(N'[dbo].[frequent_place]'))
ALTER TABLE [dbo].[frequent_place] DROP CONSTRAINT [FK__frequent___city___628FA481]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__folo6__procuradu__43D61337]') AND parent_object_id = OBJECT_ID(N'[dbo].[folo6]'))
ALTER TABLE [dbo].[folo6] DROP CONSTRAINT [FK__folo6__procuradu__43D61337]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__folo6__employee___42E1EEFE]') AND parent_object_id = OBJECT_ID(N'[dbo].[folo6]'))
ALTER TABLE [dbo].[folo6] DROP CONSTRAINT [FK__folo6__employee___42E1EEFE]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__employee__unit_i__41EDCAC5]') AND parent_object_id = OBJECT_ID(N'[dbo].[employee]'))
ALTER TABLE [dbo].[employee] DROP CONSTRAINT [FK__employee__unit_i__41EDCAC5]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__employee__procur__40F9A68C]') AND parent_object_id = OBJECT_ID(N'[dbo].[employee]'))
ALTER TABLE [dbo].[employee] DROP CONSTRAINT [FK__employee__procur__40F9A68C]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__employee__id_bos__3F115E1A]') AND parent_object_id = OBJECT_ID(N'[dbo].[employee]'))
ALTER TABLE [dbo].[employee] DROP CONSTRAINT [FK__employee__id_bos__3F115E1A]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__city__department__4D94879B]') AND parent_object_id = OBJECT_ID(N'[dbo].[city]'))
ALTER TABLE [dbo].[city] DROP CONSTRAINT [FK__city__department__4D94879B]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__address__departm__3D2915A8]') AND parent_object_id = OBJECT_ID(N'[dbo].[address]'))
ALTER TABLE [dbo].[address] DROP CONSTRAINT [FK__address__departm__3D2915A8]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__address__city_id__395884C4]') AND parent_object_id = OBJECT_ID(N'[dbo].[address]'))
ALTER TABLE [dbo].[address] DROP CONSTRAINT [FK__address__city_id__395884C4]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__voucher__conditi__71D1E811]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[voucher] DROP CONSTRAINT [DF__voucher__conditi__71D1E811]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__vehicle__state__5DCAEF64]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vehicle] DROP CONSTRAINT [DF__vehicle__state__5DCAEF64]
END

GO
/****** Object:  Index [UQ__vehicle__0C04E256C9E5B3EA]    Script Date: 28/09/2019 02:56:01 p.m. ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vehicle]') AND name = N'UQ__vehicle__0C04E256C9E5B3EA')
ALTER TABLE [dbo].[vehicle] DROP CONSTRAINT [UQ__vehicle__0C04E256C9E5B3EA]
GO
/****** Object:  Index [UQ__frequent__72E12F1BCFFA2EE6]    Script Date: 28/09/2019 02:56:01 p.m. ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[frequent_place]') AND name = N'UQ__frequent__72E12F1BCFFA2EE6')
ALTER TABLE [dbo].[frequent_place] DROP CONSTRAINT [UQ__frequent__72E12F1BCFFA2EE6]
GO
/****** Object:  Table [dbo].[voucher_procu_assign]    Script Date: 28/09/2019 02:56:01 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[voucher_procu_assign]') AND type in (N'U'))
DROP TABLE [dbo].[voucher_procu_assign]
GO
/****** Object:  Table [dbo].[voucher_folo6_assign]    Script Date: 28/09/2019 02:56:01 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[voucher_folo6_assign]') AND type in (N'U'))
DROP TABLE [dbo].[voucher_folo6_assign]
GO
/****** Object:  Table [dbo].[voucher]    Script Date: 28/09/2019 02:56:01 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[voucher]') AND type in (N'U'))
DROP TABLE [dbo].[voucher]
GO
/****** Object:  Table [dbo].[vehicle]    Script Date: 28/09/2019 02:56:01 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vehicle]') AND type in (N'U'))
DROP TABLE [dbo].[vehicle]
GO
/****** Object:  Table [dbo].[unit]    Script Date: 28/09/2019 02:56:01 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[unit]') AND type in (N'U'))
DROP TABLE [dbo].[unit]
GO
/****** Object:  Table [dbo].[procuraduria]    Script Date: 28/09/2019 02:56:01 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[procuraduria]') AND type in (N'U'))
DROP TABLE [dbo].[procuraduria]
GO
/****** Object:  Table [dbo].[places_container]    Script Date: 28/09/2019 02:56:01 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[places_container]') AND type in (N'U'))
DROP TABLE [dbo].[places_container]
GO
/****** Object:  Table [dbo].[frequent_place]    Script Date: 28/09/2019 02:56:01 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[frequent_place]') AND type in (N'U'))
DROP TABLE [dbo].[frequent_place]
GO
/****** Object:  Table [dbo].[folo6]    Script Date: 28/09/2019 02:56:01 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[folo6]') AND type in (N'U'))
DROP TABLE [dbo].[folo6]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 28/09/2019 02:56:01 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[employee]') AND type in (N'U'))
DROP TABLE [dbo].[employee]
GO
/****** Object:  Table [dbo].[department]    Script Date: 28/09/2019 02:56:01 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[department]') AND type in (N'U'))
DROP TABLE [dbo].[department]
GO
/****** Object:  Table [dbo].[city]    Script Date: 28/09/2019 02:56:01 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[city]') AND type in (N'U'))
DROP TABLE [dbo].[city]
GO
/****** Object:  Table [dbo].[address]    Script Date: 28/09/2019 02:56:01 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[address]') AND type in (N'U'))
DROP TABLE [dbo].[address]
GO
/****** Object:  User [dm15012]    Script Date: 28/09/2019 02:56:01 p.m. ******/
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'dm15012')
DROP USER [dm15012]
GO
USE [master]
GO
/****** Object:  Database [sigestran]    Script Date: 28/09/2019 02:56:01 p.m. ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'sigestran')
DROP DATABASE [sigestran]
GO
/****** Object:  Database [sigestran]    Script Date: 28/09/2019 02:56:01 p.m. ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'sigestran')
BEGIN
CREATE DATABASE [sigestran]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sigestran', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\sigestran.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'sigestran_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\sigestran_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [sigestran] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sigestran].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sigestran] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sigestran] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sigestran] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sigestran] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sigestran] SET ARITHABORT OFF 
GO
ALTER DATABASE [sigestran] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sigestran] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [sigestran] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sigestran] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sigestran] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sigestran] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sigestran] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sigestran] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sigestran] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sigestran] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sigestran] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sigestran] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sigestran] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sigestran] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sigestran] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sigestran] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sigestran] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sigestran] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sigestran] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [sigestran] SET  MULTI_USER 
GO
ALTER DATABASE [sigestran] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sigestran] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sigestran] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sigestran] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [sigestran]
GO
/****** Object:  User [dm15012]    Script Date: 28/09/2019 02:56:02 p.m. ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'dm15012')
CREATE USER [dm15012] FOR LOGIN [dm15012] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[address]    Script Date: 28/09/2019 02:56:02 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[address]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[address](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[detail] [nvarchar](250) NOT NULL,
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[city_id] [int] NULL,
	[department_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[city]    Script Date: 28/09/2019 02:56:02 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[city]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[city](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[department_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[department]    Script Date: 28/09/2019 02:56:02 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[department]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[employee]    Script Date: 28/09/2019 02:56:02 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](75) NOT NULL,
	[last_name] [nvarchar](75) NOT NULL,
	[is_unit_boss] [bit] NOT NULL,
	[user_name] [nvarchar](75) NOT NULL,
	[user_pass] [nvarchar](75) NOT NULL,
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[id_boss] [int] NULL,
	[procuraduria_id] [int] NULL,
	[unit_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[folo6]    Script Date: 28/09/2019 02:56:02 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[folo6]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[folo6](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[request_unit] [nvarchar](150) NOT NULL,
	[off_date] [datetimeoffset](7) NOT NULL,
	[off_hour] [time](7) NOT NULL,
	[return_hour] [time](7) NOT NULL,
	[passengers_number] [int] NOT NULL,
	[with_driver] [bit] NOT NULL,
	[person_who_drive] [nvarchar](100) NULL,
	[license_type] [nvarchar](30) NULL,
	[mission] [nvarchar](150) NOT NULL,
	[observation] [nvarchar](150) NOT NULL,
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[employee_id] [int] NULL,
	[procuraduria_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[frequent_place]    Script Date: 28/09/2019 02:56:02 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[frequent_place]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[frequent_place](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[detail] [nvarchar](250) NOT NULL,
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[city_id] [int] NULL,
	[department_id] [int] NULL,
	[frequent_place_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[places_container]    Script Date: 28/09/2019 02:56:02 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[places_container]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[places_container](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date_of_visit] [date] NOT NULL,
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[address_id] [int] NULL,
	[frequent_place_id] [int] NULL,
	[folo_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[procuraduria]    Script Date: 28/09/2019 02:56:02 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[procuraduria]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[procuraduria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[address_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[unit]    Script Date: 28/09/2019 02:56:02 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[unit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[unit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name_unit] [nvarchar](75) NOT NULL,
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[vehicle]    Script Date: 28/09/2019 02:56:02 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vehicle]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vehicle](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[brand] [nvarchar](50) NOT NULL,
	[model] [nvarchar](50) NOT NULL,
	[plate] [nvarchar](10) NOT NULL,
	[chassis] [nvarchar](20) NOT NULL,
	[engine] [nvarchar](25) NOT NULL,
	[seats] [int] NOT NULL,
	[state] [nvarchar](25) NOT NULL,
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[procuraduria_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[voucher]    Script Date: 28/09/2019 02:56:02 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[voucher]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[voucher](
	[num_voucher] [bigint] NOT NULL,
	[price] [decimal](18, 0) NOT NULL,
	[condition] [nvarchar](255) NOT NULL,
	[date_entry] [datetimeoffset](7) NOT NULL,
	[voucher_provider] [nvarchar](255) NOT NULL,
	[num_entry_bill] [bigint] NOT NULL,
	[date_entry_bill] [datetimeoffset](7) NOT NULL,
	[num_close_bill] [bigint] NULL,
	[date_close_bill] [datetimeoffset](7) NULL,
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[num_voucher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[voucher_folo6_assign]    Script Date: 28/09/2019 02:56:02 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[voucher_folo6_assign]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[voucher_folo6_assign](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date_voucher_f6] [datetimeoffset](7) NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[folo6_id] [int] NULL,
	[num_voucher] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[voucher_procu_assign]    Script Date: 28/09/2019 02:56:02 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[voucher_procu_assign]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[voucher_procu_assign](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date_voucher_procu] [datetimeoffset](7) NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[num_voucher] [bigint] NULL,
	[procuraduria_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[city] ON 

INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (1, N'Santa Tecla', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (2, N'Antiguo Cuscatlán', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (3, N'Chiltiupán', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (4, N'Ciudad Arce', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (5, N'Colón', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (6, N'Comasagua', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (7, N'Huizúcar', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (8, N'Jayaque', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (9, N'Jicalapa', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (10, N'La Libertad', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (11, N' Nuevo Cuscatlán', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (12, N'Quezaltepeque', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (13, N'San Juan Opico', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (14, N'Sacacoyo', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (15, N'San José Villanueva', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (16, N'San Matías', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (17, N'San Pablo Tacachico', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (18, N'Talnique', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (19, N'Tamanique', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (20, N'Teotepeque', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (21, N'Tepecoyo', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (22, N'Zaragoza', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (23, N'SAN PEDRO PUXTLA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (24, N'JUJUTLA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (25, N'APANECA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (26, N'CONCEPCION DE ATACO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (27, N'SAN FRANCISCO MENENDEZ', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (28, N'TACUBA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (29, N'TURIN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (30, N'EL REFUGIO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (31, N'ATIQUIZAYA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (32, N'AHUACHAPAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (33, N'SAN LORENZO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (34, N'GUAYMANGO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (35, N'METAPAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (36, N'SAN ANTONIO PAJONAL', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (37, N'SANTIAGO DE LA FRONTERA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (38, N'SANTA ROSA GUACHIPILIN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (39, N'MASAHUAT', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (40, N'TEXISTEPEQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (41, N'CANDELARIA DE LA FRONTERA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (42, N'SANTA ANA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (43, N'COATEPEQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (44, N'EL PORVENIR', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (45, N'SAN SEBASTIAN SALITRILLO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (46, N'CHALCHUAPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (47, N'EL CONGO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (48, N'SANTA ISABEL ISHUATAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (49, N'CUISNAHUAT', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (50, N'ACAJUTLA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (51, N'NAHULINGO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (52, N'CALUCO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (53, N'SAN ANTONIO DEL MONTE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (54, N'SONSONATE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (55, N'SAN JULIAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (56, N'ARMENIA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (57, N'IZALCO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (58, N'SANTA CATARINA MASAHUAT', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (59, N'SALCOATITAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (60, N'NAHUIZALCO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (61, N'JUAYUA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (62, N'SONZACATE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (63, N'SANTO DOMINGO DE GUZMAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (64, N'NUEVA CONCEPCION', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (65, N'AGUA CALIENTE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (66, N'LA PALMA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (67, N'SAN IGNACIO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (68, N'CITALA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (69, N'SAN FERNANDO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (70, N'LA REINA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (71, N'SAN FRANCISCO MORAZAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (72, N'TEJUTLA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (73, N'DULCE NOMBRE DE MARIA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (74, N'EL PARAISO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (75, N'SAN RAFAEL', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (76, N'SANTA RITA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (77, N'CONCEPCION QUEZALTEPEQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (78, N'CHALATENANGO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (79, N'NUEVA TRINIDAD', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (80, N'LAS VUELTAS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (81, N'OJOS DE AGUA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (82, N'SAN ISIDRO LABRADOR', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (83, N'CANCASQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (84, N'POTONICO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (85, N'SAN MIGUEL DE MERCEDES', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (86, N'SAN ANTONIO LOS RANCHOS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (87, N'AZACUALPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (88, N'SAN LUIS DEL CARMEN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (89, N'SAN FRANCISCO LEMPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (90, N'SAN ANTONIO DE LA CRUZ', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (91, N'NOMBRE DE JESUS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (92, N'LAS FLORES', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (93, N'ARCATAO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (94, N'COMALAPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (95, N'LA LAGUNA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (96, N'EL CARRIZAL', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (97, N'ROSARIO DE MORA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (98, N'PANCHIMALCO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (99, N'SAN MARCOS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
GO
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (100, N'SANTO TOMAS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (101, N'SANTIAGO TEXACUANGOS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (102, N'ILOPANGO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (103, N'CUSCATANCINGO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (104, N'SOYAPANGO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (105, N'SAN SALVADOR', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (106, N'MEJICANOS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (107, N'AYUTUXTEPEQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (108, N'CIUDAD DELGADO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (109, N'SAN MARTIN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (110, N'TONACATEPEQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (111, N'APOPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (112, N'NEJAPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (113, N'GUAZAPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (114, N'AGUILARES', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (115, N'EL PAISNAL', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (116, N'SUCHITOTO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (117, N'TENANCINGO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (118, N'SAN JOSE GUAYABAL', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (119, N'ORATORIO DE CONCEPCION', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (120, N'SAN BARTOLOME PERULAPIA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (121, N'SAN PEDRO PERULAPAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (122, N'SANTA CRUZ MICHAPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (123, N'MONTE SAN JUAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (124, N'EL ROSARIO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (125, N'SAN RAFAEL CEDROS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (126, N'COJUTEPEQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (127, N'EL CARMEN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (128, N'SAN CRISTOBAL', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (129, N'CANDELARIA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (130, N'SAN RAMON', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (131, N'SANTA CRUZ ANALQUITO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (132, N'SAN LUIS TALPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (133, N'OLOCUILTA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (134, N'SAN JUAN TALPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (135, N'EL ROSARIO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (136, N'SAN ANTONIO MASAHUAT', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (137, N'TAPALHUACA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (138, N'CUYULTITAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (139, N'SAN FRANCISCO CHINAMECA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (140, N'SAN JUAN TEPEZONTES', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (141, N'SANTIAGO NONUALCO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (142, N'SAN PEDRO MASAHUAT', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (143, N'SAN JUAN NONUALCO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (144, N'ZACATECOLUCA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (145, N'SAN RAFAEL OBRAJUELO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (146, N'SAN LUIS LA HERRADURA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (147, N'SAN PEDRO NONUALCO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (148, N'SANTA MARIA OSTUMA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (149, N'PARAISO DE OSORIO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (150, N'SAN EMIGDIO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (151, N'SAN MIGUEL TEPEZONTES', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (152, N'JERUSALEN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (153, N'MERCEDES LA CEIBA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (154, N'ILOBASCO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 9)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (155, N'SAN ISIDRO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 9)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (156, N'JUTIAPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 9)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (157, N'TEJUTEPEQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 9)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (158, N'CINQUERA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 9)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (159, N'SENSUNTEPEQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 9)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (160, N'VICTORIA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 9)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (161, N'GUACOTECTI', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 9)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (162, N'DOLORES', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 9)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (163, N'APASTEPEQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (164, N'SAN SEBASTIAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (165, N'VERAPAZ', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (166, N'SANTO DOMINGO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (167, N'SAN LORENZO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (168, N'TEPETITAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (169, N'SAN CAYETANO ISTEPEQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (170, N'GUADALUPE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (171, N'TECOLUCA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (172, N'SAN ILDEFONSO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (173, N'SANTA CLARA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (174, N'SAN ESTEBAN CATARINA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (175, N'SAN VICENTE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (176, N'ESTANZUELAS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (177, N'SAN AGUSTIN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (178, N'BERLIN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (179, N'NUEVA GRANADA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (180, N'EL TRIUNFO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (181, N'SAN BUENA VENTURA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (182, N'SANTIAGO DE MARIA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (183, N'JUCUAPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (184, N'ALEGRIA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (185, N'JIQUILISCO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (186, N'SANTA ELENA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (187, N'SAN FRANCISCO JAVIER', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (188, N'TECAPAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (189, N'CALIFORNIA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (190, N'OZATLAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (191, N'SANTA MARIA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (192, N'EREGUAYQUIN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (193, N'USULUTAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (194, N'CONCEPCION BATRES', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (195, N'SAN DIONISIO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (196, N'PUERTO EL TRIUNFO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (197, N'JUCUARAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (198, N'MERCEDES UMANA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (199, N'SESORI', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
GO
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (200, N'NUEVO EDEN DE SAN JUAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (201, N'SAN GERARDO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (202, N'SAN LUIS DE LA REINA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (203, N'CAROLINA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (204, N'SAN ANTONIO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (205, N'CIUDAD BARRIOS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (206, N'CHAPELTIQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (207, N'LOLOTIQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (208, N'MONCAGUA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (209, N'NUEVA GUADALUPE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (210, N'CHINAMECA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (211, N'SAN JORGE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (212, N'QUELEPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (213, N'SAN MIGUEL', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (214, N'SAN RAFAEL ORIENTE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (215, N'EL TRANSITO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (216, N'CHIRILAGUA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (217, N'ULUAZAPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (218, N'COMACARAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (219, N'LOLOTIQUILLO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (220, N'CHILANGA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (221, N'GUATAJIAGUA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (222, N'SAN FRANCISCO GOTERA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (223, N'SENSEMBRA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (224, N'YAMABAL', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (225, N'SAN CARLOS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (226, N'EL DIVISADERO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (227, N'JOCORO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (228, N'CORINTO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (229, N'SOCIEDAD', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (230, N'CACAOPERA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (231, N'SAN FERNANDO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (232, N'ARAMBALA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (233, N'PERQUIN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (234, N'JOCOAITIQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (235, N'TOROLA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (236, N'SAN ISIDRO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (237, N'EL ROSARIO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (238, N'MEANGUERA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (239, N'JOATECA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (240, N'SAN SIMON', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (241, N'GUALOCOCTI', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (242, N'DELICIAS DE CONCEPCION', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (243, N'YOLOAIQUIN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (244, N'OSICALA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (245, N'SAN ALEJO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (246, N'PASAQUINA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (247, N'SANTA ROSA DE LIMA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (248, N'EL SAUCE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (249, N'ANAMOROS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (250, N'CONCHAGUA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (251, N'INTIPUCA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (252, N'NUEVA ESPARTA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (253, N'LISLIQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (254, N'POLOROS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (255, N'CONCEPCION DE ORIENTE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (256, N'YUCUAIQUIN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (257, N'BOLIVAR', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (258, N'SAN JOSE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (259, N'YAYANTIQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (260, N'EL CARMEN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (261, N'LA UNION', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[city] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (262, N'MEANGUERA DEL GOLFO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
SET IDENTITY_INSERT [dbo].[city] OFF
SET IDENTITY_INSERT [dbo].[department] ON 

INSERT [dbo].[department] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (1, N'Ahuachapan', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[department] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (2, N'Santa Ana', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[department] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (3, N'Sonsonate', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[department] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (4, N'Chalatenango', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[department] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (5, N'La Libertad', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[department] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (6, N'San Salvador', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[department] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (7, N'Cuscatlán', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[department] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (8, N'La Paz', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[department] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (9, N'Cabañas', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[department] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (10, N'San Vicente', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[department] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (11, N'Usulután', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[department] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (12, N'San Miguel', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[department] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (13, N'Morazán', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[department] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (14, N'La Unión', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
SET IDENTITY_INSERT [dbo].[department] OFF
SET IDENTITY_INSERT [dbo].[vehicle] ON 

INSERT [dbo].[vehicle] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (1, N'Toyota', N'Corolla', N'N1234', N'Y1253364', N'64EK125369', 4, N'Funcional', NULL, NULL, CAST(N'2019-09-05T01:55:28.4160000+00:00' AS DateTimeOffset), CAST(N'2019-09-05T01:55:28.4230000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[vehicle] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (2, N'Hyndai', N'Elantra', N'N1235', N'Y1253365', N'64EK125368', 4, N'Mantenimiento', NULL, NULL, CAST(N'2019-09-05T01:59:18.9820000+00:00' AS DateTimeOffset), CAST(N'2019-09-05T01:59:18.9900000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[vehicle] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (3, N'Chevrolet', N'Aveo', N'N1236', N'Y1253365', N'64EK125368', 4, N'Mantenimiento', NULL, NULL, CAST(N'2019-09-05T02:01:19.5020000+00:00' AS DateTimeOffset), CAST(N'2019-09-05T02:01:19.5120000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[vehicle] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (4, N'Chevrolet', N'Aveo', N'N1237', N'Y1253365', N'64EK125368', 4, N'Mantenimiento', NULL, NULL, CAST(N'2019-09-05T02:14:55.9500000+00:00' AS DateTimeOffset), CAST(N'2019-09-05T02:14:55.9560000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[vehicle] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (5, N'Chevrolet', N'Aveo', N'N1238', N'Y1253365', N'64EK125368', 4, N'Mantenimiento', NULL, NULL, CAST(N'2019-09-05T02:19:54.7480000+00:00' AS DateTimeOffset), CAST(N'2019-09-05T02:19:54.7560000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[vehicle] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (6, N'Chevrolet', N'Aveo', N'N1239', N'Y1253365', N'64EK125368', 4, N'Mantenimiento', NULL, NULL, CAST(N'2019-09-05T02:26:51.4810000+00:00' AS DateTimeOffset), CAST(N'2019-09-05T02:26:51.4870000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[vehicle] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (7, N'Chevrolet', N'Aveo', N'N1240', N'Y1253365', N'64EK125368', 4, N'Mantenimiento', NULL, NULL, CAST(N'2019-09-05T02:29:26.7050000+00:00' AS DateTimeOffset), CAST(N'2019-09-05T02:29:26.7550000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[vehicle] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (8, N'Chevrolet', N'Aveo', N'N1241', N'Y1253365', N'64EK125368', 4, N'Mantenimiento', NULL, NULL, CAST(N'2019-09-05T02:30:25.7560000+00:00' AS DateTimeOffset), CAST(N'2019-09-05T02:30:25.7670000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[vehicle] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (9, N'Chevrolet', N'Aveo', N'N1242', N'Y1253365', N'64EK125368', 4, N'Mantenimiento', NULL, NULL, CAST(N'2019-09-05T02:38:01.3460000+00:00' AS DateTimeOffset), CAST(N'2019-09-05T02:38:01.3590000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[vehicle] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (10, N'Chevrolet', N'Aveo', N'N1243', N'Y1253365', N'64EK125368', 4, N'Mantenimiento', NULL, NULL, CAST(N'2019-09-05T02:41:10.7200000+00:00' AS DateTimeOffset), CAST(N'2019-09-05T02:41:10.7290000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[vehicle] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (11, N'Chevrolet', N'Aveo', N'N1244', N'Y1253365', N'64EK125368', 4, N'Mantenimiento', NULL, NULL, CAST(N'2019-09-05T02:43:52.4150000+00:00' AS DateTimeOffset), CAST(N'2019-09-05T02:43:52.4240000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[vehicle] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (12, N'Chevrolet', N'Aveo', N'N1245', N'Y1253365', N'64EK125368', 4, N'Mantenimiento', NULL, NULL, CAST(N'2019-09-05T02:45:39.0860000+00:00' AS DateTimeOffset), CAST(N'2019-09-05T02:45:39.0980000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[vehicle] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (13, N'Chevrolet', N'Aveo', N'N1249', N'Y1253365', N'64EK125368', 4, N'Dañado', NULL, NULL, CAST(N'2019-09-05T03:15:12.9390000+00:00' AS DateTimeOffset), CAST(N'2019-09-05T03:15:12.9460000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[vehicle] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (14, N'Toyota', N'Yaris', N'N6789', N'E12365', N'65QW123659', 2, N'Funcional', NULL, NULL, CAST(N'2019-09-05T03:22:41.3030000+00:00' AS DateTimeOffset), CAST(N'2019-09-05T03:22:41.3530000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[vehicle] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (15, N'Mazda', N'3', N'N19360', N'E123658', N'64EK125369', 4, N'Mantenimiento', NULL, NULL, CAST(N'2019-09-05T03:33:51.9770000+00:00' AS DateTimeOffset), CAST(N'2019-09-05T03:33:51.9870000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[vehicle] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (16, N'Toyota', N'Corolla', N'P1236', N'E123658', N'Hj623659123', 4, N'Funcional', NULL, NULL, CAST(N'2019-09-05T03:35:58.3780000+00:00' AS DateTimeOffset), CAST(N'2019-09-05T03:35:58.3860000+00:00' AS DateTimeOffset), NULL)
SET IDENTITY_INSERT [dbo].[vehicle] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__frequent__72E12F1BCFFA2EE6]    Script Date: 28/09/2019 02:56:02 p.m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[frequent_place]') AND name = N'UQ__frequent__72E12F1BCFFA2EE6')
ALTER TABLE [dbo].[frequent_place] ADD UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__vehicle__0C04E256C9E5B3EA]    Script Date: 28/09/2019 02:56:02 p.m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vehicle]') AND name = N'UQ__vehicle__0C04E256C9E5B3EA')
ALTER TABLE [dbo].[vehicle] ADD UNIQUE NONCLUSTERED 
(
	[plate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__vehicle__state__5DCAEF64]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vehicle] ADD  DEFAULT (N'Funcional') FOR [state]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__voucher__conditi__71D1E811]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[voucher] ADD  DEFAULT (N'disponible') FOR [condition]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__address__city_id__395884C4]') AND parent_object_id = OBJECT_ID(N'[dbo].[address]'))
ALTER TABLE [dbo].[address]  WITH CHECK ADD FOREIGN KEY([city_id])
REFERENCES [dbo].[city] ([id])
ON DELETE SET NULL
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__address__departm__3D2915A8]') AND parent_object_id = OBJECT_ID(N'[dbo].[address]'))
ALTER TABLE [dbo].[address]  WITH CHECK ADD FOREIGN KEY([department_id])
REFERENCES [dbo].[department] ([id])
ON DELETE SET NULL
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__city__department__4D94879B]') AND parent_object_id = OBJECT_ID(N'[dbo].[city]'))
ALTER TABLE [dbo].[city]  WITH CHECK ADD FOREIGN KEY([department_id])
REFERENCES [dbo].[department] ([id])
ON DELETE SET NULL
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__employee__id_bos__3F115E1A]') AND parent_object_id = OBJECT_ID(N'[dbo].[employee]'))
ALTER TABLE [dbo].[employee]  WITH CHECK ADD FOREIGN KEY([id_boss])
REFERENCES [dbo].[employee] ([id])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__employee__procur__40F9A68C]') AND parent_object_id = OBJECT_ID(N'[dbo].[employee]'))
ALTER TABLE [dbo].[employee]  WITH CHECK ADD FOREIGN KEY([procuraduria_id])
REFERENCES [dbo].[procuraduria] ([id])
ON DELETE SET NULL
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__employee__unit_i__41EDCAC5]') AND parent_object_id = OBJECT_ID(N'[dbo].[employee]'))
ALTER TABLE [dbo].[employee]  WITH CHECK ADD FOREIGN KEY([unit_id])
REFERENCES [dbo].[unit] ([id])
ON DELETE SET NULL
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__folo6__employee___42E1EEFE]') AND parent_object_id = OBJECT_ID(N'[dbo].[folo6]'))
ALTER TABLE [dbo].[folo6]  WITH CHECK ADD FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([id])
ON DELETE SET NULL
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__folo6__procuradu__43D61337]') AND parent_object_id = OBJECT_ID(N'[dbo].[folo6]'))
ALTER TABLE [dbo].[folo6]  WITH CHECK ADD FOREIGN KEY([procuraduria_id])
REFERENCES [dbo].[procuraduria] ([id])
ON DELETE SET NULL
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__frequent___city___628FA481]') AND parent_object_id = OBJECT_ID(N'[dbo].[frequent_place]'))
ALTER TABLE [dbo].[frequent_place]  WITH CHECK ADD FOREIGN KEY([city_id])
REFERENCES [dbo].[city] ([id])
ON DELETE SET NULL
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__frequent___depar__6383C8BA]') AND parent_object_id = OBJECT_ID(N'[dbo].[frequent_place]'))
ALTER TABLE [dbo].[frequent_place]  WITH CHECK ADD FOREIGN KEY([department_id])
REFERENCES [dbo].[department] ([id])
ON DELETE SET NULL
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__frequent___frequ__6477ECF3]') AND parent_object_id = OBJECT_ID(N'[dbo].[frequent_place]'))
ALTER TABLE [dbo].[frequent_place]  WITH CHECK ADD FOREIGN KEY([frequent_place_id])
REFERENCES [dbo].[procuraduria] ([id])
ON DELETE SET NULL
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__places_co__addre__3B40CD36]') AND parent_object_id = OBJECT_ID(N'[dbo].[places_container]'))
ALTER TABLE [dbo].[places_container]  WITH CHECK ADD FOREIGN KEY([address_id])
REFERENCES [dbo].[address] ([id])
ON DELETE SET NULL
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__places_co__folo___40058253]') AND parent_object_id = OBJECT_ID(N'[dbo].[places_container]'))
ALTER TABLE [dbo].[places_container]  WITH CHECK ADD FOREIGN KEY([folo_id])
REFERENCES [dbo].[folo6] ([id])
ON DELETE SET NULL
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__places_co__frequ__3E1D39E1]') AND parent_object_id = OBJECT_ID(N'[dbo].[places_container]'))
ALTER TABLE [dbo].[places_container]  WITH CHECK ADD FOREIGN KEY([frequent_place_id])
REFERENCES [dbo].[frequent_place] ([id])
ON DELETE SET NULL
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__procuradu__addre__47A6A41B]') AND parent_object_id = OBJECT_ID(N'[dbo].[procuraduria]'))
ALTER TABLE [dbo].[procuraduria]  WITH CHECK ADD FOREIGN KEY([address_id])
REFERENCES [dbo].[address] ([id])
ON DELETE SET NULL
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__vehicle__procura__5EBF139D]') AND parent_object_id = OBJECT_ID(N'[dbo].[vehicle]'))
ALTER TABLE [dbo].[vehicle]  WITH CHECK ADD FOREIGN KEY([procuraduria_id])
REFERENCES [dbo].[procuraduria] ([id])
ON DELETE SET NULL
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__voucher_f__folo6__37703C52]') AND parent_object_id = OBJECT_ID(N'[dbo].[voucher_folo6_assign]'))
ALTER TABLE [dbo].[voucher_folo6_assign]  WITH CHECK ADD FOREIGN KEY([folo6_id])
REFERENCES [dbo].[folo6] ([id])
ON DELETE SET NULL
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__voucher_f__num_v__3C34F16F]') AND parent_object_id = OBJECT_ID(N'[dbo].[voucher_folo6_assign]'))
ALTER TABLE [dbo].[voucher_folo6_assign]  WITH CHECK ADD FOREIGN KEY([num_voucher])
REFERENCES [dbo].[voucher] ([num_voucher])
ON DELETE SET NULL
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__voucher_p__num_v__3864608B]') AND parent_object_id = OBJECT_ID(N'[dbo].[voucher_procu_assign]'))
ALTER TABLE [dbo].[voucher_procu_assign]  WITH CHECK ADD FOREIGN KEY([num_voucher])
REFERENCES [dbo].[voucher] ([num_voucher])
ON DELETE SET NULL
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__voucher_p__procu__367C1819]') AND parent_object_id = OBJECT_ID(N'[dbo].[voucher_procu_assign]'))
ALTER TABLE [dbo].[voucher_procu_assign]  WITH CHECK ADD FOREIGN KEY([procuraduria_id])
REFERENCES [dbo].[procuraduria] ([id])
ON DELETE SET NULL
GO
USE [master]
GO
ALTER DATABASE [sigestran] SET  READ_WRITE 
GO
