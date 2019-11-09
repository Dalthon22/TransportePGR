/****** Object:  Database [sigestran]    Script Date: 09/11/2019 11:35:20 a.m. ******/
CREATE DATABASE [sigestran]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sigestran', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\sigestran.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'sigestran_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\sigestran_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 09/11/2019 11:35:20 a.m. ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 09/11/2019 11:35:20 a.m. ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 09/11/2019 11:35:20 a.m. ******/
CREATE LOGIN [NT Service\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 09/11/2019 11:35:20 a.m. ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [dm15012]    Script Date: 09/11/2019 11:35:20 a.m. ******/
CREATE LOGIN [dm15012] WITH PASSWORD=N'Mce92LukE0fR5UmXvvizuSuIguAIKXXSCQI9NdHda8U=', DEFAULT_DATABASE=[sigestran], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [dm15012] DISABLE
GO
/****** Object:  Login [Dalton-PC\Dalton]    Script Date: 09/11/2019 11:35:20 a.m. ******/
CREATE LOGIN [Dalton-PC\Dalton] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BUILTIN\Usuarios]    Script Date: 09/11/2019 11:35:20 a.m. ******/
CREATE LOGIN [BUILTIN\Usuarios] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 09/11/2019 11:35:20 a.m. ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'IKggjyQR7PKYFMY/dpytwdmFM6qF5x6tzUgKEBa2wm8=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 09/11/2019 11:35:20 a.m. ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'r8nJb6SU1iK6+l7tbiZ+52iXoY5BmrADYJyU3rCULh0=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQLSERVER]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [dm15012]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [Dalton-PC\Dalton]
GO
/****** Object:  User [dm15012]    Script Date: 09/11/2019 11:35:20 a.m. ******/
CREATE USER [dm15012] FOR LOGIN [dm15012] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[SGT_Condiciones_Ruta]    Script Date: 09/11/2019 11:35:21 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Condiciones_Ruta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[monday] [bit] NULL,
	[tuesday] [bit] NULL,
	[wednesday] [bit] NULL,
	[thursday] [bit] NULL,
	[friday] [bit] NULL,
	[saturday] [bit] NULL,
	[sunday] [bit] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Departamento]    Script Date: 09/11/2019 11:35:21 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Departamento](
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

GO
/****** Object:  Table [dbo].[SGT_Direccion]    Script Date: 09/11/2019 11:35:21 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Direccion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[detail] [nvarchar](250) NULL,
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[city_id] [int] NULL,
	[department_id] [int] NULL,
	[name] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Empleado]    Script Date: 09/11/2019 11:35:21 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Empleado](
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

GO
/****** Object:  Table [dbo].[SGT_Folo6]    Script Date: 09/11/2019 11:35:21 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Folo6](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[request_unit] [int] NOT NULL,
	[off_date] [datetimeoffset](7) NOT NULL,
	[off_hour] [time](7) NOT NULL,
	[return_hour] [time](7) NOT NULL,
	[passengers_number] [int] NOT NULL,
	[with_driver] [bit] NOT NULL,
	[person_who_drive] [nvarchar](100) NULL,
	[license_type] [nvarchar](30) NULL,
	[mission] [nvarchar](150) NOT NULL,
	[observation] [nvarchar](150) NULL,
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

GO
/****** Object:  Table [dbo].[SGT_Folo6_Aprovado]    Script Date: 09/11/2019 11:35:21 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Folo6_Aprovado](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[request_unit_approve] [bit] NULL,
	[unit_cancel_detail] [nvarchar](250) NULL,
	[transport_unit_approve] [bit] NULL,
	[cancel_tunit_detail] [nvarchar](250) NULL,
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[folo06_id] [int] NULL,
	[aprove_boss_id] [int] NULL,
	[aprove_tunit_boss_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Lugares_Contenedor]    Script Date: 09/11/2019 11:35:21 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Lugares_Contenedor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date_of_visit] [date] NOT NULL,
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[address_id] [int] NULL,
	[folo_id] [int] NULL,
	[frequent_place_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Lugares_Frecuentes]    Script Date: 09/11/2019 11:35:21 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Lugares_Frecuentes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[detail] [nvarchar](250) NULL,
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[procuraduria_id] [int] NULL,
	[city_id] [int] NULL,
	[department_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Municipio]    Script Date: 09/11/2019 11:35:21 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Municipio](
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

GO
/****** Object:  Table [dbo].[SGT_Procuraduria]    Script Date: 09/11/2019 11:35:21 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Procuraduria](
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

GO
/****** Object:  Table [dbo].[SGT_Ruta]    Script Date: 09/11/2019 11:35:21 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Ruta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[procuraduria_id] [int] NULL,
	[route_conditions_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Unidad]    Script Date: 09/11/2019 11:35:21 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Unidad](
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

GO
/****** Object:  Table [dbo].[SGT_Vale]    Script Date: 09/11/2019 11:35:21 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Vale](
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

GO
/****** Object:  Table [dbo].[SGT_Vales_Asignados_Folo6]    Script Date: 09/11/2019 11:35:21 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Vales_Asignados_Folo6](
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

GO
/****** Object:  Table [dbo].[SGT_Vales_Asignados_Procuraduria]    Script Date: 09/11/2019 11:35:21 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Vales_Asignados_Procuraduria](
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

GO
/****** Object:  Table [dbo].[SGT_Vehiculo]    Script Date: 09/11/2019 11:35:21 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Vehiculo](
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

GO
/****** Object:  Table [dbo].[SIS_Usuarios]    Script Date: 09/11/2019 11:35:21 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIS_Usuarios](
	[Id] [int] NOT NULL,
	[CodigoUsuario] [char](10) NOT NULL,
	[ApellidosUsuario] [varchar](50) NOT NULL,
	[NombresUsuario] [varchar](50) NOT NULL,
	[ClaveUsuario] [char](10) NULL,
	[CorreoElectronicoUsuario] [varchar](100) NOT NULL,
	[MovilMensajeCortoUsuario] [varchar](100) NULL,
	[CodigoUsuarioSupervisor] [char](10) NULL,
	[ActivoInactivoUsuario] [char](1) NOT NULL,
	[TiempoRefrescoPantallaSegundos] [numeric](5, 0) NULL,
	[CodigoEstiloPantalla] [char](10) NULL,
	[CodigoZonaContacto] [char](10) NULL,
	[CodigoCallCenter] [char](10) NULL,
	[CodigoRolUsuario] [char](1) NULL,
	[ProveedorServicioCelular] [char](1) NULL,
	[UbicacionFisicaUsuario] [varchar](250) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SGT_Condiciones_Ruta] ON 

INSERT [dbo].[SGT_Condiciones_Ruta] ([id], [monday], [tuesday], [wednesday], [thursday], [friday], [saturday], [sunday], [created_at], [updated_at]) VALUES (1, 1, 1, 1, 1, 1, 1, 1, CAST(N'2019-11-04T10:05:21.7810000+00:00' AS DateTimeOffset), CAST(N'2019-11-04T10:05:21.7810000+00:00' AS DateTimeOffset))
SET IDENTITY_INSERT [dbo].[SGT_Condiciones_Ruta] OFF
SET IDENTITY_INSERT [dbo].[SGT_Departamento] ON 

INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (1, N'Ahuachapan', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (2, N'Santa Ana', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (3, N'Sonsonate', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (4, N'Chalatenango', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (5, N'La Libertad', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (6, N'San Salvador', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (7, N'Cuscatlán', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (8, N'La Paz', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (9, N'Cabañas', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (10, N'San Vicente', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (11, N'Usulután', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (12, N'San Miguel', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (13, N'Morazán', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (14, N'La Unión', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
SET IDENTITY_INSERT [dbo].[SGT_Departamento] OFF
SET IDENTITY_INSERT [dbo].[SGT_Direccion] ON 

INSERT [dbo].[SGT_Direccion] ([id], [detail], [created_by], [updated_by], [created_at], [updated_at], [city_id], [department_id], [name]) VALUES (1, N'Isla conejo en el trifinio', NULL, NULL, CAST(N'2019-10-08T03:40:57.4500000+00:00' AS DateTimeOffset), CAST(N'2019-10-08T03:40:57.4500000+00:00' AS DateTimeOffset), 262, 14, N'Isla conejo')
INSERT [dbo].[SGT_Direccion] ([id], [detail], [created_by], [updated_by], [created_at], [updated_at], [city_id], [department_id], [name]) VALUES (1002, N'San Miguel', NULL, NULL, CAST(N'2019-11-04T10:15:26.5840000+00:00' AS DateTimeOffset), CAST(N'2019-11-04T10:33:31.8980000+00:00' AS DateTimeOffset), 205, 12, NULL)
INSERT [dbo].[SGT_Direccion] ([id], [detail], [created_by], [updated_by], [created_at], [updated_at], [city_id], [department_id], [name]) VALUES (1003, N'San Salvador', NULL, NULL, CAST(N'2019-11-04T10:34:49.3900000+00:00' AS DateTimeOffset), CAST(N'2019-11-04T10:34:49.3900000+00:00' AS DateTimeOffset), 105, 6, NULL)
SET IDENTITY_INSERT [dbo].[SGT_Direccion] OFF
SET IDENTITY_INSERT [dbo].[SGT_Empleado] ON 

INSERT [dbo].[SGT_Empleado] ([id], [first_name], [last_name], [is_unit_boss], [user_name], [user_pass], [created_by], [updated_by], [created_at], [updated_at], [id_boss], [procuraduria_id], [unit_id]) VALUES (1, N'Daniel', N'Mejia', 1, N'daniel06', N'daniel123', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), NULL, NULL, 1)
INSERT [dbo].[SGT_Empleado] ([id], [first_name], [last_name], [is_unit_boss], [user_name], [user_pass], [created_by], [updated_by], [created_at], [updated_at], [id_boss], [procuraduria_id], [unit_id]) VALUES (2, N'Kevin', N'Toloza', 0, N'kevin06', N'kevin123', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), 1, NULL, 1)
INSERT [dbo].[SGT_Empleado] ([id], [first_name], [last_name], [is_unit_boss], [user_name], [user_pass], [created_by], [updated_by], [created_at], [updated_at], [id_boss], [procuraduria_id], [unit_id]) VALUES (3, N'Karen', N'Peñate', 0, N'karen12', N'karen123', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[SGT_Empleado] OFF
SET IDENTITY_INSERT [dbo].[SGT_Folo6] ON 

INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1, 1, CAST(N'2019-10-16T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'09:30:00' AS Time), CAST(N'10:30:00' AS Time), 1, 1, NULL, NULL, N'Traslado de archivos', N'Se trasladaran archivos pesados', NULL, NULL, CAST(N'2019-10-07T05:42:35.5140000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:42:35.5140000+00:00' AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (3, 1, CAST(N'2019-10-16T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'09:30:00' AS Time), CAST(N'16:30:00' AS Time), 4, 1, NULL, NULL, N'Auditoria', N'Nada pesado', NULL, NULL, CAST(N'2019-10-08T06:00:44.4640000+00:00' AS DateTimeOffset), CAST(N'2019-10-08T06:00:44.4640000+00:00' AS DateTimeOffset), 1, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (5, 1, CAST(N'2019-10-11T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'09:30:00' AS Time), CAST(N'13:30:00' AS Time), 4, 1, NULL, NULL, N'Test', N'Test', NULL, NULL, CAST(N'2019-10-08T06:27:03.9080000+00:00' AS DateTimeOffset), CAST(N'2019-10-08T06:27:03.9080000+00:00' AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (6, 1, CAST(N'2019-11-14T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'10:30:00' AS Time), CAST(N'15:30:00' AS Time), 1, 1, NULL, NULL, N'Audiencia', N'', NULL, NULL, CAST(N'2019-11-04T11:01:52.2840000+00:00' AS DateTimeOffset), CAST(N'2019-11-04T11:01:52.2840000+00:00' AS DateTimeOffset), 3, NULL)
SET IDENTITY_INSERT [dbo].[SGT_Folo6] OFF
SET IDENTITY_INSERT [dbo].[SGT_Folo6_Aprovado] ON 

INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id]) VALUES (1, 1, NULL, 0, NULL, NULL, NULL, CAST(N'2019-10-08T06:00:44.5540000+00:00' AS DateTimeOffset), CAST(N'2019-10-08T06:00:44.5540000+00:00' AS DateTimeOffset), 3, 1, NULL)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id]) VALUES (2, 0, NULL, 0, NULL, NULL, NULL, CAST(N'2019-10-08T06:08:06.6680000+00:00' AS DateTimeOffset), CAST(N'2019-10-08T06:08:06.6680000+00:00' AS DateTimeOffset), NULL, NULL, NULL)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id]) VALUES (3, 0, NULL, 0, NULL, NULL, NULL, CAST(N'2019-10-08T06:27:03.9920000+00:00' AS DateTimeOffset), CAST(N'2019-10-08T06:27:03.9920000+00:00' AS DateTimeOffset), 5, NULL, NULL)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id]) VALUES (4, 0, NULL, 0, NULL, NULL, NULL, CAST(N'2019-11-04T11:01:52.3720000+00:00' AS DateTimeOffset), CAST(N'2019-11-04T11:01:52.3720000+00:00' AS DateTimeOffset), 6, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SGT_Folo6_Aprovado] OFF
SET IDENTITY_INSERT [dbo].[SGT_Lugares_Contenedor] ON 

INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [address_id], [folo_id], [frequent_place_id]) VALUES (1, CAST(N'2019-10-06' AS Date), NULL, NULL, CAST(N'2019-10-07T05:42:35.6310000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:42:35.6310000+00:00' AS DateTimeOffset), NULL, 1, 51)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [address_id], [folo_id], [frequent_place_id]) VALUES (2, CAST(N'2019-10-06' AS Date), NULL, NULL, CAST(N'2019-10-07T05:42:35.6310000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:42:35.6310000+00:00' AS DateTimeOffset), NULL, 1, 7)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [address_id], [folo_id], [frequent_place_id]) VALUES (1002, CAST(N'2019-10-07' AS Date), NULL, NULL, CAST(N'2019-10-08T03:43:37.2940000+00:00' AS DateTimeOffset), CAST(N'2019-10-08T03:43:37.2940000+00:00' AS DateTimeOffset), NULL, NULL, 12)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [address_id], [folo_id], [frequent_place_id]) VALUES (1003, CAST(N'2019-10-07' AS Date), NULL, NULL, CAST(N'2019-10-08T03:43:37.3020000+00:00' AS DateTimeOffset), CAST(N'2019-10-08T03:43:37.3020000+00:00' AS DateTimeOffset), 1, NULL, NULL)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [address_id], [folo_id], [frequent_place_id]) VALUES (1004, CAST(N'2019-10-08' AS Date), NULL, NULL, CAST(N'2019-10-08T06:00:44.5560000+00:00' AS DateTimeOffset), CAST(N'2019-10-08T06:00:44.5560000+00:00' AS DateTimeOffset), NULL, 3, 13)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [address_id], [folo_id], [frequent_place_id]) VALUES (1005, CAST(N'2019-10-08' AS Date), NULL, NULL, CAST(N'2019-10-08T06:08:06.6700000+00:00' AS DateTimeOffset), CAST(N'2019-10-08T06:08:06.6700000+00:00' AS DateTimeOffset), NULL, NULL, 33)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [address_id], [folo_id], [frequent_place_id]) VALUES (1006, CAST(N'2019-10-08' AS Date), NULL, NULL, CAST(N'2019-10-08T06:27:03.9930000+00:00' AS DateTimeOffset), CAST(N'2019-10-08T06:27:03.9930000+00:00' AS DateTimeOffset), NULL, 5, 37)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [address_id], [folo_id], [frequent_place_id]) VALUES (1007, CAST(N'2019-11-04' AS Date), NULL, NULL, CAST(N'2019-11-04T11:01:52.3720000+00:00' AS DateTimeOffset), CAST(N'2019-11-04T11:01:52.3720000+00:00' AS DateTimeOffset), NULL, 6, 1)
SET IDENTITY_INSERT [dbo].[SGT_Lugares_Contenedor] OFF
SET IDENTITY_INSERT [dbo].[SGT_Lugares_Frecuentes] ON 

INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (1, N'Procuraduria Auxiliar de Soyapango', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 104, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (2, N'Procuraduria Auxiliar de Apopa', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 111, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (3, N'Procuraduria Auxiliar de Zacatecoluca', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 144, 8)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (4, N'Procuraduria Auxiliar de Usulután', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 193, 1)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (5, N'Procuraduria Auxiliar de San Miguel', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 213, 12)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (6, N'Procuraduria Auxiliar de La Unión', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 261, 14)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (7, N'Procuraduria Auxiliar de Santa Ana', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 42, 2)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (8, N'Procuraduria Auxiliar de Sonsonate', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 54, 3)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (9, N'Procuraduria Auxiliar de Ahuachapán', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 32, 1)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (10, N'Procuraduria Auxiliar de Metapán', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 35, 2)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (11, N'Procuraduria Auxiliar de Chalatenango', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 78, 4)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (12, N'Procuraduria Auxiliar de Cuscatlán', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 126, 7)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (13, N'Procuraduria Auxiliar de San Vicente', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 175, 10)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (14, N'Procuraduria Auxiliar de Cabañas', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 159, 9)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (15, N'Procuraduria Auxiliar de Morazán', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 222, 13)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (16, N'Procuraduria Auxiliar de La Libertad', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 1, 5)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (17, N'Centro Penitenciario de Sonsonate    ', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 54, 3)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (18, N'Centro Penitenciario de Ilobasco', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 154, 9)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (19, N'Centro Penitenciario de La Unión', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 261, 14)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (20, N'Centro Preventivo Jucuapa', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 183, 1)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (21, N'Centro Penal de Usulután ', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 193, 1)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (22, N'Penitenciaría Occidental de Santa Ana', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 42, 2)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (23, N'Centro Penal de Sensuntepeque', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 159, 9)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (24, N'Centro Penitenciario de San Francisco Gotera', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 222, 13)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (25, N'Centro de Readaptación para Mujeres-Ilopango', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 102, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (26, N'Penitenciaría Central La Esperanza', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 107, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (27, N'Centro de Cumplimiento de Penas de Ciudad Barrios', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 205, 12)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (28, N'Centro Penal de Quezaltepeque', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 12, 5)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (29, N'Centro Penal de Metapán', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 35, 2)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (30, N'Centro Penal de Apanteos', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 42, 2)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (31, N'Centro Penal de Chalatenango', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 78, 4)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (32, N'Centro Penal de Berlín', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 178, 1)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (33, N'Centro Penitenciario de Seguridad de Zacatecoluca', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 144, 8)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (34, N'Centro Judicial Isidro Menéndez', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (35, N'Dirección de  Atención al Migrante', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (36, N'Aeropuerto Internacional Oscar Arnulfo Romero', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-10-08T05:13:15.5880000+00:00' AS DateTimeOffset), NULL, 132, 8)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (37, N'Juzgados de Mejicanos', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 106, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (38, N'Juzgados de Paz de Ayutuxtepeque', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 107, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (39, N'Tribunal de Ética Gubernamental San Salvador', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (40, N'Juzgados de la Escalón', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (41, N'Centro Nacional de Registro San Salvador', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (42, N'Juzgados de Familia de San Marcos', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 99, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (43, N'Juzgados de Paz de Mejicanos', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 106, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (44, N'Juzgados de Paz de San Marcos', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 99, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (45, N'Juzgados de Paz de Ciudad Delgado', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 108, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (46, N'Vice Ministerio de Transporte La Libertad', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 10, 5)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (47, N'Sertracén San Salvador', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (48, N'Casa de la CIMA OPA', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (49, N'Alcaldía de San Marcos', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 99, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (50, N'Alcaldía de Soyapango', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 104, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (51, N'Alcaldía de Apopa', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 111, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (52, N'Alcaldía de Ciudad Delgado', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-10-08T05:02:50.7520000+00:00' AS DateTimeOffset), NULL, 108, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (53, N'Alcandía de Santa Tecla', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 1, 5)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (54, N'Alcaldía de El Paisnal', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-10-08T05:01:03.0450000+00:00' AS DateTimeOffset), NULL, 115, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (55, N'Instituto Salvadoreño para el Desarrollo Integral de la Niñez y Adolescencia', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (56, N'Concejo Nacional de la Niñez y Adolescencia', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (57, N'Fiscalía General de la República La Sultana', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 2, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (58, N'Fiscalía General de la República Antigüo Cuscatlán', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 2, 5)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (59, N'Juzgados de Santo Tomás', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 100, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (60, N'Juzgados de Panchimalco', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 98, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (61, N'Juzgados de Rosario de Mora', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 97, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (62, N'ISDEMU San Salvador', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (63, N'Fiscalía de San Marcos', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 99, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (64, N'Juzgado de Paz Tonacatepeque', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 110, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (65, N'Alcaldía de San Martín', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 109, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (66, N'Unidad Técnica Ejecutiva', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (67, N'Hotel Caja Marca', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (68, N'Juzgados de Sal Salvador ISIDRO', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (69, N'Jusgados de Integrado San Salvador', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (70, N'Hotel Jardín Celeste de Ataco', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 26, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (71, N'Ex edificio PGR Plafón', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (72, N'Granja de Izalco Ahuachapán', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 32, 1)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (73, N'Hogar Vicente de Paul San Jacinto', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (74, N'Hotel Crown Plaza', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (75, N'Hotel Sheraton-PGR', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (76, N'CAPRES', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (77, N'Escuela Militar Ciudad Merliot', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 5)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (78, N'Hotel Intercontinental', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (79, N'Ministerio de Hacienda', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (80, N'Círculo Militar', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (81, N'Junta de Proteción I', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (82, N'Junta de Protección II', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (83, N'Hotel Barcelo', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (84, N'Centro Nacional de la Judicatura Santa Ana', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 42, 2)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (85, N'Cárcel de Mujeres Ilopango', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 102, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (86, N'Juzgado de Civil La Escalón', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (87, N'Juzgado de Civil San Marcos', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 99, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (88, N'Juzgado de Civil Mejicanos', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 106, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (89, N'Centro Penal de Izalco', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 57, 3)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (90, N'Juzgado de Paz de Izalco', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 57, 3)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (91, N'Centro de Internamiento Sendero de La libertad Ilobasco', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 154, 9)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (92, N'Juzgado de Civil de Soyapango', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 104, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (93, N'Juzgado Militar de Instrucción Naval San Salvador', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (94, N'Juzgado de Paz de Gotera', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 222, 13)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (95, N'Centro de Inserción El Espino Ahuachapán', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 32, 1)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (96, N'Centro de Detención de Menores Mariona', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 107, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (97, N'Centro Judicial de Menores Ilobasco', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 154, 9)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (98, N'Alcaldía de Santa cruz Michapas', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 122, 7)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (99, N'Juzgado Segundo de Paz de Soyapango', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 104, 6)
GO
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (100, N'Juzgado Civil y Mercantil San Salvador', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 105, 6)
INSERT [dbo].[SGT_Lugares_Frecuentes] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id]) VALUES (101, N'CNJ San Miguel', N'', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), NULL, 213, 12)
SET IDENTITY_INSERT [dbo].[SGT_Lugares_Frecuentes] OFF
SET IDENTITY_INSERT [dbo].[SGT_Municipio] ON 

INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (1, N'Santa Tecla', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (2, N'Antiguo Cuscatlán', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (3, N'Chiltiupán', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (4, N'Ciudad Arce', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (5, N'Colón', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (6, N'Comasagua', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (7, N'Huizúcar', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (8, N'Jayaque', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (9, N'Jicalapa', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (10, N'La Libertad', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (11, N' Nuevo Cuscatlán', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (12, N'Quezaltepeque', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (13, N'San Juan Opico', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (14, N'Sacacoyo', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (15, N'San José Villanueva', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (16, N'San Matías', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (17, N'San Pablo Tacachico', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (18, N'Talnique', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (19, N'Tamanique', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (20, N'Teotepeque', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (21, N'Tepecoyo', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (22, N'Zaragoza', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (23, N'SAN PEDRO PUXTLA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (24, N'JUJUTLA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (25, N'APANECA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (26, N'CONCEPCION DE ATACO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (27, N'SAN FRANCISCO MENENDEZ', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (28, N'TACUBA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (29, N'TURIN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (30, N'EL REFUGIO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (31, N'ATIQUIZAYA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (32, N'AHUACHAPAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (33, N'SAN LORENZO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (34, N'GUAYMANGO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (35, N'METAPAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (36, N'SAN ANTONIO PAJONAL', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (37, N'SANTIAGO DE LA FRONTERA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (38, N'SANTA ROSA GUACHIPILIN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (39, N'MASAHUAT', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (40, N'TEXISTEPEQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (41, N'CANDELARIA DE LA FRONTERA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (42, N'SANTA ANA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (43, N'COATEPEQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (44, N'EL PORVENIR', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (45, N'SAN SEBASTIAN SALITRILLO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (46, N'CHALCHUAPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (47, N'EL CONGO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (48, N'SANTA ISABEL ISHUATAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (49, N'CUISNAHUAT', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (50, N'ACAJUTLA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (51, N'NAHULINGO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (52, N'CALUCO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (53, N'SAN ANTONIO DEL MONTE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (54, N'SONSONATE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (55, N'SAN JULIAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (56, N'ARMENIA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (57, N'IZALCO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (58, N'SANTA CATARINA MASAHUAT', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (59, N'SALCOATITAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (60, N'NAHUIZALCO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (61, N'JUAYUA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (62, N'SONZACATE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (63, N'SANTO DOMINGO DE GUZMAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (64, N'NUEVA CONCEPCION', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (65, N'AGUA CALIENTE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (66, N'LA PALMA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (67, N'SAN IGNACIO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (68, N'CITALA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (69, N'SAN FERNANDO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (70, N'LA REINA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (71, N'SAN FRANCISCO MORAZAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (72, N'TEJUTLA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (73, N'DULCE NOMBRE DE MARIA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (74, N'EL PARAISO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (75, N'SAN RAFAEL', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (76, N'SANTA RITA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (77, N'CONCEPCION QUEZALTEPEQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (78, N'CHALATENANGO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (79, N'NUEVA TRINIDAD', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (80, N'LAS VUELTAS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (81, N'OJOS DE AGUA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (82, N'SAN ISIDRO LABRADOR', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (83, N'CANCASQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (84, N'POTONICO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (85, N'SAN MIGUEL DE MERCEDES', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (86, N'SAN ANTONIO LOS RANCHOS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (87, N'AZACUALPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (88, N'SAN LUIS DEL CARMEN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (89, N'SAN FRANCISCO LEMPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (90, N'SAN ANTONIO DE LA CRUZ', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (91, N'NOMBRE DE JESUS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (92, N'LAS FLORES', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (93, N'ARCATAO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (94, N'COMALAPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (95, N'LA LAGUNA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (96, N'EL CARRIZAL', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (97, N'ROSARIO DE MORA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (98, N'PANCHIMALCO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (99, N'SAN MARCOS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
GO
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (100, N'SANTO TOMAS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (101, N'SANTIAGO TEXACUANGOS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (102, N'ILOPANGO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (103, N'CUSCATANCINGO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (104, N'SOYAPANGO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (105, N'SAN SALVADOR', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (106, N'MEJICANOS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (107, N'AYUTUXTEPEQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (108, N'CIUDAD DELGADO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (109, N'SAN MARTIN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (110, N'TONACATEPEQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (111, N'APOPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (112, N'NEJAPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (113, N'GUAZAPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (114, N'AGUILARES', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (115, N'EL PAISNAL', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (116, N'SUCHITOTO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (117, N'TENANCINGO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (118, N'SAN JOSE GUAYABAL', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (119, N'ORATORIO DE CONCEPCION', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (120, N'SAN BARTOLOME PERULAPIA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (121, N'SAN PEDRO PERULAPAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (122, N'SANTA CRUZ MICHAPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (123, N'MONTE SAN JUAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (124, N'EL ROSARIO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (125, N'SAN RAFAEL CEDROS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (126, N'COJUTEPEQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (127, N'EL CARMEN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (128, N'SAN CRISTOBAL', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (129, N'CANDELARIA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (130, N'SAN RAMON', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (131, N'SANTA CRUZ ANALQUITO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (132, N'SAN LUIS TALPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (133, N'OLOCUILTA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (134, N'SAN JUAN TALPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (135, N'EL ROSARIO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (136, N'SAN ANTONIO MASAHUAT', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (137, N'TAPALHUACA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (138, N'CUYULTITAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (139, N'SAN FRANCISCO CHINAMECA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (140, N'SAN JUAN TEPEZONTES', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (141, N'SANTIAGO NONUALCO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (142, N'SAN PEDRO MASAHUAT', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (143, N'SAN JUAN NONUALCO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (144, N'ZACATECOLUCA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (145, N'SAN RAFAEL OBRAJUELO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (146, N'SAN LUIS LA HERRADURA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (147, N'SAN PEDRO NONUALCO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (148, N'SANTA MARIA OSTUMA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (149, N'PARAISO DE OSORIO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (150, N'SAN EMIGDIO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (151, N'SAN MIGUEL TEPEZONTES', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (152, N'JERUSALEN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (153, N'MERCEDES LA CEIBA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (154, N'ILOBASCO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 9)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (155, N'SAN ISIDRO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 9)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (156, N'JUTIAPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 9)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (157, N'TEJUTEPEQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 9)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (158, N'CINQUERA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 9)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (159, N'SENSUNTEPEQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 9)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (160, N'VICTORIA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 9)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (161, N'GUACOTECTI', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 9)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (162, N'DOLORES', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 9)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (163, N'APASTEPEQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (164, N'SAN SEBASTIAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (165, N'VERAPAZ', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (166, N'SANTO DOMINGO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (167, N'SAN LORENZO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (168, N'TEPETITAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (169, N'SAN CAYETANO ISTEPEQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (170, N'GUADALUPE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (171, N'TECOLUCA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (172, N'SAN ILDEFONSO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (173, N'SANTA CLARA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (174, N'SAN ESTEBAN CATARINA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (175, N'SAN VICENTE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (176, N'ESTANZUELAS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (177, N'SAN AGUSTIN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (178, N'BERLIN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (179, N'NUEVA GRANADA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (180, N'EL TRIUNFO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (181, N'SAN BUENA VENTURA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (182, N'SANTIAGO DE MARIA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (183, N'JUCUAPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (184, N'ALEGRIA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (185, N'JIQUILISCO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (186, N'SANTA ELENA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (187, N'SAN FRANCISCO JAVIER', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (188, N'TECAPAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (189, N'CALIFORNIA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (190, N'OZATLAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (191, N'SANTA MARIA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (192, N'EREGUAYQUIN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (193, N'USULUTAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (194, N'CONCEPCION BATRES', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (195, N'SAN DIONISIO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (196, N'PUERTO EL TRIUNFO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (197, N'JUCUARAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (198, N'MERCEDES UMANA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (199, N'SESORI', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
GO
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (200, N'NUEVO EDEN DE SAN JUAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (201, N'SAN GERARDO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (202, N'SAN LUIS DE LA REINA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (203, N'CAROLINA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (204, N'SAN ANTONIO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (205, N'CIUDAD BARRIOS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (206, N'CHAPELTIQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (207, N'LOLOTIQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (208, N'MONCAGUA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (209, N'NUEVA GUADALUPE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (210, N'CHINAMECA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (211, N'SAN JORGE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (212, N'QUELEPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (213, N'SAN MIGUEL', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (214, N'SAN RAFAEL ORIENTE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (215, N'EL TRANSITO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (216, N'CHIRILAGUA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (217, N'ULUAZAPA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (218, N'COMACARAN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (219, N'LOLOTIQUILLO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (220, N'CHILANGA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (221, N'GUATAJIAGUA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (222, N'SAN FRANCISCO GOTERA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (223, N'SENSEMBRA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (224, N'YAMABAL', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (225, N'SAN CARLOS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (226, N'EL DIVISADERO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (227, N'JOCORO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (228, N'CORINTO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (229, N'SOCIEDAD', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (230, N'CACAOPERA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (231, N'SAN FERNANDO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (232, N'ARAMBALA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (233, N'PERQUIN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (234, N'JOCOAITIQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (235, N'TOROLA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (236, N'SAN ISIDRO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (237, N'EL ROSARIO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (238, N'MEANGUERA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (239, N'JOATECA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (240, N'SAN SIMON', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (241, N'GUALOCOCTI', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (242, N'DELICIAS DE CONCEPCION', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (243, N'YOLOAIQUIN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (244, N'OSICALA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (245, N'SAN ALEJO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (246, N'PASAQUINA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (247, N'SANTA ROSA DE LIMA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (248, N'EL SAUCE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (249, N'ANAMOROS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (250, N'CONCHAGUA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (251, N'INTIPUCA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (252, N'NUEVA ESPARTA', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (253, N'LISLIQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (254, N'POLOROS', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (255, N'CONCEPCION DE ORIENTE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (256, N'YUCUAIQUIN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (257, N'BOLIVAR', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (258, N'SAN JOSE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (259, N'YAYANTIQUE', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (260, N'EL CARMEN', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (261, N'LA UNION', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (262, N'MEANGUERA DEL GOLFO', 0, 0, CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0000000+00:00' AS DateTimeOffset), 14)
SET IDENTITY_INSERT [dbo].[SGT_Municipio] OFF
SET IDENTITY_INSERT [dbo].[SGT_Procuraduria] ON 

INSERT [dbo].[SGT_Procuraduria] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [address_id]) VALUES (2, N'Procuraduria auxiliar de Santa Ana', NULL, NULL, CAST(N'2019-11-04T10:15:26.5900000+00:00' AS DateTimeOffset), CAST(N'2019-11-04T10:16:39.7960000+00:00' AS DateTimeOffset), 1002)
INSERT [dbo].[SGT_Procuraduria] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [address_id]) VALUES (3, N'Procuraduría General de la República de El Salvador', NULL, NULL, CAST(N'2019-11-04T10:34:49.4000000+00:00' AS DateTimeOffset), CAST(N'2019-11-04T10:34:49.4000000+00:00' AS DateTimeOffset), 1003)
SET IDENTITY_INSERT [dbo].[SGT_Procuraduria] OFF
SET IDENTITY_INSERT [dbo].[SGT_Ruta] ON 

INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id]) VALUES (1, N'Aeropuerto', NULL, NULL, CAST(N'2019-10-07T01:31:14.4780000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T01:31:14.4780000+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id]) VALUES (2, N'San Salvador', NULL, NULL, CAST(N'2019-10-07T02:24:57.1570000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T03:16:46.2210000+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id]) VALUES (3, N'UAEM', NULL, NULL, CAST(N'2019-10-07T05:01:09.7730000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:01:09.7730000+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id]) VALUES (4, N'Interior', NULL, NULL, CAST(N'2019-10-07T05:01:16.5060000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:01:16.5060000+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id]) VALUES (5, N'San Marcos', NULL, NULL, CAST(N'2019-10-07T05:01:25.0110000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:01:25.0110000+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id]) VALUES (6, N'Ciudad Delgado', NULL, NULL, CAST(N'2019-10-07T05:01:37.1080000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:01:37.1080000+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id]) VALUES (7, N'Compensatorio', NULL, NULL, CAST(N'2019-10-07T05:01:47.6330000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:01:47.6330000+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id]) VALUES (1005, N'UES', NULL, NULL, CAST(N'2019-11-04T10:05:21.8750000+00:00' AS DateTimeOffset), CAST(N'2019-11-04T10:05:21.8750000+00:00' AS DateTimeOffset), NULL, 1)
SET IDENTITY_INSERT [dbo].[SGT_Ruta] OFF
SET IDENTITY_INSERT [dbo].[SGT_Unidad] ON 

INSERT [dbo].[SGT_Unidad] ([id], [name_unit], [created_by], [updated_by], [created_at], [updated_at]) VALUES (1, N'Penal', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Unidad] ([id], [name_unit], [created_by], [updated_by], [created_at], [updated_at]) VALUES (2, N'Servicio Social', NULL, NULL, CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset), CAST(N'2019-07-15T05:18:42.0870000+00:00' AS DateTimeOffset))
SET IDENTITY_INSERT [dbo].[SGT_Unidad] OFF
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [num_entry_bill], [date_entry_bill], [num_close_bill], [date_close_bill], [created_by], [updated_by], [created_at], [updated_at]) VALUES (1, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(N'2019-10-09T00:00:00.0000000+00:00' AS DateTimeOffset), N'UNO', 125368, CAST(N'2019-10-09T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, CAST(N'2019-10-07T05:10:10.8850000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:10:10.8850000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [num_entry_bill], [date_entry_bill], [num_close_bill], [date_close_bill], [created_by], [updated_by], [created_at], [updated_at]) VALUES (2, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(N'2019-10-09T00:00:00.0000000+00:00' AS DateTimeOffset), N'UNO', 125368, CAST(N'2019-10-09T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, CAST(N'2019-10-07T05:10:10.9680000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:10:10.9680000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [num_entry_bill], [date_entry_bill], [num_close_bill], [date_close_bill], [created_by], [updated_by], [created_at], [updated_at]) VALUES (3, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(N'2019-10-09T00:00:00.0000000+00:00' AS DateTimeOffset), N'UNO', 125368, CAST(N'2019-10-09T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, CAST(N'2019-10-07T05:10:10.9730000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:10:10.9730000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [num_entry_bill], [date_entry_bill], [num_close_bill], [date_close_bill], [created_by], [updated_by], [created_at], [updated_at]) VALUES (4, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(N'2019-10-09T00:00:00.0000000+00:00' AS DateTimeOffset), N'UNO', 125368, CAST(N'2019-10-09T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, CAST(N'2019-10-07T05:10:10.9800000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:10:10.9800000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [num_entry_bill], [date_entry_bill], [num_close_bill], [date_close_bill], [created_by], [updated_by], [created_at], [updated_at]) VALUES (5, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(N'2019-10-09T00:00:00.0000000+00:00' AS DateTimeOffset), N'UNO', 125368, CAST(N'2019-10-09T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, CAST(N'2019-10-07T05:10:10.9850000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:10:10.9850000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [num_entry_bill], [date_entry_bill], [num_close_bill], [date_close_bill], [created_by], [updated_by], [created_at], [updated_at]) VALUES (6, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(N'2019-10-09T00:00:00.0000000+00:00' AS DateTimeOffset), N'UNO', 125368, CAST(N'2019-10-09T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, CAST(N'2019-10-07T05:10:10.9910000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:10:10.9910000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [num_entry_bill], [date_entry_bill], [num_close_bill], [date_close_bill], [created_by], [updated_by], [created_at], [updated_at]) VALUES (7, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(N'2019-10-09T00:00:00.0000000+00:00' AS DateTimeOffset), N'UNO', 125368, CAST(N'2019-10-09T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, CAST(N'2019-10-07T05:10:10.9960000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:10:10.9960000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [num_entry_bill], [date_entry_bill], [num_close_bill], [date_close_bill], [created_by], [updated_by], [created_at], [updated_at]) VALUES (8, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(N'2019-10-09T00:00:00.0000000+00:00' AS DateTimeOffset), N'UNO', 125368, CAST(N'2019-10-09T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, CAST(N'2019-10-07T05:10:11.0010000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:10:11.0010000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [num_entry_bill], [date_entry_bill], [num_close_bill], [date_close_bill], [created_by], [updated_by], [created_at], [updated_at]) VALUES (9, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(N'2019-10-09T00:00:00.0000000+00:00' AS DateTimeOffset), N'UNO', 125368, CAST(N'2019-10-09T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, CAST(N'2019-10-07T05:10:11.0050000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:10:11.0050000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [num_entry_bill], [date_entry_bill], [num_close_bill], [date_close_bill], [created_by], [updated_by], [created_at], [updated_at]) VALUES (10, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(N'2019-10-09T00:00:00.0000000+00:00' AS DateTimeOffset), N'UNO', 125368, CAST(N'2019-10-09T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, CAST(N'2019-10-07T05:10:11.0100000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:10:11.0100000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [num_entry_bill], [date_entry_bill], [num_close_bill], [date_close_bill], [created_by], [updated_by], [created_at], [updated_at]) VALUES (11, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(N'2017-02-07T00:00:00.0000000+00:00' AS DateTimeOffset), N'Shell', 1, CAST(N'2017-02-07T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, CAST(N'2019-10-07T05:32:25.4300000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:32:25.4300000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [num_entry_bill], [date_entry_bill], [num_close_bill], [date_close_bill], [created_by], [updated_by], [created_at], [updated_at]) VALUES (12, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(N'2017-02-07T00:00:00.0000000+00:00' AS DateTimeOffset), N'Shell', 1, CAST(N'2017-02-07T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, CAST(N'2019-10-07T05:32:25.5050000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:32:25.5050000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [num_entry_bill], [date_entry_bill], [num_close_bill], [date_close_bill], [created_by], [updated_by], [created_at], [updated_at]) VALUES (13, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(N'2017-02-07T00:00:00.0000000+00:00' AS DateTimeOffset), N'Shell', 1, CAST(N'2017-02-07T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, CAST(N'2019-10-07T05:32:25.5120000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:32:25.5120000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [num_entry_bill], [date_entry_bill], [num_close_bill], [date_close_bill], [created_by], [updated_by], [created_at], [updated_at]) VALUES (14, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(N'2017-02-07T00:00:00.0000000+00:00' AS DateTimeOffset), N'Shell', 1, CAST(N'2017-02-07T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, CAST(N'2019-10-07T05:32:25.5170000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:32:25.5170000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [num_entry_bill], [date_entry_bill], [num_close_bill], [date_close_bill], [created_by], [updated_by], [created_at], [updated_at]) VALUES (15, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(N'2017-02-07T00:00:00.0000000+00:00' AS DateTimeOffset), N'Shell', 1, CAST(N'2017-02-07T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, CAST(N'2019-10-07T05:32:25.5210000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:32:25.5210000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [num_entry_bill], [date_entry_bill], [num_close_bill], [date_close_bill], [created_by], [updated_by], [created_at], [updated_at]) VALUES (16, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(N'2017-02-07T00:00:00.0000000+00:00' AS DateTimeOffset), N'Shell', 1, CAST(N'2017-02-07T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, CAST(N'2019-10-07T05:32:25.5260000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:32:25.5260000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [num_entry_bill], [date_entry_bill], [num_close_bill], [date_close_bill], [created_by], [updated_by], [created_at], [updated_at]) VALUES (17, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(N'2017-02-07T00:00:00.0000000+00:00' AS DateTimeOffset), N'Shell', 1, CAST(N'2017-02-07T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, CAST(N'2019-10-07T05:32:25.5320000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:32:25.5320000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [num_entry_bill], [date_entry_bill], [num_close_bill], [date_close_bill], [created_by], [updated_by], [created_at], [updated_at]) VALUES (18, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(N'2017-02-07T00:00:00.0000000+00:00' AS DateTimeOffset), N'Shell', 1, CAST(N'2017-02-07T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, CAST(N'2019-10-07T05:32:25.5360000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:32:25.5360000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [num_entry_bill], [date_entry_bill], [num_close_bill], [date_close_bill], [created_by], [updated_by], [created_at], [updated_at]) VALUES (19, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(N'2017-02-07T00:00:00.0000000+00:00' AS DateTimeOffset), N'Shell', 1, CAST(N'2017-02-07T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, CAST(N'2019-10-07T05:32:25.5390000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:32:25.5390000+00:00' AS DateTimeOffset))
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [num_entry_bill], [date_entry_bill], [num_close_bill], [date_close_bill], [created_by], [updated_by], [created_at], [updated_at]) VALUES (20, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(N'2017-02-07T00:00:00.0000000+00:00' AS DateTimeOffset), N'Shell', 1, CAST(N'2017-02-07T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, CAST(N'2019-10-07T05:32:25.5460000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T05:32:25.5460000+00:00' AS DateTimeOffset))
SET IDENTITY_INSERT [dbo].[SGT_Vehiculo] ON 

INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (1, N'Toyota', N'Corolla', N'N1234', N'Y1253364', N'64EK125369', 4, N'Funcional', NULL, NULL, CAST(N'2019-09-05T01:55:28.4160000+00:00' AS DateTimeOffset), CAST(N'2019-09-05T01:55:28.4230000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (2, N'Hyndai', N'Elantra', N'N1235', N'Y1253365', N'64EK125368', 4, N'Dañado', NULL, NULL, CAST(N'2019-09-05T01:59:18.9820000+00:00' AS DateTimeOffset), CAST(N'2019-10-02T05:05:27.4940000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (3, N'Chevrolet', N'Aveo', N'N1236', N'Y1253365', N'64EK125368', 4, N'Mantenimiento', NULL, NULL, CAST(N'2019-09-05T02:01:19.5020000+00:00' AS DateTimeOffset), CAST(N'2019-09-05T02:01:19.5120000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (4, N'Chevrolet', N'Spark', N'N1237', N'Y1253365', N'64EK125368', 4, N'Funcional', NULL, NULL, CAST(N'2019-09-05T02:14:55.9500000+00:00' AS DateTimeOffset), CAST(N'2019-10-02T04:55:30.3300000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (5, N'Chevrolet', N'Aveo', N'P1238', N'Y1253365', N'64EK125368', 4, N'Mantenimiento', NULL, NULL, CAST(N'2019-09-05T02:19:54.7480000+00:00' AS DateTimeOffset), CAST(N'2019-10-02T05:02:24.4840000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (17, N'BMW', N'I369', N'P36985', N'1453369', N'640KLOP963', 6, N'Funcional', NULL, NULL, CAST(N'2019-10-02T02:48:52.8170000+00:00' AS DateTimeOffset), CAST(N'2019-10-02T02:48:52.8200000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (18, N'Hyndai', N'Accent', N'P1237', N'E123658', N'HJ623659123', 4, N'Mantenimiento', NULL, NULL, CAST(N'2019-10-02T02:58:40.4750000+00:00' AS DateTimeOffset), CAST(N'2019-10-02T05:05:32.9240000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (1017, N'BWM', N'X3 sDrive30i', N'N2369', N'Y1253364', N'64TH156324', 6, N'Funcional', NULL, NULL, CAST(N'2019-10-07T04:53:42.8730000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T04:53:42.8730000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (1018, N'Volkswagen', N'Atlas', N'N7896', N'HK15236', N'65QW123659', 4, N'Funcional', NULL, NULL, CAST(N'2019-10-07T04:54:49.5170000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T04:54:49.5170000+00:00' AS DateTimeOffset), NULL)
INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (1019, N'Volswagen', N'Beettle', N'N5698', N'HK15236', N'65QW1235896', 6, N'Funcional', NULL, NULL, CAST(N'2019-10-07T04:55:41.2630000+00:00' AS DateTimeOffset), CAST(N'2019-10-07T04:55:41.2630000+00:00' AS DateTimeOffset), NULL)
SET IDENTITY_INSERT [dbo].[SGT_Vehiculo] OFF
INSERT [dbo].[SIS_Usuarios] ([Id], [CodigoUsuario], [ApellidosUsuario], [NombresUsuario], [ClaveUsuario], [CorreoElectronicoUsuario], [MovilMensajeCortoUsuario], [CodigoUsuarioSupervisor], [ActivoInactivoUsuario], [TiempoRefrescoPantallaSegundos], [CodigoEstiloPantalla], [CodigoZonaContacto], [CodigoCallCenter], [CodigoRolUsuario], [ProveedorServicioCelular], [UbicacionFisicaUsuario]) VALUES (2, N'DM15012   ', N'Díaz Mejía', N'Carlos Dalton', N'dm15012   ', N'dm15012@ues.edu.sv', NULL, NULL, N'A', NULL, N'X         ', NULL, NULL, NULL, NULL, N'Mi Casita')
INSERT [dbo].[SIS_Usuarios] ([Id], [CodigoUsuario], [ApellidosUsuario], [NombresUsuario], [ClaveUsuario], [CorreoElectronicoUsuario], [MovilMensajeCortoUsuario], [CodigoUsuarioSupervisor], [ActivoInactivoUsuario], [TiempoRefrescoPantallaSegundos], [CodigoEstiloPantalla], [CodigoZonaContacto], [CodigoCallCenter], [CodigoRolUsuario], [ProveedorServicioCelular], [UbicacionFisicaUsuario]) VALUES (1, N'01        ', N'Toloza', N'Kevin', N'123456    ', N'th15003@ues.edu.sv', NULL, NULL, N'A', NULL, NULL, NULL, NULL, NULL, NULL, N'Ues')
INSERT [dbo].[SIS_Usuarios] ([Id], [CodigoUsuario], [ApellidosUsuario], [NombresUsuario], [ClaveUsuario], [CorreoElectronicoUsuario], [MovilMensajeCortoUsuario], [CodigoUsuarioSupervisor], [ActivoInactivoUsuario], [TiempoRefrescoPantallaSegundos], [CodigoEstiloPantalla], [CodigoZonaContacto], [CodigoCallCenter], [CodigoRolUsuario], [ProveedorServicioCelular], [UbicacionFisicaUsuario]) VALUES (3, N'03        ', N'Peñate Aviles', N'Karen Elvira', N'dsi_2019  ', N'karen.peñate@ues.edu.sv', NULL, NULL, N'A', NULL, NULL, NULL, NULL, NULL, NULL, N'Ues')
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__vehicle__0C04E256C9E5B3EA]    Script Date: 09/11/2019 11:35:21 a.m. ******/
ALTER TABLE [dbo].[SGT_Vehiculo] ADD UNIQUE NONCLUSTERED 
(
	[plate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SGT_Folo6_Aprovado] ADD  DEFAULT ((0)) FOR [request_unit_approve]
GO
ALTER TABLE [dbo].[SGT_Vale] ADD  DEFAULT (N'disponible') FOR [condition]
GO
ALTER TABLE [dbo].[SGT_Vehiculo] ADD  DEFAULT (N'Funcional') FOR [state]
GO
ALTER TABLE [dbo].[SGT_Direccion]  WITH CHECK ADD FOREIGN KEY([city_id])
REFERENCES [dbo].[SGT_Municipio] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Direccion]  WITH CHECK ADD FOREIGN KEY([department_id])
REFERENCES [dbo].[SGT_Departamento] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Empleado]  WITH CHECK ADD FOREIGN KEY([id_boss])
REFERENCES [dbo].[SGT_Empleado] ([id])
GO
ALTER TABLE [dbo].[SGT_Empleado]  WITH CHECK ADD FOREIGN KEY([procuraduria_id])
REFERENCES [dbo].[SGT_Procuraduria] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Empleado]  WITH CHECK ADD FOREIGN KEY([unit_id])
REFERENCES [dbo].[SGT_Unidad] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Folo6]  WITH CHECK ADD FOREIGN KEY([employee_id])
REFERENCES [dbo].[SGT_Empleado] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Folo6]  WITH CHECK ADD FOREIGN KEY([procuraduria_id])
REFERENCES [dbo].[SGT_Procuraduria] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Folo6_Aprovado]  WITH CHECK ADD FOREIGN KEY([aprove_boss_id])
REFERENCES [dbo].[SGT_Empleado] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Folo6_Aprovado]  WITH CHECK ADD FOREIGN KEY([aprove_tunit_boss_id])
REFERENCES [dbo].[SGT_Empleado] ([id])
GO
ALTER TABLE [dbo].[SGT_Folo6_Aprovado]  WITH CHECK ADD FOREIGN KEY([folo06_id])
REFERENCES [dbo].[SGT_Folo6] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Lugares_Contenedor]  WITH CHECK ADD FOREIGN KEY([address_id])
REFERENCES [dbo].[SGT_Direccion] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Lugares_Contenedor]  WITH CHECK ADD FOREIGN KEY([folo_id])
REFERENCES [dbo].[SGT_Folo6] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Lugares_Contenedor]  WITH CHECK ADD FOREIGN KEY([frequent_place_id])
REFERENCES [dbo].[SGT_Lugares_Frecuentes] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Lugares_Frecuentes]  WITH CHECK ADD FOREIGN KEY([city_id])
REFERENCES [dbo].[SGT_Municipio] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Lugares_Frecuentes]  WITH CHECK ADD FOREIGN KEY([department_id])
REFERENCES [dbo].[SGT_Departamento] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Lugares_Frecuentes]  WITH CHECK ADD FOREIGN KEY([procuraduria_id])
REFERENCES [dbo].[SGT_Procuraduria] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Municipio]  WITH CHECK ADD FOREIGN KEY([department_id])
REFERENCES [dbo].[SGT_Departamento] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Procuraduria]  WITH CHECK ADD FOREIGN KEY([address_id])
REFERENCES [dbo].[SGT_Direccion] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Ruta]  WITH CHECK ADD FOREIGN KEY([procuraduria_id])
REFERENCES [dbo].[SGT_Procuraduria] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Ruta]  WITH CHECK ADD FOREIGN KEY([route_conditions_id])
REFERENCES [dbo].[SGT_Condiciones_Ruta] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Vales_Asignados_Folo6]  WITH CHECK ADD FOREIGN KEY([folo6_id])
REFERENCES [dbo].[SGT_Folo6] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Vales_Asignados_Folo6]  WITH CHECK ADD FOREIGN KEY([num_voucher])
REFERENCES [dbo].[SGT_Vale] ([num_voucher])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Vales_Asignados_Procuraduria]  WITH CHECK ADD FOREIGN KEY([num_voucher])
REFERENCES [dbo].[SGT_Vale] ([num_voucher])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Vales_Asignados_Procuraduria]  WITH CHECK ADD FOREIGN KEY([procuraduria_id])
REFERENCES [dbo].[SGT_Procuraduria] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Vehiculo]  WITH CHECK ADD FOREIGN KEY([procuraduria_id])
REFERENCES [dbo].[SGT_Procuraduria] ([id])
ON DELETE SET NULL
GO
ALTER DATABASE [sigestran] SET  READ_WRITE 
GO
