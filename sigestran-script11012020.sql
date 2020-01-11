USE [master]
GO
/****** Object:  Database [sigestran]    Script Date: 10/01/2020 09:00:41 p.m. ******/
CREATE DATABASE [sigestran]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sigestran', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\sigestran.mdf' ,  FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'sigestran_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\sigestran_log.ldf' ,  FILEGROWTH = 10%)
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
/****** Object:  User [dm15012]    Script Date: 10/01/2020 09:00:41 p.m. ******/
CREATE USER [dm15012] FOR LOGIN [dm15012] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [dm15012]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [dm15012]
GO
ALTER ROLE [db_datareader] ADD MEMBER [dm15012]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [dm15012]
GO
/****** Object:  Table [dbo].[SGT_Asignacion_Folo6_Motorista]    Script Date: 10/01/2020 09:00:42 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Asignacion_Folo6_Motorista](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[folo06_id] [int] NULL,
	[driver_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Condiciones_Ruta]    Script Date: 10/01/2020 09:00:42 p.m. ******/
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
	[monday_frequency] [int] NOT NULL,
	[tuesday_frequency] [int] NOT NULL,
	[wednesday_frequency] [int] NOT NULL,
	[thursday_frequency] [int] NOT NULL,
	[friday_frequency] [int] NOT NULL,
	[saturday_frequency] [int] NOT NULL,
	[sunday_frequency] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Departamento]    Script Date: 10/01/2020 09:00:42 p.m. ******/
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
/****** Object:  Table [dbo].[SGT_Direccion]    Script Date: 10/01/2020 09:00:42 p.m. ******/
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
	[container_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Empleado]    Script Date: 10/01/2020 09:00:42 p.m. ******/
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
/****** Object:  Table [dbo].[SGT_FacturaCompra]    Script Date: 10/01/2020 09:00:42 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_FacturaCompra](
	[num_bill] [bigint] NOT NULL,
	[date_entry] [datetimeoffset](7) NOT NULL,
	[provider] [nvarchar](255) NOT NULL,
	[for_month] [int] NOT NULL,
	[for_year] [int] NOT NULL,
	[total] [decimal](10, 2) NOT NULL,
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[num_bill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_FacturaLiquidacion]    Script Date: 10/01/2020 09:00:42 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_FacturaLiquidacion](
	[num_bill] [bigint] NOT NULL,
	[date_close] [datetimeoffset](7) NOT NULL,
	[provider] [nvarchar](255) NOT NULL,
	[total] [decimal](10, 2) NOT NULL,
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[num_bill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Folo6]    Script Date: 10/01/2020 09:00:42 p.m. ******/
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
/****** Object:  Table [dbo].[SGT_Folo6_Aprovado]    Script Date: 10/01/2020 09:00:42 p.m. ******/
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
	[driver_assigned] [bit] NULL,
	[car] [bit] NULL,
	[gasoline] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Lugar_Frecuente]    Script Date: 10/01/2020 09:00:42 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Lugar_Frecuente](
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
	[route_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Lugares_Contenedor]    Script Date: 10/01/2020 09:00:42 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Lugares_Contenedor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date_of_visit] [date] NULL,
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[folo_id] [int] NULL,
	[frequent_place_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Mision]    Script Date: 10/01/2020 09:00:42 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Mision](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[active] [bit] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[procuraduria_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Motorista]    Script Date: 10/01/2020 09:00:42 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Motorista](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](75) NOT NULL,
	[last_name] [nvarchar](75) NOT NULL,
	[birth_date] [datetimeoffset](7) NOT NULL,
	[driver_license] [nvarchar](20) NOT NULL,
	[license_type] [nvarchar](10) NOT NULL,
	[license_due_date] [datetimeoffset](7) NOT NULL,
	[active] [bit] NULL,
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
/****** Object:  Table [dbo].[SGT_Municipio]    Script Date: 10/01/2020 09:00:42 p.m. ******/
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
/****** Object:  Table [dbo].[SGT_Procuraduria]    Script Date: 10/01/2020 09:00:42 p.m. ******/
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
	[enabled] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Rol]    Script Date: 10/01/2020 09:00:42 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Rol](
	[codigo_rol] [nvarchar](10) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Ruta]    Script Date: 10/01/2020 09:00:42 p.m. ******/
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
	[enabled] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Unidad]    Script Date: 10/01/2020 09:00:42 p.m. ******/
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
/****** Object:  Table [dbo].[SGT_Usuario]    Script Date: 10/01/2020 09:00:42 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Usuario](
	[codigo_usuario] [nvarchar](10) NOT NULL,
	[apellidos_usuario] [nvarchar](50) NOT NULL,
	[nombres_usuarios] [nvarchar](50) NOT NULL,
	[correo_electronico_usuario] [nvarchar](100) NOT NULL,
	[activo_inactivousuario] [bit] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_UsuarioRol]    Script Date: 10/01/2020 09:00:42 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_UsuarioRol](
	[codigo_usuario] [nvarchar](10) NOT NULL,
	[codigo_rol] [nvarchar](10) NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_usuario] ASC,
	[codigo_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Vale]    Script Date: 10/01/2020 09:00:42 p.m. ******/
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
	[created_by] [int] NULL,
	[updated_by] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[num_entry_bill] [bigint] NULL,
	[num_close_bill] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[num_voucher] ASC,
	[voucher_provider] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Vales_Asignados_Folo6]    Script Date: 10/01/2020 09:00:42 p.m. ******/
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
/****** Object:  Table [dbo].[SGT_Vales_Asignados_Procuraduria]    Script Date: 10/01/2020 09:00:42 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Vales_Asignados_Procuraduria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date_voucher_procu] [datetimeoffset](7) NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[procuraduria_id] [int] NULL,
	[num_voucher] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Vehiculo]    Script Date: 10/01/2020 09:00:42 p.m. ******/
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
	[is_traveling] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGT_Vehiculo_Asignado_Folo6]    Script Date: 10/01/2020 09:00:42 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGT_Vehiculo_Asignado_Folo6](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mileage] [int] NULL,
	[end_mileage] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[vehicle_id] [int] NULL,
	[folo06_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIS_Perfiles]    Script Date: 10/01/2020 09:00:42 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIS_Perfiles](
	[CodigoPerfil] [char](10) NOT NULL,
	[NombrePerfil] [varchar](100) NOT NULL,
 CONSTRAINT [PK_SIS_Perfiles] PRIMARY KEY CLUSTERED 
(
	[CodigoPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIS_Usuarios]    Script Date: 10/01/2020 09:00:42 p.m. ******/
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
	[UbicacionFisicaUsuario] [varchar](250) NOT NULL,
 CONSTRAINT [PK_SIS_Usuarios] PRIMARY KEY CLUSTERED 
(
	[CodigoUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIS_UsuariosPorPerfil]    Script Date: 10/01/2020 09:00:42 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIS_UsuariosPorPerfil](
	[CodigoPerfil] [char](10) NOT NULL,
	[CodigoUsuario] [char](10) NOT NULL,
 CONSTRAINT [PK_SIS_UsuariosPorPerfil] PRIMARY KEY CLUSTERED 
(
	[CodigoPerfil] ASC,
	[CodigoUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SGT_Asignacion_Folo6_Motorista] ON 

INSERT [dbo].[SGT_Asignacion_Folo6_Motorista] ([id], [created_at], [updated_at], [folo06_id], [driver_id]) VALUES (1, CAST(0x07D0BCAB68278B400B0000 AS DateTimeOffset), CAST(0x07D0BCAB68278B400B0000 AS DateTimeOffset), 1007, 1)
INSERT [dbo].[SGT_Asignacion_Folo6_Motorista] ([id], [created_at], [updated_at], [folo06_id], [driver_id]) VALUES (2, CAST(0x07A051E6861E8C400B0000 AS DateTimeOffset), CAST(0x07A051E6861E8C400B0000 AS DateTimeOffset), 1008, 1)
INSERT [dbo].[SGT_Asignacion_Folo6_Motorista] ([id], [created_at], [updated_at], [folo06_id], [driver_id]) VALUES (3, CAST(0x0790BBE099B691400B0000 AS DateTimeOffset), CAST(0x0790BBE099B691400B0000 AS DateTimeOffset), 1012, 2)
INSERT [dbo].[SGT_Asignacion_Folo6_Motorista] ([id], [created_at], [updated_at], [folo06_id], [driver_id]) VALUES (4, CAST(0x07E01007F1B691400B0000 AS DateTimeOffset), CAST(0x07E01007F1B691400B0000 AS DateTimeOffset), 1012, 2)
INSERT [dbo].[SGT_Asignacion_Folo6_Motorista] ([id], [created_at], [updated_at], [folo06_id], [driver_id]) VALUES (5, CAST(0x0700972FC7B791400B0000 AS DateTimeOffset), CAST(0x0700972FC7B791400B0000 AS DateTimeOffset), 1014, 2)
INSERT [dbo].[SGT_Asignacion_Folo6_Motorista] ([id], [created_at], [updated_at], [folo06_id], [driver_id]) VALUES (6, CAST(0x078082A271BB91400B0000 AS DateTimeOffset), CAST(0x078082A271BB91400B0000 AS DateTimeOffset), 1010, 1)
INSERT [dbo].[SGT_Asignacion_Folo6_Motorista] ([id], [created_at], [updated_at], [folo06_id], [driver_id]) VALUES (7, CAST(0x07E051F60B1797400B0000 AS DateTimeOffset), CAST(0x07E051F60B1797400B0000 AS DateTimeOffset), 1022, 7)
INSERT [dbo].[SGT_Asignacion_Folo6_Motorista] ([id], [created_at], [updated_at], [folo06_id], [driver_id]) VALUES (8, CAST(0x07F0C31B231797400B0000 AS DateTimeOffset), CAST(0x07F0C31B231797400B0000 AS DateTimeOffset), 1022, 7)
INSERT [dbo].[SGT_Asignacion_Folo6_Motorista] ([id], [created_at], [updated_at], [folo06_id], [driver_id]) VALUES (9, CAST(0x0760FC39DD1897400B0000 AS DateTimeOffset), CAST(0x0760FC39DD1897400B0000 AS DateTimeOffset), 1024, 7)
INSERT [dbo].[SGT_Asignacion_Folo6_Motorista] ([id], [created_at], [updated_at], [folo06_id], [driver_id]) VALUES (10, CAST(0x07A01B0AE51897400B0000 AS DateTimeOffset), CAST(0x07A01B0AE51897400B0000 AS DateTimeOffset), 1025, 7)
SET IDENTITY_INSERT [dbo].[SGT_Asignacion_Folo6_Motorista] OFF
SET IDENTITY_INSERT [dbo].[SGT_Condiciones_Ruta] ON 

INSERT [dbo].[SGT_Condiciones_Ruta] ([id], [monday], [tuesday], [wednesday], [thursday], [friday], [saturday], [sunday], [created_at], [updated_at], [monday_frequency], [tuesday_frequency], [wednesday_frequency], [thursday_frequency], [friday_frequency], [saturday_frequency], [sunday_frequency]) VALUES (1, 1, 1, 1, 1, 1, 1, 1, CAST(0x0750F277915456400B0000 AS DateTimeOffset), CAST(0x0750F277915456400B0000 AS DateTimeOffset), 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[SGT_Condiciones_Ruta] ([id], [monday], [tuesday], [wednesday], [thursday], [friday], [saturday], [sunday], [created_at], [updated_at], [monday_frequency], [tuesday_frequency], [wednesday_frequency], [thursday_frequency], [friday_frequency], [saturday_frequency], [sunday_frequency]) VALUES (2, 1, 0, 1, 0, 1, 0, 0, CAST(0x07408BB2483496400B0000 AS DateTimeOffset), CAST(0x07A041F48B3496400B0000 AS DateTimeOffset), 2, 0, 4, 0, 3, 0, 0)
INSERT [dbo].[SGT_Condiciones_Ruta] ([id], [monday], [tuesday], [wednesday], [thursday], [friday], [saturday], [sunday], [created_at], [updated_at], [monday_frequency], [tuesday_frequency], [wednesday_frequency], [thursday_frequency], [friday_frequency], [saturday_frequency], [sunday_frequency]) VALUES (3, 1, 1, 0, 0, 0, 0, 0, CAST(0x07D0EC5D673796400B0000 AS DateTimeOffset), CAST(0x07D0EC5D673796400B0000 AS DateTimeOffset), 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[SGT_Condiciones_Ruta] ([id], [monday], [tuesday], [wednesday], [thursday], [friday], [saturday], [sunday], [created_at], [updated_at], [monday_frequency], [tuesday_frequency], [wednesday_frequency], [thursday_frequency], [friday_frequency], [saturday_frequency], [sunday_frequency]) VALUES (4, 1, 1, 0, 0, 0, 0, 0, CAST(0x0710B0786C3796400B0000 AS DateTimeOffset), CAST(0x0710B0786C3796400B0000 AS DateTimeOffset), 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[SGT_Condiciones_Ruta] ([id], [monday], [tuesday], [wednesday], [thursday], [friday], [saturday], [sunday], [created_at], [updated_at], [monday_frequency], [tuesday_frequency], [wednesday_frequency], [thursday_frequency], [friday_frequency], [saturday_frequency], [sunday_frequency]) VALUES (5, 1, 0, 1, 0, 0, 0, 0, CAST(0x07B05EDB8D1498400B0000 AS DateTimeOffset), CAST(0x07B05EDB8D1498400B0000 AS DateTimeOffset), 2, 0, 3, 0, 0, 0, 0)
INSERT [dbo].[SGT_Condiciones_Ruta] ([id], [monday], [tuesday], [wednesday], [thursday], [friday], [saturday], [sunday], [created_at], [updated_at], [monday_frequency], [tuesday_frequency], [wednesday_frequency], [thursday_frequency], [friday_frequency], [saturday_frequency], [sunday_frequency]) VALUES (6, 0, 1, 0, 0, 0, 1, 0, CAST(0x07008B851A1698400B0000 AS DateTimeOffset), CAST(0x0780452C531A98400B0000 AS DateTimeOffset), 0, 3, 0, 0, 0, 4, 0)
INSERT [dbo].[SGT_Condiciones_Ruta] ([id], [monday], [tuesday], [wednesday], [thursday], [friday], [saturday], [sunday], [created_at], [updated_at], [monday_frequency], [tuesday_frequency], [wednesday_frequency], [thursday_frequency], [friday_frequency], [saturday_frequency], [sunday_frequency]) VALUES (7, 0, 0, 0, 0, 0, 0, 0, CAST(0x07708A0E6D1698400B0000 AS DateTimeOffset), CAST(0x07708A0E6D1698400B0000 AS DateTimeOffset), 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[SGT_Condiciones_Ruta] ([id], [monday], [tuesday], [wednesday], [thursday], [friday], [saturday], [sunday], [created_at], [updated_at], [monday_frequency], [tuesday_frequency], [wednesday_frequency], [thursday_frequency], [friday_frequency], [saturday_frequency], [sunday_frequency]) VALUES (8, 0, 1, 0, 1, 0, 0, 0, CAST(0x07C0A04F1F1798400B0000 AS DateTimeOffset), CAST(0x07C0A04F1F1798400B0000 AS DateTimeOffset), 0, 3, 0, 2, 0, 0, 0)
INSERT [dbo].[SGT_Condiciones_Ruta] ([id], [monday], [tuesday], [wednesday], [thursday], [friday], [saturday], [sunday], [created_at], [updated_at], [monday_frequency], [tuesday_frequency], [wednesday_frequency], [thursday_frequency], [friday_frequency], [saturday_frequency], [sunday_frequency]) VALUES (9, 1, 0, 1, 0, 0, 0, 0, CAST(0x07B046A8991798400B0000 AS DateTimeOffset), CAST(0x07B046A8991798400B0000 AS DateTimeOffset), 2, 0, 3, 0, 0, 0, 0)
INSERT [dbo].[SGT_Condiciones_Ruta] ([id], [monday], [tuesday], [wednesday], [thursday], [friday], [saturday], [sunday], [created_at], [updated_at], [monday_frequency], [tuesday_frequency], [wednesday_frequency], [thursday_frequency], [friday_frequency], [saturday_frequency], [sunday_frequency]) VALUES (10, 1, 1, 1, 1, 1, 1, 1, CAST(0x07C0F2C50A1898400B0000 AS DateTimeOffset), CAST(0x07C0F2C50A1898400B0000 AS DateTimeOffset), 2, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SGT_Condiciones_Ruta] ([id], [monday], [tuesday], [wednesday], [thursday], [friday], [saturday], [sunday], [created_at], [updated_at], [monday_frequency], [tuesday_frequency], [wednesday_frequency], [thursday_frequency], [friday_frequency], [saturday_frequency], [sunday_frequency]) VALUES (11, 0, 0, 0, 0, 0, 0, 0, CAST(0x07D08DEAD91998400B0000 AS DateTimeOffset), CAST(0x07D08DEAD91998400B0000 AS DateTimeOffset), 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[SGT_Condiciones_Ruta] ([id], [monday], [tuesday], [wednesday], [thursday], [friday], [saturday], [sunday], [created_at], [updated_at], [monday_frequency], [tuesday_frequency], [wednesday_frequency], [thursday_frequency], [friday_frequency], [saturday_frequency], [sunday_frequency]) VALUES (12, 1, 0, 0, 1, 0, 0, 0, CAST(0x0730310BE81998400B0000 AS DateTimeOffset), CAST(0x07A04184101B98400B0000 AS DateTimeOffset), 1, 0, 0, 1, 0, 0, 0)
INSERT [dbo].[SGT_Condiciones_Ruta] ([id], [monday], [tuesday], [wednesday], [thursday], [friday], [saturday], [sunday], [created_at], [updated_at], [monday_frequency], [tuesday_frequency], [wednesday_frequency], [thursday_frequency], [friday_frequency], [saturday_frequency], [sunday_frequency]) VALUES (13, 1, 0, 0, 1, 0, 0, 0, CAST(0x07C08649228E98400B0000 AS DateTimeOffset), CAST(0x07C08649228E98400B0000 AS DateTimeOffset), 1, 0, 0, 1, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[SGT_Condiciones_Ruta] OFF
SET IDENTITY_INSERT [dbo].[SGT_Departamento] ON 

INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (1, N'Ahuachapan', NULL, NULL, CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (2, N'Santa Ana', NULL, NULL, CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (3, N'Sonsonate', NULL, NULL, CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (4, N'Chalatenango', NULL, NULL, CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (5, N'La Libertad', NULL, NULL, CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (6, N'San Salvador', NULL, NULL, CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (7, N'Cuscatlán', NULL, NULL, CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (8, N'La Paz', NULL, NULL, CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (9, N'Cabañas', NULL, NULL, CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (10, N'San Vicente', NULL, NULL, CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (11, N'Usulután', NULL, NULL, CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (12, N'San Miguel', NULL, NULL, CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (13, N'Morazán', NULL, NULL, CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_Departamento] ([id], [name], [created_by], [updated_by], [created_at], [updated_at]) VALUES (14, N'La Unión', NULL, NULL, CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset))
SET IDENTITY_INSERT [dbo].[SGT_Departamento] OFF
SET IDENTITY_INSERT [dbo].[SGT_Direccion] ON 

INSERT [dbo].[SGT_Direccion] ([id], [detail], [created_by], [updated_by], [created_at], [updated_at], [city_id], [department_id], [name], [container_id]) VALUES (1, N'Isla conejo en el trifinio', NULL, NULL, CAST(0x07A0540EDE1E3B400B0000 AS DateTimeOffset), CAST(0x07A0540EDE1E3B400B0000 AS DateTimeOffset), 262, 14, N'Isla conejo', NULL)
INSERT [dbo].[SGT_Direccion] ([id], [detail], [created_by], [updated_by], [created_at], [updated_at], [city_id], [department_id], [name], [container_id]) VALUES (1002, N'San Miguel', NULL, NULL, CAST(0x07808FF5F95556400B0000 AS DateTimeOffset), CAST(0x07A055DB805856400B0000 AS DateTimeOffset), 205, 12, NULL, NULL)
INSERT [dbo].[SGT_Direccion] ([id], [detail], [created_by], [updated_by], [created_at], [updated_at], [city_id], [department_id], [name], [container_id]) VALUES (1003, N'San Salvador', NULL, NULL, CAST(0x07E0AC0BAF5856400B0000 AS DateTimeOffset), CAST(0x07E0AC0BAF5856400B0000 AS DateTimeOffset), 105, 6, NULL, NULL)
INSERT [dbo].[SGT_Direccion] ([id], [detail], [created_by], [updated_by], [created_at], [updated_at], [city_id], [department_id], [name], [container_id]) VALUES (1004, N'Calle principal', NULL, NULL, CAST(0x07C01D636BAD5C400B0000 AS DateTimeOffset), CAST(0x07C01D636BAD5C400B0000 AS DateTimeOffset), 54, 3, N'Alcaldia', NULL)
INSERT [dbo].[SGT_Direccion] ([id], [detail], [created_by], [updated_by], [created_at], [updated_at], [city_id], [department_id], [name], [container_id]) VALUES (2004, N'Calle Prueba', NULL, NULL, CAST(0x07302D56221B8D400B0000 AS DateTimeOffset), CAST(0x0710023803178E400B0000 AS DateTimeOffset), 105, 6, NULL, NULL)
INSERT [dbo].[SGT_Direccion] ([id], [detail], [created_by], [updated_by], [created_at], [updated_at], [city_id], [department_id], [name], [container_id]) VALUES (2005, N'213466548712', NULL, NULL, CAST(0x07F0DC5D949092400B0000 AS DateTimeOffset), CAST(0x07E0BB838A9B92400B0000 AS DateTimeOffset), 99, 6, NULL, NULL)
INSERT [dbo].[SGT_Direccion] ([id], [detail], [created_by], [updated_by], [created_at], [updated_at], [city_id], [department_id], [name], [container_id]) VALUES (2006, N'olocity', NULL, NULL, CAST(0x0790D0D64A9192400B0000 AS DateTimeOffset), CAST(0x0780CEC8F19B92400B0000 AS DateTimeOffset), 113, 6, NULL, NULL)
INSERT [dbo].[SGT_Direccion] ([id], [detail], [created_by], [updated_by], [created_at], [updated_at], [city_id], [department_id], [name], [container_id]) VALUES (2007, N'dasdasdas', NULL, NULL, CAST(0x07509E765E9192400B0000 AS DateTimeOffset), CAST(0x0710C3E5849492400B0000 AS DateTimeOffset), 129, 7, NULL, NULL)
INSERT [dbo].[SGT_Direccion] ([id], [detail], [created_by], [updated_by], [created_at], [updated_at], [city_id], [department_id], [name], [container_id]) VALUES (2008, N'Prueba piloto', NULL, NULL, CAST(0x071083D71F9392400B0000 AS DateTimeOffset), CAST(0x078017D2859792400B0000 AS DateTimeOffset), 192, 11, NULL, NULL)
INSERT [dbo].[SGT_Direccion] ([id], [detail], [created_by], [updated_by], [created_at], [updated_at], [city_id], [department_id], [name], [container_id]) VALUES (2009, N'dsadada', NULL, NULL, CAST(0x0750262D9A9492400B0000 AS DateTimeOffset), CAST(0x071084F4409A92400B0000 AS DateTimeOffset), 215, 12, NULL, NULL)
INSERT [dbo].[SGT_Direccion] ([id], [detail], [created_by], [updated_by], [created_at], [updated_at], [city_id], [department_id], [name], [container_id]) VALUES (2010, N'dasdasdasdasf', NULL, NULL, CAST(0x07900DC8599592400B0000 AS DateTimeOffset), CAST(0x07908B3A769792400B0000 AS DateTimeOffset), 234, 13, NULL, NULL)
INSERT [dbo].[SGT_Direccion] ([id], [detail], [created_by], [updated_by], [created_at], [updated_at], [city_id], [department_id], [name], [container_id]) VALUES (2011, N'calle', NULL, NULL, CAST(0x07800492F39592400B0000 AS DateTimeOffset), CAST(0x075062AB1E9792400B0000 AS DateTimeOffset), 187, 11, NULL, NULL)
INSERT [dbo].[SGT_Direccion] ([id], [detail], [created_by], [updated_by], [created_at], [updated_at], [city_id], [department_id], [name], [container_id]) VALUES (2012, N'tgjghjhgj', NULL, NULL, CAST(0x07409D38E39792400B0000 AS DateTimeOffset), CAST(0x07707AD96E9A92400B0000 AS DateTimeOffset), 191, 11, NULL, NULL)
INSERT [dbo].[SGT_Direccion] ([id], [detail], [created_by], [updated_by], [created_at], [updated_at], [city_id], [department_id], [name], [container_id]) VALUES (2014, N'Cantón San Diego 2, frente Alcaldia Municipal ', NULL, NULL, CAST(0x072040F8DD1493400B0000 AS DateTimeOffset), CAST(0x0740C076141593400B0000 AS DateTimeOffset), 105, 6, N'Juzgado de familia Olocuilta', 2024)
INSERT [dbo].[SGT_Direccion] ([id], [detail], [created_by], [updated_by], [created_at], [updated_at], [city_id], [department_id], [name], [container_id]) VALUES (2015, N'35789489', NULL, NULL, CAST(0x07C02A2FFD1593400B0000 AS DateTimeOffset), CAST(0x07609F98011693400B0000 AS DateTimeOffset), 105, 6, N'54687656', 2027)
INSERT [dbo].[SGT_Direccion] ([id], [detail], [created_by], [updated_by], [created_at], [updated_at], [city_id], [department_id], [name], [container_id]) VALUES (2016, N'fsdfdsdf', NULL, NULL, CAST(0x07A09C88CE1693400B0000 AS DateTimeOffset), CAST(0x07A09C88CE1693400B0000 AS DateTimeOffset), 3, 5, N'sdfds', 2028)
INSERT [dbo].[SGT_Direccion] ([id], [detail], [created_by], [updated_by], [created_at], [updated_at], [city_id], [department_id], [name], [container_id]) VALUES (2017, N'35789489', NULL, NULL, CAST(0x07B04E634A1793400B0000 AS DateTimeOffset), CAST(0x07800D59661793400B0000 AS DateTimeOffset), 105, 6, N'54687656', 2032)
SET IDENTITY_INSERT [dbo].[SGT_Direccion] OFF
SET IDENTITY_INSERT [dbo].[SGT_Empleado] ON 

INSERT [dbo].[SGT_Empleado] ([id], [first_name], [last_name], [is_unit_boss], [user_name], [user_pass], [created_by], [updated_by], [created_at], [updated_at], [id_boss], [procuraduria_id], [unit_id]) VALUES (1, N'Daniel', N'Mejia', 1, N'daniel06', N'daniel123', NULL, NULL, CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), NULL, NULL, 1)
INSERT [dbo].[SGT_Empleado] ([id], [first_name], [last_name], [is_unit_boss], [user_name], [user_pass], [created_by], [updated_by], [created_at], [updated_at], [id_boss], [procuraduria_id], [unit_id]) VALUES (2, N'Kevin', N'Toloza', 0, N'kevin06', N'kevin123', NULL, NULL, CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), 1, NULL, 1)
INSERT [dbo].[SGT_Empleado] ([id], [first_name], [last_name], [is_unit_boss], [user_name], [user_pass], [created_by], [updated_by], [created_at], [updated_at], [id_boss], [procuraduria_id], [unit_id]) VALUES (3, N'Karen', N'Peñate', 0, N'karen12', N'karen123', NULL, NULL, CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[SGT_Empleado] OFF
INSERT [dbo].[SGT_FacturaCompra] ([num_bill], [date_entry], [provider], [for_month], [for_year], [total], [created_by], [updated_by], [created_at], [updated_at]) VALUES (147, CAST(0x07000000000097400B0000 AS DateTimeOffset), N'963', 1, 2020, CAST(60.00 AS Decimal(10, 2)), NULL, NULL, CAST(0x0790D5D645C397400B0000 AS DateTimeOffset), CAST(0x0790D5D645C397400B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_FacturaCompra] ([num_bill], [date_entry], [provider], [for_month], [for_year], [total], [created_by], [updated_by], [created_at], [updated_at]) VALUES (444, CAST(0x07000000000097400B0000 AS DateTimeOffset), N'456', 1, 2020, CAST(40.00 AS Decimal(10, 2)), NULL, NULL, CAST(0x07E00AD918C397400B0000 AS DateTimeOffset), CAST(0x07E00AD918C397400B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_FacturaCompra] ([num_bill], [date_entry], [provider], [for_month], [for_year], [total], [created_by], [updated_by], [created_at], [updated_at]) VALUES (456, CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', 1, 2020, CAST(510.00 AS Decimal(10, 2)), NULL, NULL, CAST(0x07006CEFBDC297400B0000 AS DateTimeOffset), CAST(0x07006CEFBDC297400B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_FacturaCompra] ([num_bill], [date_entry], [provider], [for_month], [for_year], [total], [created_by], [updated_by], [created_at], [updated_at]) VALUES (707, CAST(0x07000000000096400B0000 AS DateTimeOffset), N'UNO', 1, 2020, CAST(100.00 AS Decimal(10, 2)), NULL, NULL, CAST(0x07F0B8E3A90597400B0000 AS DateTimeOffset), CAST(0x07F0B8E3A90597400B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_FacturaCompra] ([num_bill], [date_entry], [provider], [for_month], [for_year], [total], [created_by], [updated_by], [created_at], [updated_at]) VALUES (711, CAST(0x070000000000F7400B0000 AS DateTimeOffset), N'DLC', 2, 201, CAST(60.00 AS Decimal(10, 2)), NULL, NULL, CAST(0x074014ABD1C497400B0000 AS DateTimeOffset), CAST(0x074014ABD1C497400B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_FacturaCompra] ([num_bill], [date_entry], [provider], [for_month], [for_year], [total], [created_by], [updated_by], [created_at], [updated_at]) VALUES (712, CAST(0x0700000000009C400B0000 AS DateTimeOffset), N'DLCUNO', 3, 2011, CAST(20.00 AS Decimal(10, 2)), NULL, NULL, CAST(0x07B0A73DCCC597400B0000 AS DateTimeOffset), CAST(0x07B0A73DCCC597400B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_FacturaCompra] ([num_bill], [date_entry], [provider], [for_month], [for_year], [total], [created_by], [updated_by], [created_at], [updated_at]) VALUES (713, CAST(0x070000000000CC1E010000 AS DateTimeOffset), N'Semi', 1, 2020, CAST(30.00 AS Decimal(10, 2)), NULL, NULL, CAST(0x0790FA2D1BC797400B0000 AS DateTimeOffset), CAST(0x0790FA2D1BC797400B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_FacturaCompra] ([num_bill], [date_entry], [provider], [for_month], [for_year], [total], [created_by], [updated_by], [created_at], [updated_at]) VALUES (714, CAST(0x070000000000941D010000 AS DateTimeOffset), N'TEXA', 4, 203, CAST(40.00 AS Decimal(10, 2)), NULL, NULL, CAST(0x0760497B2B0098400B0000 AS DateTimeOffset), CAST(0x0760497B2B0098400B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_FacturaCompra] ([num_bill], [date_entry], [provider], [for_month], [for_year], [total], [created_by], [updated_by], [created_at], [updated_at]) VALUES (789, CAST(0x07000000000097400B0000 AS DateTimeOffset), N'123', 1, 2020, CAST(40.00 AS Decimal(10, 2)), NULL, NULL, CAST(0x07B005FFD7C297400B0000 AS DateTimeOffset), CAST(0x07B005FFD7C297400B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_FacturaCompra] ([num_bill], [date_entry], [provider], [for_month], [for_year], [total], [created_by], [updated_by], [created_at], [updated_at]) VALUES (800, CAST(0x07000000000097400B0000 AS DateTimeOffset), N'PUMA', 1, 2020, CAST(110.00 AS Decimal(10, 2)), NULL, NULL, CAST(0x07009D613EC297400B0000 AS DateTimeOffset), CAST(0x07009D613EC297400B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_FacturaCompra] ([num_bill], [date_entry], [provider], [for_month], [for_year], [total], [created_by], [updated_by], [created_at], [updated_at]) VALUES (745896, CAST(0x07000000000098400B0000 AS DateTimeOffset), N'uni', 2, 2020, CAST(30.00 AS Decimal(10, 2)), NULL, NULL, CAST(0x07007261578E98400B0000 AS DateTimeOffset), CAST(0x07007261578E98400B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_FacturaCompra] ([num_bill], [date_entry], [provider], [for_month], [for_year], [total], [created_by], [updated_by], [created_at], [updated_at]) VALUES (976674, CAST(0x07000000000097400B0000 AS DateTimeOffset), N'968753', 1, 201, CAST(50.00 AS Decimal(10, 2)), NULL, NULL, CAST(0x074009A0BEC097400B0000 AS DateTimeOffset), CAST(0x074009A0BEC097400B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_FacturaCompra] ([num_bill], [date_entry], [provider], [for_month], [for_year], [total], [created_by], [updated_by], [created_at], [updated_at]) VALUES (39329648, CAST(0x07000000000097400B0000 AS DateTimeOffset), N'TEXACO', 1, 2020, CAST(110.00 AS Decimal(10, 2)), NULL, NULL, CAST(0x07501E45AABF97400B0000 AS DateTimeOffset), CAST(0x07501E45AABF97400B0000 AS DateTimeOffset))
SET IDENTITY_INSERT [dbo].[SGT_Folo6] ON 

INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1, 1, CAST(0x07000000000043400B0000 AS DateTimeOffset), CAST(0x0700DCC9A04F0000 AS Time), CAST(0x0700448E02580000 AS Time), 1, 1, NULL, NULL, N'Traslado de archivos', N'Se trasladaran archivos pesados', NULL, NULL, CAST(0x07A0850ADC2F3A400B0000 AS DateTimeOffset), CAST(0x07A0850ADC2F3A400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (3, 1, CAST(0x07000000000043400B0000 AS DateTimeOffset), CAST(0x0700DCC9A04F0000 AS Time), CAST(0x0700B4284D8A0000 AS Time), 4, 1, NULL, NULL, N'Auditoria', N'Nada pesado', NULL, NULL, CAST(0x07001B1B65323B400B0000 AS DateTimeOffset), CAST(0x07001B1B65323B400B0000 AS DateTimeOffset), 1, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (5, 1, CAST(0x0700000000003E400B0000 AS DateTimeOffset), CAST(0x0700DCC9A04F0000 AS Time), CAST(0x07007CDB27710000 AS Time), 4, 1, NULL, NULL, N'Test', N'Test', NULL, NULL, CAST(0x0740228712363B400B0000 AS DateTimeOffset), CAST(0x0740228712363B400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (7, 1, CAST(0x07000000000066400B0000 AS DateTimeOffset), CAST(0x07007CDB27710000 AS Time), CAST(0x0700B4284D8A0000 AS Time), 1, 1, NULL, NULL, N'Test', N'', NULL, NULL, CAST(0x0720873381AD5C400B0000 AS DateTimeOffset), CAST(0x0720873381AD5C400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (8, 1, CAST(0x07000000000061400B0000 AS DateTimeOffset), CAST(0x0700A8E76F4B0000 AS Time), CAST(0x07001CEDAE920000 AS Time), 3, 0, N'Don Chema', N'Liviana', N'Auditoria', N'', NULL, NULL, CAST(0x07301AE4B4AD5C400B0000 AS DateTimeOffset), CAST(0x07301AE4B4AD5C400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1007, 1, CAST(0x0700000000008E400B0000 AS DateTimeOffset), CAST(0x0700D85EAC3A0000 AS Time), CAST(0x07002058A3A70000 AS Time), 3, 1, NULL, NULL, N'Auditoria', N'Cajas pesadas', NULL, NULL, CAST(0x0720129C51268B400B0000 AS DateTimeOffset), CAST(0x0720129C51268B400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1008, 1, CAST(0x0700000000008E400B0000 AS DateTimeOffset), CAST(0x0700B893419F0000 AS Time), CAST(0x070058A5C8C00000 AS Time), 1, 1, NULL, NULL, N'Prueba', N'Probando', NULL, NULL, CAST(0x07003C4535308B400B0000 AS DateTimeOffset), CAST(0x07003C4535308B400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1009, 1, CAST(0x0700000000008F400B0000 AS DateTimeOffset), CAST(0x0700B893419F0000 AS Time), CAST(0x0700EC7572A30000 AS Time), 1, 1, NULL, NULL, N'Prueba', N'Peso', NULL, NULL, CAST(0x079040D037188D400B0000 AS DateTimeOffset), CAST(0x079040D037188D400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1010, 1, CAST(0x07000000000096400B0000 AS DateTimeOffset), CAST(0x0700A8E76F4B0000 AS Time), CAST(0x0700B0BD58750000 AS Time), 1, 1, NULL, NULL, N'Auditoria', N'Cajas', NULL, NULL, CAST(0x07B0A94560288F400B0000 AS DateTimeOffset), CAST(0x07B0A94560288F400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1011, 1, CAST(0x07000000000091400B0000 AS DateTimeOffset), CAST(0x07001882BA7D0000 AS Time), CAST(0x070050CFDF960000 AS Time), 1, 0, N'Prueba Moto', N'Particular', N'Puebita', N'NADA', NULL, NULL, CAST(0x07D062F4CF3091400B0000 AS DateTimeOffset), CAST(0x07D062F4CF3091400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1012, 1, CAST(0x07000000000095400B0000 AS DateTimeOffset), CAST(0x07001882BA7D0000 AS Time), CAST(0x07004C64EB810000 AS Time), 1, 1, NULL, NULL, N'nada', N'nadita', NULL, NULL, CAST(0x07C0381FE5B191400B0000 AS DateTimeOffset), CAST(0x07C0381FE5B191400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1014, 1, CAST(0x070000000000A8400B0000 AS DateTimeOffset), CAST(0x070048F9F66C0000 AS Time), CAST(0x0700B0BD58750000 AS Time), 7, 1, NULL, NULL, N'Test', N'Test', NULL, NULL, CAST(0x07B0D4B35AB791400B0000 AS DateTimeOffset), CAST(0x07B0D4B35AB791400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1015, 1, CAST(0x0700000000009A400B0000 AS DateTimeOffset), CAST(0x0700D85EAC3A0000 AS Time), CAST(0x0700A8E76F4B0000 AS Time), 1, 1, NULL, NULL, N'Probando hora de salida y retorno', N'sada', NULL, NULL, CAST(0x07B0FA711BC292400B0000 AS DateTimeOffset), CAST(0x07B0FA711BC292400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1016, 1, CAST(0x0700000000009A400B0000 AS DateTimeOffset), CAST(0x0700A8E76F4B0000 AS Time), CAST(0x0700A8E76F4B0000 AS Time), 1, 1, NULL, NULL, N'Probando hora de salida y retorno', N'', NULL, NULL, CAST(0x0720B438ACC392400B0000 AS DateTimeOffset), CAST(0x0720B438ACC392400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1017, 1, CAST(0x070000000000A6400B0000 AS DateTimeOffset), CAST(0x0700D088C3100000 AS Time), CAST(0x07007870335C0000 AS Time), 1, 0, N'Carlos Enrique Montejo Suarez', N'Particular', N'prueba de requermiento de motorista', N'', NULL, NULL, CAST(0x07D0A7E9580E93400B0000 AS DateTimeOffset), CAST(0x07D0A7E9580E93400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1018, 1, CAST(0x070000000000A4400B0000 AS DateTimeOffset), CAST(0x070068C461080000 AS Time), CAST(0x0700D088C3100000 AS Time), 1, 0, N'355468765467', N'Particular', N'proband', N'', NULL, NULL, CAST(0x0760BBD94A1093400B0000 AS DateTimeOffset), CAST(0x0760BBD94A1093400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1019, 1, CAST(0x07000000000094400B0000 AS DateTimeOffset), CAST(0x0700A8E76F4B0000 AS Time), CAST(0x070010ACD1530000 AS Time), 1, 0, N'yo', N'Particular', N'Prueba', N'dsfsdfdsfs', NULL, NULL, CAST(0x07301F37141593400B0000 AS DateTimeOffset), CAST(0x07301F37141593400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1020, 1, CAST(0x0700000000009B400B0000 AS DateTimeOffset), CAST(0x070068C461080000 AS Time), CAST(0x0700D088C3100000 AS Time), 1, 1, NULL, NULL, N'probando dir', N'', NULL, NULL, CAST(0x07B0C374011693400B0000 AS DateTimeOffset), CAST(0x07B0C374011693400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1021, 1, CAST(0x0700000000009D400B0000 AS DateTimeOffset), CAST(0x0700709A4A320000 AS Time), CAST(0x0700D85EAC3A0000 AS Time), 1, 1, NULL, NULL, N'gfdcgfdgd', N'', NULL, NULL, CAST(0x07C0AEF0651793400B0000 AS DateTimeOffset), CAST(0x07C0AEF0651793400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1022, 1, CAST(0x07000000000098400B0000 AS DateTimeOffset), CAST(0x070040230E430000 AS Time), CAST(0x0700B0BD58750000 AS Time), 4, 1, NULL, NULL, N'Auditoria', N'llevaremos cajas pesadas', NULL, NULL, CAST(0x07A0A3ADD31796400B0000 AS DateTimeOffset), CAST(0x07A0A3ADD31796400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1023, 1, CAST(0x070000000000AE400B0000 AS DateTimeOffset), CAST(0x070010ACD1530000 AS Time), CAST(0x070010ACD1530000 AS Time), 4, 1, NULL, NULL, N'ytutuy', N'tuytuytu', NULL, NULL, CAST(0x07802F6612B496400B0000 AS DateTimeOffset), CAST(0x07802F6612B496400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1024, 1, CAST(0x07000000000099400B0000 AS DateTimeOffset), CAST(0x0700A8E76F4B0000 AS Time), CAST(0x070010ACD1530000 AS Time), 1, 1, NULL, NULL, N'probando motorista', N'', NULL, NULL, CAST(0x0750E719501897400B0000 AS DateTimeOffset), CAST(0x0750E719501897400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1025, 1, CAST(0x07000000000099400B0000 AS DateTimeOffset), CAST(0x0700A8E76F4B0000 AS Time), CAST(0x070010ACD1530000 AS Time), 1, 1, NULL, NULL, N'probandomoto', N'', NULL, NULL, CAST(0x0750B3617D1897400B0000 AS DateTimeOffset), CAST(0x0750B3617D1897400B0000 AS DateTimeOffset), 3, NULL)
INSERT [dbo].[SGT_Folo6] ([id], [request_unit], [off_date], [off_hour], [return_hour], [passengers_number], [with_driver], [person_who_drive], [license_type], [mission], [observation], [created_by], [updated_by], [created_at], [updated_at], [employee_id], [procuraduria_id]) VALUES (1026, 1, CAST(0x070000000000A0400B0000 AS DateTimeOffset), CAST(0x0700709A4A320000 AS Time), CAST(0x0700D85EAC3A0000 AS Time), 7, 1, NULL, NULL, N'Probando fecha de salida', N'Probando fecha de salida', NULL, NULL, CAST(0x07F0965A3A0298400B0000 AS DateTimeOffset), CAST(0x07F0965A3A0298400B0000 AS DateTimeOffset), 3, NULL)
SET IDENTITY_INSERT [dbo].[SGT_Folo6] OFF
SET IDENTITY_INSERT [dbo].[SGT_Folo6_Aprovado] ON 

INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1, 1, N'Cancelar', 0, N'La cago Dany!', NULL, NULL, CAST(0x07A0D62865323B400B0000 AS DateTimeOffset), CAST(0x073001A26CBF5C400B0000 AS DateTimeOffset), 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (2, 0, NULL, 0, NULL, NULL, NULL, CAST(0x07C014AE6C333B400B0000 AS DateTimeOffset), CAST(0x07C014AE6C333B400B0000 AS DateTimeOffset), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (3, 0, N'Porque me la pela', 0, NULL, NULL, NULL, CAST(0x0780F39312363B400B0000 AS DateTimeOffset), CAST(0x0750F511D7BC5C400B0000 AS DateTimeOffset), 5, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (4, 0, NULL, 0, NULL, NULL, NULL, CAST(0x0740136B765C56400B0000 AS DateTimeOffset), CAST(0x0740136B765C56400B0000 AS DateTimeOffset), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (5, 1, NULL, 1, NULL, NULL, NULL, CAST(0x07B08C4381AD5C400B0000 AS DateTimeOffset), CAST(0x07C04B16D3BE5C400B0000 AS DateTimeOffset), 7, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (6, 0, N'Porque se me hace que me la pela', 0, NULL, NULL, NULL, CAST(0x07E0DEF6B4AD5C400B0000 AS DateTimeOffset), CAST(0x0700C1564EBC5C400B0000 AS DateTimeOffset), 8, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1005, 1, NULL, 1, NULL, NULL, NULL, CAST(0x0710E4B151268B400B0000 AS DateTimeOffset), CAST(0x07C059B568278B400B0000 AS DateTimeOffset), 1007, 1, 1, 1, 0, 0)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1006, 1, NULL, 1, NULL, NULL, NULL, CAST(0x0760726335308B400B0000 AS DateTimeOffset), CAST(0x0790EEEF861E8C400B0000 AS DateTimeOffset), 1008, 1, 1, 1, 0, 0)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1007, 1, NULL, 1, NULL, NULL, NULL, CAST(0x0750C41D38188D400B0000 AS DateTimeOffset), CAST(0x07A011955F188D400B0000 AS DateTimeOffset), 1009, 1, 1, 0, 0, 0)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1008, 1, NULL, 1, NULL, NULL, NULL, CAST(0x07F0206160288F400B0000 AS DateTimeOffset), CAST(0x07D009AD71BB91400B0000 AS DateTimeOffset), 1010, 1, 1, 1, 0, 0)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1009, 1, NULL, 1, NULL, NULL, NULL, CAST(0x07A0570CD03091400B0000 AS DateTimeOffset), CAST(0x07B037039AB691400B0000 AS DateTimeOffset), 1011, 1, 1, 1, 0, 0)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1010, 1, NULL, 1, NULL, NULL, NULL, CAST(0x07B02146E5B191400B0000 AS DateTimeOffset), CAST(0x07D03C0EF1B691400B0000 AS DateTimeOffset), 1012, 1, 1, 1, 0, 0)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1011, 0, N'nada', 0, NULL, NULL, NULL, CAST(0x0780F5929DB391400B0000 AS DateTimeOffset), CAST(0x07B0EE63CBB391400B0000 AS DateTimeOffset), NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1012, 1, NULL, 1, NULL, NULL, NULL, CAST(0x0780ABD05AB791400B0000 AS DateTimeOffset), CAST(0x07701933C7B791400B0000 AS DateTimeOffset), 1014, 1, 1, 1, 0, 0)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1013, 0, N'4', 0, NULL, NULL, NULL, CAST(0x071076C31BC292400B0000 AS DateTimeOffset), CAST(0x0760F641980B97400B0000 AS DateTimeOffset), 1015, NULL, NULL, 0, 0, 0)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1014, 0, N'No me parecen las observaciones ', 0, NULL, NULL, NULL, CAST(0x07201E51ACC392400B0000 AS DateTimeOffset), CAST(0x0780287DFF0C97400B0000 AS DateTimeOffset), 1016, NULL, NULL, 0, 0, 0)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1015, 1, NULL, 0, N'4', NULL, NULL, CAST(0x0740E70C590E93400B0000 AS DateTimeOffset), CAST(0x07701D14C91297400B0000 AS DateTimeOffset), 1017, 1, NULL, 0, 0, 0)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1016, 1, NULL, 0, N'No cumple con las restricciones', NULL, NULL, CAST(0x07A032F54A1093400B0000 AS DateTimeOffset), CAST(0x079009BB1F1397400B0000 AS DateTimeOffset), 1018, 1, NULL, 0, 0, 0)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1017, 1, NULL, 1, NULL, NULL, NULL, CAST(0x0750664D141593400B0000 AS DateTimeOffset), CAST(0x07F03C000C1797400B0000 AS DateTimeOffset), 1019, 1, 1, 1, 0, 0)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1018, 0, N'No me parecen las observaciones ', 0, NULL, NULL, NULL, CAST(0x07F0417A011693400B0000 AS DateTimeOffset), CAST(0x0770AA02B80C97400B0000 AS DateTimeOffset), 1020, NULL, NULL, 0, 0, 0)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1019, 0, N'nelson', 0, NULL, NULL, NULL, CAST(0x0710D51F661793400B0000 AS DateTimeOffset), CAST(0x07708F80C30C97400B0000 AS DateTimeOffset), 1021, NULL, NULL, 0, 0, 0)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1020, 1, NULL, 1, NULL, NULL, NULL, CAST(0x076017D4D31796400B0000 AS DateTimeOffset), CAST(0x07C03020231797400B0000 AS DateTimeOffset), 1022, 1, 1, 1, 0, 0)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1021, 0, NULL, 0, NULL, NULL, NULL, CAST(0x07002EC412B496400B0000 AS DateTimeOffset), CAST(0x07002EC412B496400B0000 AS DateTimeOffset), 1023, NULL, NULL, 0, 0, 0)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1022, 1, NULL, 1, NULL, NULL, NULL, CAST(0x07A0245A501897400B0000 AS DateTimeOffset), CAST(0x0730FA8EDD1897400B0000 AS DateTimeOffset), 1024, 1, 1, 1, 0, 0)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1023, 1, NULL, 1, NULL, NULL, NULL, CAST(0x0720B8A07D1897400B0000 AS DateTimeOffset), CAST(0x07A08C0CE51897400B0000 AS DateTimeOffset), 1025, 1, 1, 1, 0, 0)
INSERT [dbo].[SGT_Folo6_Aprovado] ([id], [request_unit_approve], [unit_cancel_detail], [transport_unit_approve], [cancel_tunit_detail], [created_by], [updated_by], [created_at], [updated_at], [folo06_id], [aprove_boss_id], [aprove_tunit_boss_id], [driver_assigned], [car], [gasoline]) VALUES (1024, 0, NULL, 0, NULL, NULL, NULL, CAST(0x07304A6C3A0298400B0000 AS DateTimeOffset), CAST(0x07304A6C3A0298400B0000 AS DateTimeOffset), 1026, NULL, NULL, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[SGT_Folo6_Aprovado] OFF
SET IDENTITY_INSERT [dbo].[SGT_Lugar_Frecuente] ON 

INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (1, N'Procuraduria Auxiliar de Soyapango', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 104, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (2, N'Procuraduria Auxiliar de Apopa', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 111, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (3, N'Procuraduria Auxiliar de Zacatecoluca', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 144, 8, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (4, N'Procuraduria Auxiliar de Usulután', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 193, 1, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (5, N'Procuraduria Auxiliar de San Miguel', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 213, 12, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (6, N'Procuraduria Auxiliar de La Unión', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 261, 14, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (7, N'Procuraduria Auxiliar de Santa Ana', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 42, 2, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (8, N'Procuraduria Auxiliar de Sonsonate', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 54, 3, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (9, N'Procuraduria Auxiliar de Ahuachapán', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 32, 1, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (10, N'Procuraduria Auxiliar de Metapán', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 35, 2, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (11, N'Procuraduria Auxiliar de Chalatenango', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 78, 4, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (12, N'Procuraduria Auxiliar de Cuscatlán', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 126, 7, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (13, N'Procuraduria Auxiliar de San Vicente', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 175, 10, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (14, N'Procuraduria Auxiliar de Cabañas', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 159, 9, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (15, N'Procuraduria Auxiliar de Morazán', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 222, 13, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (16, N'Procuraduria Auxiliar de La Libertad', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 1, 5, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (17, N'Centro Penitenciario de Sonsonate    ', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 54, 3, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (18, N'Centro Penitenciario de Ilobasco', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 154, 9, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (19, N'Centro Penitenciario de La Unión', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 261, 14, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (20, N'Centro Preventivo Jucuapa', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 183, 1, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (21, N'Centro Penal de Usulután ', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 193, 1, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (22, N'Penitenciaría Occidental de Santa Ana', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 42, 2, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (23, N'Centro Penal de Sensuntepeque', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 159, 9, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (24, N'Centro Penitenciario de San Francisco Gotera', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 222, 13, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (25, N'Centro de Readaptación para Mujeres-Ilopango', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 102, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (26, N'Penitenciaría Central La Esperanza', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 107, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (27, N'Centro de Cumplimiento de Penas de Ciudad Barrios', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 205, 12, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (28, N'Centro Penal de Quezaltepeque', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 12, 5, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (29, N'Centro Penal de Metapán', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 35, 2, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (30, N'Centro Penal de Apanteos', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 42, 2, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (31, N'Centro Penal de Chalatenango', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 78, 4, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (32, N'Centro Penal de Berlín', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 178, 1, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (33, N'Centro Penitenciario de Seguridad de Zacatecoluca', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 144, 8, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (34, N'Centro Judicial Isidro Menéndez', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (35, N'Dirección de  Atención al Migrante', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (36, N'Aeropuerto Internacional Oscar Arnulfo Romero', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0740200BC32B3B400B0000 AS DateTimeOffset), NULL, 132, 8, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (37, N'Juzgados de Mejicanos', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 106, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (38, N'Juzgados de Paz de Ayutuxtepeque', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 107, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (39, N'Tribunal de Ética Gubernamental San Salvador', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (40, N'Juzgados de la Escalón', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (41, N'Centro Nacional de Registro San Salvador', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (42, N'Juzgados de Familia de San Marcos', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 99, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (43, N'Juzgados de Paz de Mejicanos', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 106, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (44, N'Juzgados de Paz de San Marcos', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 99, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (45, N'Juzgados de Paz de Ciudad Delgado', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 108, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (46, N'Vice Ministerio de Transporte La Libertad', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 10, 5, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (47, N'Sertracén San Salvador', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (48, N'Casa de la CIMA OPA', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (49, N'Alcaldía de San Marcos', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 99, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (50, N'Alcaldía de Soyapango', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 104, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (51, N'Alcaldía de Apopa', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 111, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (52, N'Alcaldía de Ciudad Delgado', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700B89C4E2A3B400B0000 AS DateTimeOffset), NULL, 108, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (53, N'Alcandía de Santa Tecla', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 1, 5, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (54, N'Alcaldía de El Paisnal', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0750EF690E2A3B400B0000 AS DateTimeOffset), NULL, 115, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (55, N'Instituto Salvadoreño para el Desarrollo Integral de la Niñez y Adolescencia', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (56, N'Concejo Nacional de la Niñez y Adolescencia', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (57, N'Fiscalía General de la República La Sultana', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 2, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (58, N'Fiscalía General de la República Antigüo Cuscatlán', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 2, 5, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (59, N'Juzgados de Santo Tomás', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 100, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (60, N'Juzgados de Panchimalco', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 98, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (61, N'Juzgados de Rosario de Mora', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 97, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (62, N'ISDEMU San Salvador', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (63, N'Fiscalía de San Marcos', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 99, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (64, N'Juzgado de Paz Tonacatepeque', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 110, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (65, N'Alcaldía de San Martín', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 109, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (66, N'Unidad Técnica Ejecutiva', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (67, N'Hotel Caja Marca', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (68, N'Juzgados de Sal Salvador ISIDRO', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (69, N'Jusgados de Integrado San Salvador', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (70, N'Hotel Jardín Celeste de Ataco', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 26, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (71, N'Ex edificio PGR Plafón', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (72, N'Granja de Izalco Ahuachapán', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 32, 1, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (73, N'Hogar Vicente de Paul San Jacinto', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (74, N'Hotel Crown Plaza', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (75, N'Hotel Sheraton-PGR', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (76, N'CAPRES', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (77, N'Escuela Militar Ciudad Merliot', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 5, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (78, N'Hotel Intercontinental', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (79, N'Ministerio de Hacienda', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (80, N'Círculo Militar', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (81, N'Junta de Proteción I', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (82, N'Junta de Protección II', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (83, N'Hotel Barcelo', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (84, N'Centro Nacional de la Judicatura Santa Ana', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 42, 2, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (85, N'Cárcel de Mujeres Ilopango', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 102, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (86, N'Juzgado de Civil La Escalón', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (87, N'Juzgado de Civil San Marcos', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 99, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (88, N'Juzgado de Civil Mejicanos', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 106, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (89, N'Centro Penal de Izalco', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 57, 3, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (90, N'Juzgado de Paz de Izalco', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 57, 3, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (91, N'Centro de Internamiento Sendero de La libertad Ilobasco', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 154, 9, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (92, N'Juzgado de Civil de Soyapango', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 104, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (93, N'Juzgado Militar de Instrucción Naval San Salvador', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (94, N'Juzgado de Paz de Gotera', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 222, 13, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (95, N'Centro de Inserción El Espino Ahuachapán', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 32, 1, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (96, N'Centro de Detención de Menores Mariona', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 107, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (97, N'Centro Judicial de Menores Ilobasco', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 154, 9, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (98, N'Alcaldía de Santa cruz Michapas', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 122, 7, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (99, N'Juzgado Segundo de Paz de Soyapango', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 104, 6, NULL)
GO
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (100, N'Juzgado Civil y Mercantil San Salvador', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 105, 6, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (101, N'CNJ San Miguel', N'', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), NULL, 213, 12, NULL)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (104, N'Juzgado de familia 10 de Octubre', N'Casa 90 Pj2 Col 10 de Octubre San Marcos', NULL, NULL, CAST(0x0770FC976A2792400B0000 AS DateTimeOffset), CAST(0x0780D1B4042C92400B0000 AS DateTimeOffset), NULL, 99, 6, 5)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (105, N'La Esperanza', N'Calle La Esperanza', NULL, NULL, CAST(0x075017443B2892400B0000 AS DateTimeOffset), CAST(0x075017443B2892400B0000 AS DateTimeOffset), NULL, 105, 6, 6)
INSERT [dbo].[SGT_Lugar_Frecuente] ([id], [name], [detail], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [city_id], [department_id], [route_id]) VALUES (108, N'969546125454', N'213466548712', NULL, NULL, CAST(0x0710B1845E2E92400B0000 AS DateTimeOffset), CAST(0x07E081A7DD3192400B0000 AS DateTimeOffset), NULL, 135, 8, 1)
SET IDENTITY_INSERT [dbo].[SGT_Lugar_Frecuente] OFF
SET IDENTITY_INSERT [dbo].[SGT_Lugares_Contenedor] ON 

INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (1, CAST(0x39400B00 AS Date), NULL, NULL, CAST(0x07F05F1CDC2F3A400B0000 AS DateTimeOffset), CAST(0x07F05F1CDC2F3A400B0000 AS DateTimeOffset), 1, 51)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2, CAST(0x39400B00 AS Date), NULL, NULL, CAST(0x07F05F1CDC2F3A400B0000 AS DateTimeOffset), CAST(0x07F05F1CDC2F3A400B0000 AS DateTimeOffset), 1, 7)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (1002, CAST(0x3A400B00 AS Date), NULL, NULL, CAST(0x07E096543D1F3B400B0000 AS DateTimeOffset), CAST(0x07E096543D1F3B400B0000 AS DateTimeOffset), NULL, 12)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (1003, CAST(0x3A400B00 AS Date), NULL, NULL, CAST(0x0760CF553D1F3B400B0000 AS DateTimeOffset), CAST(0x0760CF553D1F3B400B0000 AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (1004, CAST(0x3B400B00 AS Date), NULL, NULL, CAST(0x07C0242965323B400B0000 AS DateTimeOffset), CAST(0x07C0242965323B400B0000 AS DateTimeOffset), 3, 13)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (1005, CAST(0x3B400B00 AS Date), NULL, NULL, CAST(0x07E062AE6C333B400B0000 AS DateTimeOffset), CAST(0x07E062AE6C333B400B0000 AS DateTimeOffset), NULL, 33)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (1006, CAST(0x3B400B00 AS Date), NULL, NULL, CAST(0x07901A9412363B400B0000 AS DateTimeOffset), CAST(0x07901A9412363B400B0000 AS DateTimeOffset), 5, 37)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (1008, CAST(0x5C400B00 AS Date), NULL, NULL, CAST(0x07D0DA4381AD5C400B0000 AS DateTimeOffset), CAST(0x07D0DA4381AD5C400B0000 AS DateTimeOffset), 7, 10)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (1009, CAST(0x5C400B00 AS Date), NULL, NULL, CAST(0x07E0014481AD5C400B0000 AS DateTimeOffset), CAST(0x07E0014481AD5C400B0000 AS DateTimeOffset), 7, NULL)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (1010, CAST(0x5C400B00 AS Date), NULL, NULL, CAST(0x07F005F7B4AD5C400B0000 AS DateTimeOffset), CAST(0x07F005F7B4AD5C400B0000 AS DateTimeOffset), 8, 8)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2008, CAST(0x8A400B00 AS Date), NULL, NULL, CAST(0x071055B451268B400B0000 AS DateTimeOffset), CAST(0x071055B451268B400B0000 AS DateTimeOffset), 1007, 40)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2009, CAST(0x8A400B00 AS Date), NULL, NULL, CAST(0x0780C06335308B400B0000 AS DateTimeOffset), CAST(0x0780C06335308B400B0000 AS DateTimeOffset), 1008, 74)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2010, CAST(0x8C400B00 AS Date), NULL, NULL, CAST(0x07A0871E38188D400B0000 AS DateTimeOffset), CAST(0x07A0871E38188D400B0000 AS DateTimeOffset), 1009, 67)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2011, CAST(0x8E400B00 AS Date), NULL, NULL, CAST(0x07F0206160288F400B0000 AS DateTimeOffset), CAST(0x07F0206160288F400B0000 AS DateTimeOffset), 1010, 44)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2012, CAST(0x8E400B00 AS Date), NULL, NULL, CAST(0x07F0206160288F400B0000 AS DateTimeOffset), CAST(0x07F0206160288F400B0000 AS DateTimeOffset), 1010, 59)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2013, CAST(0x90400B00 AS Date), NULL, NULL, CAST(0x07C0A50CD03091400B0000 AS DateTimeOffset), CAST(0x07C0A50CD03091400B0000 AS DateTimeOffset), 1011, 54)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2014, CAST(0x91400B00 AS Date), NULL, NULL, CAST(0x07C04846E5B191400B0000 AS DateTimeOffset), CAST(0x07C04846E5B191400B0000 AS DateTimeOffset), 1012, 67)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2016, CAST(0x91400B00 AS Date), NULL, NULL, CAST(0x0790D2D05AB791400B0000 AS DateTimeOffset), CAST(0x0790D2D05AB791400B0000 AS DateTimeOffset), 1014, 85)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2017, CAST(0x92400B00 AS Date), NULL, NULL, CAST(0x0730C4C31BC292400B0000 AS DateTimeOffset), CAST(0x0730C4C31BC292400B0000 AS DateTimeOffset), 1015, 45)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2018, CAST(0x92400B00 AS Date), NULL, NULL, CAST(0x07F0440A75C392400B0000 AS DateTimeOffset), CAST(0x07F0440A75C392400B0000 AS DateTimeOffset), 1012, 29)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2019, CAST(0x92400B00 AS Date), NULL, NULL, CAST(0x07D0850775C392400B0000 AS DateTimeOffset), CAST(0x07D0850775C392400B0000 AS DateTimeOffset), 1012, 29)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2020, CAST(0x92400B00 AS Date), NULL, NULL, CAST(0x07406C51ACC392400B0000 AS DateTimeOffset), CAST(0x07406C51ACC392400B0000 AS DateTimeOffset), 1016, 44)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2021, CAST(0x92400B00 AS Date), NULL, NULL, CAST(0x0760350D590E93400B0000 AS DateTimeOffset), CAST(0x0760350D590E93400B0000 AS DateTimeOffset), 1017, 45)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2022, CAST(0x92400B00 AS Date), NULL, NULL, CAST(0x07B059F54A1093400B0000 AS DateTimeOffset), CAST(0x07B059F54A1093400B0000 AS DateTimeOffset), 1018, 71)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2023, CAST(0x92400B00 AS Date), NULL, NULL, CAST(0x0770B44D141593400B0000 AS DateTimeOffset), CAST(0x0770B44D141593400B0000 AS DateTimeOffset), 1019, 40)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2024, CAST(0x92400B00 AS Date), NULL, NULL, CAST(0x0780DB4D141593400B0000 AS DateTimeOffset), CAST(0x0780DB4D141593400B0000 AS DateTimeOffset), 1019, NULL)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2025, CAST(0x92400B00 AS Date), NULL, NULL, CAST(0x0740057B011693400B0000 AS DateTimeOffset), CAST(0x0740057B011693400B0000 AS DateTimeOffset), 1020, 40)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2026, CAST(0x92400B00 AS Date), NULL, NULL, CAST(0x07502C7B011693400B0000 AS DateTimeOffset), CAST(0x07502C7B011693400B0000 AS DateTimeOffset), 1020, 40)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2027, CAST(0x92400B00 AS Date), NULL, NULL, CAST(0x0760537B011693400B0000 AS DateTimeOffset), CAST(0x0760537B011693400B0000 AS DateTimeOffset), 1020, NULL)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2028, CAST(0x92400B00 AS Date), NULL, NULL, CAST(0x0710626CCE1693400B0000 AS DateTimeOffset), CAST(0x0710626CCE1693400B0000 AS DateTimeOffset), 1020, NULL)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2029, CAST(0x92400B00 AS Date), NULL, NULL, CAST(0x0790FD9BCE1693400B0000 AS DateTimeOffset), CAST(0x0790FD9BCE1693400B0000 AS DateTimeOffset), 1020, NULL)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2030, CAST(0x92400B00 AS Date), NULL, NULL, CAST(0x07302320661793400B0000 AS DateTimeOffset), CAST(0x07302320661793400B0000 AS DateTimeOffset), 1021, 40)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2031, CAST(0x92400B00 AS Date), NULL, NULL, CAST(0x07404A20661793400B0000 AS DateTimeOffset), CAST(0x07404A20661793400B0000 AS DateTimeOffset), 1021, 40)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2032, CAST(0x92400B00 AS Date), NULL, NULL, CAST(0x07507120661793400B0000 AS DateTimeOffset), CAST(0x07507120661793400B0000 AS DateTimeOffset), 1021, NULL)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2033, CAST(0x95400B00 AS Date), NULL, NULL, CAST(0x078065D4D31796400B0000 AS DateTimeOffset), CAST(0x078065D4D31796400B0000 AS DateTimeOffset), 1022, 66)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2035, CAST(0x96400B00 AS Date), NULL, NULL, CAST(0x07D029C612B496400B0000 AS DateTimeOffset), CAST(0x07D029C612B496400B0000 AS DateTimeOffset), 1023, 8)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2036, CAST(0x96400B00 AS Date), NULL, NULL, CAST(0x0770272ACAB996400B0000 AS DateTimeOffset), CAST(0x0770272ACAB996400B0000 AS DateTimeOffset), 1016, 49)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2037, CAST(0x96400B00 AS Date), NULL, NULL, CAST(0x07B01632CAB996400B0000 AS DateTimeOffset), CAST(0x07B01632CAB996400B0000 AS DateTimeOffset), 1016, 49)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2038, CAST(0x96400B00 AS Date), NULL, NULL, CAST(0x07800FBD11BA96400B0000 AS DateTimeOffset), CAST(0x07800FBD11BA96400B0000 AS DateTimeOffset), 1016, 49)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2045, CAST(0x96400B00 AS Date), NULL, NULL, CAST(0x07D0995A501897400B0000 AS DateTimeOffset), CAST(0x07D0995A501897400B0000 AS DateTimeOffset), 1024, 48)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2046, CAST(0x96400B00 AS Date), NULL, NULL, CAST(0x074006A17D1897400B0000 AS DateTimeOffset), CAST(0x074006A17D1897400B0000 AS DateTimeOffset), 1025, 26)
INSERT [dbo].[SGT_Lugares_Contenedor] ([id], [date_of_visit], [created_by], [updated_by], [created_at], [updated_at], [folo_id], [frequent_place_id]) VALUES (2047, CAST(0x97400B00 AS Date), NULL, NULL, CAST(0x0770E66C3A0298400B0000 AS DateTimeOffset), CAST(0x0770E66C3A0298400B0000 AS DateTimeOffset), 1026, 39)
SET IDENTITY_INSERT [dbo].[SGT_Lugares_Contenedor] OFF
SET IDENTITY_INSERT [dbo].[SGT_Mision] ON 

INSERT [dbo].[SGT_Mision] ([id], [name], [created_by], [updated_by], [active], [created_at], [updated_at], [procuraduria_id]) VALUES (1, N'Prueba Mision', NULL, NULL, 1, CAST(0x07E0EEA3F2308B400B0000 AS DateTimeOffset), CAST(0x07E0EEA3F2308B400B0000 AS DateTimeOffset), 3)
SET IDENTITY_INSERT [dbo].[SGT_Mision] OFF
SET IDENTITY_INSERT [dbo].[SGT_Motorista] ON 

INSERT [dbo].[SGT_Motorista] ([id], [first_name], [last_name], [birth_date], [driver_license], [license_type], [license_due_date], [active], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (1, N'Prueba', N'Prueba', CAST(0x0700000000000C1D0B0000 AS DateTimeOffset), N'12354875454571245', N'Liviana', CAST(0x070000000000DA410B0000 AS DateTimeOffset), 0, NULL, NULL, CAST(0x07E00D1157278B400B0000 AS DateTimeOffset), CAST(0x07503C67C01E8E400B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Motorista] ([id], [first_name], [last_name], [birth_date], [driver_license], [license_type], [license_due_date], [active], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (2, N'Probando', N'Probando', CAST(0x0700000000005A3E0B0000 AS DateTimeOffset), N'6565656764', N'Liviana', CAST(0x0700000000003F3F0B0000 AS DateTimeOffset), 0, NULL, NULL, CAST(0x07401857C71F8E400B0000 AS DateTimeOffset), CAST(0x07F0B15123208E400B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Motorista] ([id], [first_name], [last_name], [birth_date], [driver_license], [license_type], [license_due_date], [active], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (3, N'pruea', N'pruea', CAST(0x07000000000083400B0000 AS DateTimeOffset), N'546576764', N'Particular', CAST(0x07000000000050400B0000 AS DateTimeOffset), 0, NULL, NULL, CAST(0x07807C45F3248E400B0000 AS DateTimeOffset), CAST(0x07602D83072494400B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Motorista] ([id], [first_name], [last_name], [birth_date], [driver_license], [license_type], [license_due_date], [active], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (4, N'Ke1246', N'T6486 ', CAST(0x070000000000011E0B0000 AS DateTimeOffset), N'0711-3004931020', N'Pesada', CAST(0x07000000000068410B0000 AS DateTimeOffset), 0, NULL, NULL, CAST(0x0700E9D8D81494400B0000 AS DateTimeOffset), CAST(0x07207E41842394400B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Motorista] ([id], [first_name], [last_name], [birth_date], [driver_license], [license_type], [license_due_date], [active], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (5, N'prueba', N'prueba', CAST(0x07000000000091400B0000 AS DateTimeOffset), N'1234', N'Particular', CAST(0x07000000000093400B0000 AS DateTimeOffset), 1, NULL, NULL, CAST(0x0720392BE81594400B0000 AS DateTimeOffset), CAST(0x0720392BE81594400B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Motorista] ([id], [first_name], [last_name], [birth_date], [driver_license], [license_type], [license_due_date], [active], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (6, N' Ke1246', N'T6486 ', CAST(0x07000000000033230B0000 AS DateTimeOffset), N'99999999999999', N'Liviana', CAST(0x07000000000087410B0000 AS DateTimeOffset), 1, NULL, NULL, CAST(0x0730742AB11694400B0000 AS DateTimeOffset), CAST(0x0730742AB11694400B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Motorista] ([id], [first_name], [last_name], [birth_date], [driver_license], [license_type], [license_due_date], [active], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (7, N'elmer', N'hernandez', CAST(0x070000000000AB400B0000 AS DateTimeOffset), N'5497978789789', N'Particular', CAST(0x07000000000093400B0000 AS DateTimeOffset), 0, NULL, NULL, CAST(0x07F0066EBC2494400B0000 AS DateTimeOffset), CAST(0x0760B494F02494400B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Motorista] ([id], [first_name], [last_name], [birth_date], [driver_license], [license_type], [license_due_date], [active], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id]) VALUES (8, N'Alex', N'Sachez', CAST(0x07000000000033230B0000 AS DateTimeOffset), N'0711-300493-102-0', N'Pesada', CAST(0x07000000000035430B0000 AS DateTimeOffset), 1, NULL, NULL, CAST(0x07F092B8851198400B0000 AS DateTimeOffset), CAST(0x07F092B8851198400B0000 AS DateTimeOffset), 3)
SET IDENTITY_INSERT [dbo].[SGT_Motorista] OFF
SET IDENTITY_INSERT [dbo].[SGT_Municipio] ON 

INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (1, N'Santa Tecla', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (2, N'Antiguo Cuscatlán', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (3, N'Chiltiupán', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (4, N'Ciudad Arce', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (5, N'Colón', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (6, N'Comasagua', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (7, N'Huizúcar', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (8, N'Jayaque', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (9, N'Jicalapa', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (10, N'La Libertad', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (11, N' Nuevo Cuscatlán', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (12, N'Quezaltepeque', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (13, N'San Juan Opico', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (14, N'Sacacoyo', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (15, N'San José Villanueva', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (16, N'San Matías', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (17, N'San Pablo Tacachico', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (18, N'Talnique', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (19, N'Tamanique', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (20, N'Teotepeque', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (21, N'Tepecoyo', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (22, N'Zaragoza', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 5)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (23, N'SAN PEDRO PUXTLA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (24, N'JUJUTLA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (25, N'APANECA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (26, N'CONCEPCION DE ATACO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (27, N'SAN FRANCISCO MENENDEZ', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (28, N'TACUBA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (29, N'TURIN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (30, N'EL REFUGIO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (31, N'ATIQUIZAYA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (32, N'AHUACHAPAN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (33, N'SAN LORENZO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (34, N'GUAYMANGO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 1)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (35, N'METAPAN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (36, N'SAN ANTONIO PAJONAL', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (37, N'SANTIAGO DE LA FRONTERA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (38, N'SANTA ROSA GUACHIPILIN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (39, N'MASAHUAT', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (40, N'TEXISTEPEQUE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (41, N'CANDELARIA DE LA FRONTERA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (42, N'SANTA ANA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (43, N'COATEPEQUE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (44, N'EL PORVENIR', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (45, N'SAN SEBASTIAN SALITRILLO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (46, N'CHALCHUAPA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (47, N'EL CONGO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 2)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (48, N'SANTA ISABEL ISHUATAN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (49, N'CUISNAHUAT', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (50, N'ACAJUTLA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (51, N'NAHULINGO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (52, N'CALUCO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (53, N'SAN ANTONIO DEL MONTE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (54, N'SONSONATE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (55, N'SAN JULIAN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (56, N'ARMENIA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (57, N'IZALCO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (58, N'SANTA CATARINA MASAHUAT', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (59, N'SALCOATITAN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (60, N'NAHUIZALCO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (61, N'JUAYUA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (62, N'SONZACATE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (63, N'SANTO DOMINGO DE GUZMAN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 3)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (64, N'NUEVA CONCEPCION', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (65, N'AGUA CALIENTE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (66, N'LA PALMA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (67, N'SAN IGNACIO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (68, N'CITALA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (69, N'SAN FERNANDO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (70, N'LA REINA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (71, N'SAN FRANCISCO MORAZAN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (72, N'TEJUTLA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (73, N'DULCE NOMBRE DE MARIA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (74, N'EL PARAISO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (75, N'SAN RAFAEL', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (76, N'SANTA RITA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (77, N'CONCEPCION QUEZALTEPEQUE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (78, N'CHALATENANGO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (79, N'NUEVA TRINIDAD', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (80, N'LAS VUELTAS', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (81, N'OJOS DE AGUA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (82, N'SAN ISIDRO LABRADOR', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (83, N'CANCASQUE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (84, N'POTONICO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (85, N'SAN MIGUEL DE MERCEDES', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (86, N'SAN ANTONIO LOS RANCHOS', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (87, N'AZACUALPA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (88, N'SAN LUIS DEL CARMEN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (89, N'SAN FRANCISCO LEMPA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (90, N'SAN ANTONIO DE LA CRUZ', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (91, N'NOMBRE DE JESUS', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (92, N'LAS FLORES', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (93, N'ARCATAO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (94, N'COMALAPA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (95, N'LA LAGUNA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (96, N'EL CARRIZAL', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 4)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (97, N'ROSARIO DE MORA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (98, N'PANCHIMALCO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (99, N'SAN MARCOS', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 6)
GO
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (100, N'SANTO TOMAS', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (101, N'SANTIAGO TEXACUANGOS', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (102, N'ILOPANGO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (103, N'CUSCATANCINGO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (104, N'SOYAPANGO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (105, N'SAN SALVADOR', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (106, N'MEJICANOS', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (107, N'AYUTUXTEPEQUE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (108, N'CIUDAD DELGADO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (109, N'SAN MARTIN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (110, N'TONACATEPEQUE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (111, N'APOPA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (112, N'NEJAPA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (113, N'GUAZAPA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (114, N'AGUILARES', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (115, N'EL PAISNAL', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 6)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (116, N'SUCHITOTO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (117, N'TENANCINGO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (118, N'SAN JOSE GUAYABAL', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (119, N'ORATORIO DE CONCEPCION', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (120, N'SAN BARTOLOME PERULAPIA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (121, N'SAN PEDRO PERULAPAN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (122, N'SANTA CRUZ MICHAPA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (123, N'MONTE SAN JUAN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (124, N'EL ROSARIO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (125, N'SAN RAFAEL CEDROS', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (126, N'COJUTEPEQUE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (127, N'EL CARMEN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (128, N'SAN CRISTOBAL', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (129, N'CANDELARIA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (130, N'SAN RAMON', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (131, N'SANTA CRUZ ANALQUITO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 7)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (132, N'SAN LUIS TALPA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (133, N'OLOCUILTA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (134, N'SAN JUAN TALPA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (135, N'EL ROSARIO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (136, N'SAN ANTONIO MASAHUAT', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (137, N'TAPALHUACA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (138, N'CUYULTITAN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (139, N'SAN FRANCISCO CHINAMECA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (140, N'SAN JUAN TEPEZONTES', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (141, N'SANTIAGO NONUALCO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (142, N'SAN PEDRO MASAHUAT', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (143, N'SAN JUAN NONUALCO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (144, N'ZACATECOLUCA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (145, N'SAN RAFAEL OBRAJUELO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (146, N'SAN LUIS LA HERRADURA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (147, N'SAN PEDRO NONUALCO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (148, N'SANTA MARIA OSTUMA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (149, N'PARAISO DE OSORIO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (150, N'SAN EMIGDIO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (151, N'SAN MIGUEL TEPEZONTES', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (152, N'JERUSALEN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (153, N'MERCEDES LA CEIBA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 8)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (154, N'ILOBASCO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 9)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (155, N'SAN ISIDRO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 9)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (156, N'JUTIAPA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 9)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (157, N'TEJUTEPEQUE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 9)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (158, N'CINQUERA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 9)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (159, N'SENSUNTEPEQUE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 9)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (160, N'VICTORIA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 9)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (161, N'GUACOTECTI', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 9)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (162, N'DOLORES', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 9)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (163, N'APASTEPEQUE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (164, N'SAN SEBASTIAN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (165, N'VERAPAZ', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (166, N'SANTO DOMINGO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (167, N'SAN LORENZO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (168, N'TEPETITAN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (169, N'SAN CAYETANO ISTEPEQUE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (170, N'GUADALUPE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (171, N'TECOLUCA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (172, N'SAN ILDEFONSO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (173, N'SANTA CLARA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (174, N'SAN ESTEBAN CATARINA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (175, N'SAN VICENTE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 10)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (176, N'ESTANZUELAS', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (177, N'SAN AGUSTIN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (178, N'BERLIN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (179, N'NUEVA GRANADA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (180, N'EL TRIUNFO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (181, N'SAN BUENA VENTURA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (182, N'SANTIAGO DE MARIA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (183, N'JUCUAPA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (184, N'ALEGRIA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (185, N'JIQUILISCO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (186, N'SANTA ELENA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (187, N'SAN FRANCISCO JAVIER', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (188, N'TECAPAN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (189, N'CALIFORNIA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (190, N'OZATLAN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (191, N'SANTA MARIA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (192, N'EREGUAYQUIN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (193, N'USULUTAN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (194, N'CONCEPCION BATRES', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (195, N'SAN DIONISIO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (196, N'PUERTO EL TRIUNFO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (197, N'JUCUARAN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (198, N'MERCEDES UMANA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 11)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (199, N'SESORI', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 12)
GO
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (200, N'NUEVO EDEN DE SAN JUAN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (201, N'SAN GERARDO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (202, N'SAN LUIS DE LA REINA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (203, N'CAROLINA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (204, N'SAN ANTONIO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (205, N'CIUDAD BARRIOS', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (206, N'CHAPELTIQUE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (207, N'LOLOTIQUE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (208, N'MONCAGUA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (209, N'NUEVA GUADALUPE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (210, N'CHINAMECA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (211, N'SAN JORGE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (212, N'QUELEPA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (213, N'SAN MIGUEL', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (214, N'SAN RAFAEL ORIENTE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (215, N'EL TRANSITO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (216, N'CHIRILAGUA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (217, N'ULUAZAPA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (218, N'COMACARAN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 12)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (219, N'LOLOTIQUILLO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (220, N'CHILANGA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (221, N'GUATAJIAGUA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (222, N'SAN FRANCISCO GOTERA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (223, N'SENSEMBRA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (224, N'YAMABAL', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (225, N'SAN CARLOS', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (226, N'EL DIVISADERO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (227, N'JOCORO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (228, N'CORINTO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (229, N'SOCIEDAD', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (230, N'CACAOPERA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (231, N'SAN FERNANDO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (232, N'ARAMBALA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (233, N'PERQUIN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (234, N'JOCOAITIQUE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (235, N'TOROLA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (236, N'SAN ISIDRO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (237, N'EL ROSARIO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (238, N'MEANGUERA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (239, N'JOATECA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (240, N'SAN SIMON', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (241, N'GUALOCOCTI', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (242, N'DELICIAS DE CONCEPCION', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (243, N'YOLOAIQUIN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (244, N'OSICALA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 13)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (245, N'SAN ALEJO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (246, N'PASAQUINA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (247, N'SANTA ROSA DE LIMA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (248, N'EL SAUCE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (249, N'ANAMOROS', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (250, N'CONCHAGUA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (251, N'INTIPUCA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (252, N'NUEVA ESPARTA', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (253, N'LISLIQUE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (254, N'POLOROS', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (255, N'CONCEPCION DE ORIENTE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (256, N'YUCUAIQUIN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (257, N'BOLIVAR', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (258, N'SAN JOSE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (259, N'YAYANTIQUE', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (260, N'EL CARMEN', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (261, N'LA UNION', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 14)
INSERT [dbo].[SGT_Municipio] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [department_id]) VALUES (262, N'MEANGUERA DEL GOLFO', 0, 0, CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), CAST(0x0700A599852CE63F0B0000 AS DateTimeOffset), 14)
SET IDENTITY_INSERT [dbo].[SGT_Municipio] OFF
SET IDENTITY_INSERT [dbo].[SGT_Procuraduria] ON 

INSERT [dbo].[SGT_Procuraduria] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [address_id], [enabled]) VALUES (2, N'Procuraduria auxiliar de Santa Ana', NULL, NULL, CAST(0x07E079F6F95556400B0000 AS DateTimeOffset), CAST(0x0740D398255656400B0000 AS DateTimeOffset), 1002, 1)
INSERT [dbo].[SGT_Procuraduria] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [address_id], [enabled]) VALUES (3, N'Procuraduría General de la República de El Salvador', NULL, NULL, CAST(0x0780330DAF5856400B0000 AS DateTimeOffset), CAST(0x0780330DAF5856400B0000 AS DateTimeOffset), 1003, 1)
INSERT [dbo].[SGT_Procuraduria] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [address_id], [enabled]) VALUES (4, N'Procuraduria Institucion Pruebaa', NULL, NULL, CAST(0x07502165221B8D400B0000 AS DateTimeOffset), CAST(0x0710023803178E400B0000 AS DateTimeOffset), 2004, 1)
INSERT [dbo].[SGT_Procuraduria] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [address_id], [enabled]) VALUES (5, N'46897512255', NULL, NULL, CAST(0x0750DE6F949092400B0000 AS DateTimeOffset), CAST(0x07E0BB838A9B92400B0000 AS DateTimeOffset), 2005, 1)
INSERT [dbo].[SGT_Procuraduria] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [address_id], [enabled]) VALUES (6, N'Otra pruebitas', NULL, NULL, CAST(0x0760E3E94A9192400B0000 AS DateTimeOffset), CAST(0x0780CEC8F19B92400B0000 AS DateTimeOffset), 2006, 1)
INSERT [dbo].[SGT_Procuraduria] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [address_id], [enabled]) VALUES (7, N'otra prueba 2', NULL, NULL, CAST(0x07E014895E9192400B0000 AS DateTimeOffset), CAST(0x0720EAE5849492400B0000 AS DateTimeOffset), 2007, 1)
INSERT [dbo].[SGT_Procuraduria] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [address_id], [enabled]) VALUES (8, N'refrescar', NULL, NULL, CAST(0x07D050EF1F9392400B0000 AS DateTimeOffset), CAST(0x078017D2859792400B0000 AS DateTimeOffset), 2008, 1)
INSERT [dbo].[SGT_Procuraduria] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [address_id], [enabled]) VALUES (9, N'habilitadaa', NULL, NULL, CAST(0x07F0C33F9A9492400B0000 AS DateTimeOffset), CAST(0x071084F4409A92400B0000 AS DateTimeOffset), 2009, 1)
INSERT [dbo].[SGT_Procuraduria] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [address_id], [enabled]) VALUES (10, N'Procus', NULL, NULL, CAST(0x07B0A7E5599592400B0000 AS DateTimeOffset), CAST(0x07908B3A769792400B0000 AS DateTimeOffset), 2010, 1)
INSERT [dbo].[SGT_Procuraduria] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [address_id], [enabled]) VALUES (11, N'65655674567987', NULL, NULL, CAST(0x078050AFF39592400B0000 AS DateTimeOffset), CAST(0x075062AB1E9792400B0000 AS DateTimeOffset), 2011, 0)
INSERT [dbo].[SGT_Procuraduria] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [address_id], [enabled]) VALUES (12, N'deshabilitadaz', NULL, NULL, CAST(0x0720D74BE39792400B0000 AS DateTimeOffset), CAST(0x0780A1D96E9A92400B0000 AS DateTimeOffset), 2012, 0)
SET IDENTITY_INSERT [dbo].[SGT_Procuraduria] OFF
SET IDENTITY_INSERT [dbo].[SGT_Ruta] ON 

INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id], [enabled]) VALUES (1, N'Aeropuerto', NULL, NULL, CAST(0x07E00C0BBF0C3A400B0000 AS DateTimeOffset), CAST(0x07E00C0BBF0C3A400B0000 AS DateTimeOffset), NULL, NULL, 1)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id], [enabled]) VALUES (2, N'San Salvador', NULL, NULL, CAST(0x0750D7E83F143A400B0000 AS DateTimeOffset), CAST(0x07D05B0E7D1B3A400B0000 AS DateTimeOffset), NULL, NULL, 1)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id], [enabled]) VALUES (3, N'UAEM', NULL, NULL, CAST(0x07D08B6C122A3A400B0000 AS DateTimeOffset), CAST(0x07D08B6C122A3A400B0000 AS DateTimeOffset), NULL, NULL, 1)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id], [enabled]) VALUES (4, N'Interior', NULL, NULL, CAST(0x07A0EB6F162A3A400B0000 AS DateTimeOffset), CAST(0x07A0EB6F162A3A400B0000 AS DateTimeOffset), NULL, NULL, 1)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id], [enabled]) VALUES (5, N'San Marcos', NULL, NULL, CAST(0x0730AE811B2A3A400B0000 AS DateTimeOffset), CAST(0x0730AE811B2A3A400B0000 AS DateTimeOffset), NULL, NULL, 1)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id], [enabled]) VALUES (6, N'Ciudad Delgado', NULL, NULL, CAST(0x074089B7222A3A400B0000 AS DateTimeOffset), CAST(0x074089B7222A3A400B0000 AS DateTimeOffset), NULL, NULL, 1)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id], [enabled]) VALUES (7, N'Compensatorio', NULL, NULL, CAST(0x071086FD282A3A400B0000 AS DateTimeOffset), CAST(0x071086FD282A3A400B0000 AS DateTimeOffset), NULL, NULL, 1)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id], [enabled]) VALUES (1005, N'UES', NULL, NULL, CAST(0x07304A86915456400B0000 AS DateTimeOffset), CAST(0x07304A86915456400B0000 AS DateTimeOffset), NULL, 1, 1)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id], [enabled]) VALUES (1006, N'prueba ', NULL, NULL, CAST(0x0750C2D9483496400B0000 AS DateTimeOffset), CAST(0x07C08FF48B3496400B0000 AS DateTimeOffset), NULL, 2, 0)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id], [enabled]) VALUES (1007, N'5465464sad', NULL, NULL, CAST(0x0750CDC0673796400B0000 AS DateTimeOffset), CAST(0x0750CDC0673796400B0000 AS DateTimeOffset), NULL, 3, 0)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id], [enabled]) VALUES (1008, N'4566', NULL, NULL, CAST(0x07E09DA66C3796400B0000 AS DateTimeOffset), CAST(0x07E09DA66C3796400B0000 AS DateTimeOffset), NULL, 4, 0)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id], [enabled]) VALUES (1009, N'San Miguelito', NULL, NULL, CAST(0x07008CF48D1498400B0000 AS DateTimeOffset), CAST(0x07008CF48D1498400B0000 AS DateTimeOffset), NULL, 5, 1)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id], [enabled]) VALUES (1010, N'los chorrotos', NULL, NULL, CAST(0x07F098911A1698400B0000 AS DateTimeOffset), CAST(0x07B0BA2C531A98400B0000 AS DateTimeOffset), NULL, 6, 1)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id], [enabled]) VALUES (1011, N'los chorros', NULL, NULL, CAST(0x0790EF1F6D1698400B0000 AS DateTimeOffset), CAST(0x0790EF1F6D1698400B0000 AS DateTimeOffset), NULL, 7, 0)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id], [enabled]) VALUES (1012, N'Santo Tomas', NULL, NULL, CAST(0x0730E0721F1798400B0000 AS DateTimeOffset), CAST(0x0730E0721F1798400B0000 AS DateTimeOffset), NULL, 8, 1)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id], [enabled]) VALUES (1013, N'San Miguelito', NULL, NULL, CAST(0x07C031B2991798400B0000 AS DateTimeOffset), CAST(0x07C031B2991798400B0000 AS DateTimeOffset), NULL, 9, 1)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id], [enabled]) VALUES (1014, N'todos', NULL, NULL, CAST(0x07E0E6D40A1898400B0000 AS DateTimeOffset), CAST(0x07E0E6D40A1898400B0000 AS DateTimeOffset), NULL, 10, 1)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id], [enabled]) VALUES (1015, N'asola', NULL, NULL, CAST(0x070038F7D91998400B0000 AS DateTimeOffset), CAST(0x070038F7D91998400B0000 AS DateTimeOffset), NULL, 11, 0)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id], [enabled]) VALUES (1016, N'San Miguelito', NULL, NULL, CAST(0x07B02D16E81998400B0000 AS DateTimeOffset), CAST(0x07C08F84101B98400B0000 AS DateTimeOffset), NULL, 12, 1)
INSERT [dbo].[SGT_Ruta] ([id], [name], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [route_conditions_id], [enabled]) VALUES (1017, N'ruta', NULL, NULL, CAST(0x07504BCC228E98400B0000 AS DateTimeOffset), CAST(0x07504BCC228E98400B0000 AS DateTimeOffset), NULL, 13, 1)
SET IDENTITY_INSERT [dbo].[SGT_Ruta] OFF
SET IDENTITY_INSERT [dbo].[SGT_Unidad] ON 

INSERT [dbo].[SGT_Unidad] ([id], [name_unit], [created_by], [updated_by], [created_at], [updated_at]) VALUES (1, N'Penal', NULL, NULL, CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset))
INSERT [dbo].[SGT_Unidad] ([id], [name_unit], [created_by], [updated_by], [created_at], [updated_at]) VALUES (2, N'Servicio Social', NULL, NULL, CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset), CAST(0x0770EBA6852CE63F0B0000 AS DateTimeOffset))
SET IDENTITY_INSERT [dbo].[SGT_Unidad] OFF
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (1, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000096400B0000 AS DateTimeOffset), N'UNO', NULL, NULL, CAST(0x0710880DAA0597400B0000 AS DateTimeOffset), CAST(0x0710880DAA0597400B0000 AS DateTimeOffset), 707, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (2, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'968753', NULL, NULL, CAST(0x07C03AB7BEC097400B0000 AS DateTimeOffset), CAST(0x07C03AB7BEC097400B0000 AS DateTimeOffset), 976674, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (2, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000096400B0000 AS DateTimeOffset), N'UNO', NULL, NULL, CAST(0x07D0E422AA0597400B0000 AS DateTimeOffset), CAST(0x07D0E422AA0597400B0000 AS DateTimeOffset), 707, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (3, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'968753', NULL, NULL, CAST(0x078062C0BEC097400B0000 AS DateTimeOffset), CAST(0x078062C0BEC097400B0000 AS DateTimeOffset), 976674, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (3, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000096400B0000 AS DateTimeOffset), N'UNO', NULL, NULL, CAST(0x07E0B131AA0597400B0000 AS DateTimeOffset), CAST(0x07E0B131AA0597400B0000 AS DateTimeOffset), 707, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (4, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'968753', NULL, NULL, CAST(0x07A092C5BEC097400B0000 AS DateTimeOffset), CAST(0x07A092C5BEC097400B0000 AS DateTimeOffset), 976674, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (4, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000096400B0000 AS DateTimeOffset), N'UNO', NULL, NULL, CAST(0x07C02051AA0597400B0000 AS DateTimeOffset), CAST(0x07C02051AA0597400B0000 AS DateTimeOffset), 707, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (5, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'968753', NULL, NULL, CAST(0x07902FCFBEC097400B0000 AS DateTimeOffset), CAST(0x07902FCFBEC097400B0000 AS DateTimeOffset), 976674, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (5, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000096400B0000 AS DateTimeOffset), N'UNO', NULL, NULL, CAST(0x0710BF6CAA0597400B0000 AS DateTimeOffset), CAST(0x0710BF6CAA0597400B0000 AS DateTimeOffset), 707, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (6, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'968753', NULL, NULL, CAST(0x079082D6BEC097400B0000 AS DateTimeOffset), CAST(0x079082D6BEC097400B0000 AS DateTimeOffset), 976674, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (6, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000096400B0000 AS DateTimeOffset), N'UNO', NULL, NULL, CAST(0x0740F876AA0597400B0000 AS DateTimeOffset), CAST(0x0740F876AA0597400B0000 AS DateTimeOffset), 707, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (7, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000096400B0000 AS DateTimeOffset), N'UNO', NULL, NULL, CAST(0x0760287CAA0597400B0000 AS DateTimeOffset), CAST(0x0760287CAA0597400B0000 AS DateTimeOffset), 707, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (8, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000096400B0000 AS DateTimeOffset), N'UNO', NULL, NULL, CAST(0x07206E80AA0597400B0000 AS DateTimeOffset), CAST(0x07206E80AA0597400B0000 AS DateTimeOffset), 707, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (9, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000096400B0000 AS DateTimeOffset), N'UNO', NULL, NULL, CAST(0x0740808AAA0597400B0000 AS DateTimeOffset), CAST(0x0740808AAA0597400B0000 AS DateTimeOffset), 707, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (10, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000096400B0000 AS DateTimeOffset), N'UNO', NULL, NULL, CAST(0x0750FA91AA0597400B0000 AS DateTimeOffset), CAST(0x0750FA91AA0597400B0000 AS DateTimeOffset), 707, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (200, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'PUMA', NULL, NULL, CAST(0x07C08AC73EC297400B0000 AS DateTimeOffset), CAST(0x07C08AC73EC297400B0000 AS DateTimeOffset), 800, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (200, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'TEXACO', NULL, NULL, CAST(0x0730A475AABF97400B0000 AS DateTimeOffset), CAST(0x0730A475AABF97400B0000 AS DateTimeOffset), 39329648, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (201, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'PUMA', NULL, NULL, CAST(0x0740C76E3FC297400B0000 AS DateTimeOffset), CAST(0x0740C76E3FC297400B0000 AS DateTimeOffset), 800, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (201, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'TEXACO', NULL, NULL, CAST(0x07807E87AABF97400B0000 AS DateTimeOffset), CAST(0x07807E87AABF97400B0000 AS DateTimeOffset), 39329648, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (202, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'PUMA', NULL, NULL, CAST(0x07909A963FC297400B0000 AS DateTimeOffset), CAST(0x07909A963FC297400B0000 AS DateTimeOffset), 800, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (202, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'TEXACO', NULL, NULL, CAST(0x07E09D94AABF97400B0000 AS DateTimeOffset), CAST(0x07E09D94AABF97400B0000 AS DateTimeOffset), 39329648, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (203, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'PUMA', NULL, NULL, CAST(0x071089CD3FC297400B0000 AS DateTimeOffset), CAST(0x071089CD3FC297400B0000 AS DateTimeOffset), 800, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (203, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'TEXACO', NULL, NULL, CAST(0x07201C9AAABF97400B0000 AS DateTimeOffset), CAST(0x07201C9AAABF97400B0000 AS DateTimeOffset), 39329648, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (204, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'PUMA', NULL, NULL, CAST(0x07409DF23FC297400B0000 AS DateTimeOffset), CAST(0x07409DF23FC297400B0000 AS DateTimeOffset), 800, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (204, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'TEXACO', NULL, NULL, CAST(0x07E0619EAABF97400B0000 AS DateTimeOffset), CAST(0x07E0619EAABF97400B0000 AS DateTimeOffset), 39329648, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (205, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'PUMA', NULL, NULL, CAST(0x07E0C21840C297400B0000 AS DateTimeOffset), CAST(0x07E0C21840C297400B0000 AS DateTimeOffset), 800, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (205, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'TEXACO', NULL, NULL, CAST(0x079080A2AABF97400B0000 AS DateTimeOffset), CAST(0x079080A2AABF97400B0000 AS DateTimeOffset), 39329648, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (206, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'PUMA', NULL, NULL, CAST(0x0710312F40C297400B0000 AS DateTimeOffset), CAST(0x0710312F40C297400B0000 AS DateTimeOffset), 800, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (206, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'TEXACO', NULL, NULL, CAST(0x07C048AAAABF97400B0000 AS DateTimeOffset), CAST(0x07C048AAAABF97400B0000 AS DateTimeOffset), 39329648, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (207, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'PUMA', NULL, NULL, CAST(0x07406A3940C297400B0000 AS DateTimeOffset), CAST(0x07406A3940C297400B0000 AS DateTimeOffset), 800, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (207, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'TEXACO', NULL, NULL, CAST(0x07F09FAFAABF97400B0000 AS DateTimeOffset), CAST(0x07F09FAFAABF97400B0000 AS DateTimeOffset), 39329648, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (208, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'PUMA', NULL, NULL, CAST(0x0740CFBA40C297400B0000 AS DateTimeOffset), CAST(0x0740CFBA40C297400B0000 AS DateTimeOffset), 800, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (208, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'TEXACO', NULL, NULL, CAST(0x07A0BEB3AABF97400B0000 AS DateTimeOffset), CAST(0x07A0BEB3AABF97400B0000 AS DateTimeOffset), 39329648, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (209, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'PUMA', NULL, NULL, CAST(0x07705BCC40C297400B0000 AS DateTimeOffset), CAST(0x07705BCC40C297400B0000 AS DateTimeOffset), 800, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (209, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'TEXACO', NULL, NULL, CAST(0x078052B8AABF97400B0000 AS DateTimeOffset), CAST(0x078052B8AABF97400B0000 AS DateTimeOffset), 39329648, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (210, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'PUMA', NULL, NULL, CAST(0x07906DD640C297400B0000 AS DateTimeOffset), CAST(0x07906DD640C297400B0000 AS DateTimeOffset), 800, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (210, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'TEXACO', NULL, NULL, CAST(0x0760E6BCAABF97400B0000 AS DateTimeOffset), CAST(0x0760E6BCAABF97400B0000 AS DateTimeOffset), 39329648, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (220, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'123', NULL, NULL, CAST(0x07F0D60BD8C297400B0000 AS DateTimeOffset), CAST(0x07F0D60BD8C297400B0000 AS DateTimeOffset), 789, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (220, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'456', NULL, NULL, CAST(0x07409BE818C397400B0000 AS DateTimeOffset), CAST(0x07409BE818C397400B0000 AS DateTimeOffset), 444, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (221, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'123', NULL, NULL, CAST(0x07409322D8C297400B0000 AS DateTimeOffset), CAST(0x07409322D8C297400B0000 AS DateTimeOffset), 789, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (221, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'456', NULL, NULL, CAST(0x074041F718C397400B0000 AS DateTimeOffset), CAST(0x074041F718C397400B0000 AS DateTimeOffset), 444, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (222, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'123', NULL, NULL, CAST(0x07F0932BD8C297400B0000 AS DateTimeOffset), CAST(0x07F0932BD8C297400B0000 AS DateTimeOffset), 789, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (222, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'456', NULL, NULL, CAST(0x0700DA0219C397400B0000 AS DateTimeOffset), CAST(0x0700DA0219C397400B0000 AS DateTimeOffset), 444, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (223, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'123', NULL, NULL, CAST(0x0750EF2ED8C297400B0000 AS DateTimeOffset), CAST(0x0750EF2ED8C297400B0000 AS DateTimeOffset), 789, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (223, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'456', NULL, NULL, CAST(0x07B0DA0B19C397400B0000 AS DateTimeOffset), CAST(0x07B0DA0B19C397400B0000 AS DateTimeOffset), 444, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (400, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'963', NULL, NULL, CAST(0x076024E045C397400B0000 AS DateTimeOffset), CAST(0x076024E045C397400B0000 AS DateTimeOffset), 147, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (400, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07A098FFBDC297400B0000 AS DateTimeOffset), CAST(0x07A098FFBDC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (401, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'963', NULL, NULL, CAST(0x0780C5E745C397400B0000 AS DateTimeOffset), CAST(0x0780C5E745C397400B0000 AS DateTimeOffset), 147, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (401, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07C01B0CBEC297400B0000 AS DateTimeOffset), CAST(0x07C01B0CBEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (402, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'963', NULL, NULL, CAST(0x07903FEF45C397400B0000 AS DateTimeOffset), CAST(0x07903FEF45C397400B0000 AS DateTimeOffset), 147, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (402, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07103214BEC297400B0000 AS DateTimeOffset), CAST(0x07103214BEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (403, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'963', NULL, NULL, CAST(0x0770B5F845C397400B0000 AS DateTimeOffset), CAST(0x0770B5F845C397400B0000 AS DateTimeOffset), 147, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (403, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07301F39BEC297400B0000 AS DateTimeOffset), CAST(0x07301F39BEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (404, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'963', NULL, NULL, CAST(0x0720270446C397400B0000 AS DateTimeOffset), CAST(0x0720270446C397400B0000 AS DateTimeOffset), 147, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (404, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07D04B49BEC297400B0000 AS DateTimeOffset), CAST(0x07D04B49BEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (405, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'963', NULL, NULL, CAST(0x07E0121746C397400B0000 AS DateTimeOffset), CAST(0x07E0121746C397400B0000 AS DateTimeOffset), 147, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (405, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07907352BEC297400B0000 AS DateTimeOffset), CAST(0x07907352BEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (406, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07D0445FBEC297400B0000 AS DateTimeOffset), CAST(0x07D0445FBEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (407, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x0760D96CBEC297400B0000 AS DateTimeOffset), CAST(0x0760D96CBEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (408, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07D0907CBEC297400B0000 AS DateTimeOffset), CAST(0x07D0907CBEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (409, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07B00686BEC297400B0000 AS DateTimeOffset), CAST(0x07B00686BEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (410, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07900B8DBEC297400B0000 AS DateTimeOffset), CAST(0x07900B8DBEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (411, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x0720A09ABEC297400B0000 AS DateTimeOffset), CAST(0x0720A09ABEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (412, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07308BA4BEC297400B0000 AS DateTimeOffset), CAST(0x07308BA4BEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (413, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x076071A7BEC297400B0000 AS DateTimeOffset), CAST(0x076071A7BEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (414, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x0760A6B3BEC297400B0000 AS DateTimeOffset), CAST(0x0760A6B3BEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (415, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x0750D2BABEC297400B0000 AS DateTimeOffset), CAST(0x0750D2BABEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (416, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07807CC7BEC297400B0000 AS DateTimeOffset), CAST(0x07807CC7BEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (417, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07E048CDBEC297400B0000 AS DateTimeOffset), CAST(0x07E048CDBEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (418, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x076063D3BEC297400B0000 AS DateTimeOffset), CAST(0x076063D3BEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (419, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x0710D5DEBEC297400B0000 AS DateTimeOffset), CAST(0x0710D5DEBEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (420, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x077047F3BEC297400B0000 AS DateTimeOffset), CAST(0x077047F3BEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (421, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x0780A3FFBEC297400B0000 AS DateTimeOffset), CAST(0x0780A3FFBEC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (422, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x0780F606BFC297400B0000 AS DateTimeOffset), CAST(0x0780F606BFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (423, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07205F0DBFC297400B0000 AS DateTimeOffset), CAST(0x07205F0DBFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (424, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07108B14BFC297400B0000 AS DateTimeOffset), CAST(0x07108B14BFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (425, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07F01E19BFC297400B0000 AS DateTimeOffset), CAST(0x07F01E19BFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (426, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x0770AA21BFC297400B0000 AS DateTimeOffset), CAST(0x0770AA21BFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (427, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07706E2BBFC297400B0000 AS DateTimeOffset), CAST(0x07706E2BBFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (428, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07807730BFC297400B0000 AS DateTimeOffset), CAST(0x07807730BFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (429, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x0770143ABFC297400B0000 AS DateTimeOffset), CAST(0x0770143ABFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (430, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07D05142BFC297400B0000 AS DateTimeOffset), CAST(0x07D05142BFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (431, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07E0CB49BFC297400B0000 AS DateTimeOffset), CAST(0x07E0CB49BFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (432, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x0700FC4EBFC297400B0000 AS DateTimeOffset), CAST(0x0700FC4EBFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (433, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x0730C456BFC297400B0000 AS DateTimeOffset), CAST(0x0730C456BFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (434, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07B04875BFC297400B0000 AS DateTimeOffset), CAST(0x07B04875BFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (435, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07E0817FBFC297400B0000 AS DateTimeOffset), CAST(0x07E0817FBFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (436, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x0720E289BFC297400B0000 AS DateTimeOffset), CAST(0x0720E289BFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (437, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x0700E790BFC297400B0000 AS DateTimeOffset), CAST(0x0700E790BFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (438, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x0750FD98BFC297400B0000 AS DateTimeOffset), CAST(0x0750FD98BFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (439, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x077080A5BFC297400B0000 AS DateTimeOffset), CAST(0x077080A5BFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (440, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x0780FAACBFC297400B0000 AS DateTimeOffset), CAST(0x0780FAACBFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (441, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x077097B6BFC297400B0000 AS DateTimeOffset), CAST(0x077097B6BFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (442, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x0770EABDBFC297400B0000 AS DateTimeOffset), CAST(0x0770EABDBFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (443, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07E0A1CDBFC297400B0000 AS DateTimeOffset), CAST(0x07E0A1CDBFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (444, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07C0A6D4BFC297400B0000 AS DateTimeOffset), CAST(0x07C0A6D4BFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (445, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07503BE2BFC297400B0000 AS DateTimeOffset), CAST(0x07503BE2BFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (446, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x0760B5E9BFC297400B0000 AS DateTimeOffset), CAST(0x0760B5E9BFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (447, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07A0A4F1BFC297400B0000 AS DateTimeOffset), CAST(0x07A0A4F1BFC297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (448, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x0790D0F8BFC297400B0000 AS DateTimeOffset), CAST(0x0790D0F8BFC297400B0000 AS DateTimeOffset), 456, NULL)
GO
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (449, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07B05305C0C297400B0000 AS DateTimeOffset), CAST(0x07B05305C0C297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (450, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000097400B0000 AS DateTimeOffset), N'SEMI', NULL, NULL, CAST(0x07A0D213C0C297400B0000 AS DateTimeOffset), CAST(0x07A0D213C0C297400B0000 AS DateTimeOffset), 456, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (500, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x070000000000F7400B0000 AS DateTimeOffset), N'DLC', NULL, NULL, CAST(0x0770DCB2D1C497400B0000 AS DateTimeOffset), CAST(0x0770DCB2D1C497400B0000 AS DateTimeOffset), 711, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (501, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x070000000000F7400B0000 AS DateTimeOffset), N'DLC', NULL, NULL, CAST(0x0750C3BED1C497400B0000 AS DateTimeOffset), CAST(0x0750C3BED1C497400B0000 AS DateTimeOffset), 711, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (502, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x070000000000F7400B0000 AS DateTimeOffset), N'DLC', NULL, NULL, CAST(0x074095D4D1C497400B0000 AS DateTimeOffset), CAST(0x074095D4D1C497400B0000 AS DateTimeOffset), 711, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (503, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x070000000000F7400B0000 AS DateTimeOffset), N'DLC', NULL, NULL, CAST(0x07B0F9DCD1C497400B0000 AS DateTimeOffset), CAST(0x07B0F9DCD1C497400B0000 AS DateTimeOffset), 711, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (504, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x070000000000F7400B0000 AS DateTimeOffset), N'DLC', NULL, NULL, CAST(0x0700F2E9D1C497400B0000 AS DateTimeOffset), CAST(0x0700F2E9D1C497400B0000 AS DateTimeOffset), 711, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (505, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x070000000000F7400B0000 AS DateTimeOffset), N'DLC', NULL, NULL, CAST(0x0780580DD2C497400B0000 AS DateTimeOffset), CAST(0x0780580DD2C497400B0000 AS DateTimeOffset), 711, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (506, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x0700000000009C400B0000 AS DateTimeOffset), N'DLCUNO', NULL, NULL, CAST(0x07303346CCC597400B0000 AS DateTimeOffset), CAST(0x07303346CCC597400B0000 AS DateTimeOffset), 712, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (507, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x0700000000009C400B0000 AS DateTimeOffset), N'DLCUNO', NULL, NULL, CAST(0x07905253CCC597400B0000 AS DateTimeOffset), CAST(0x07905253CCC597400B0000 AS DateTimeOffset), 712, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (508, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x070000000000CC1E010000 AS DateTimeOffset), N'Semi', NULL, NULL, CAST(0x07F037361BC797400B0000 AS DateTimeOffset), CAST(0x07F037361BC797400B0000 AS DateTimeOffset), 713, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (509, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x070000000000CC1E010000 AS DateTimeOffset), N'Semi', NULL, NULL, CAST(0x0720003E1BC797400B0000 AS DateTimeOffset), CAST(0x0720003E1BC797400B0000 AS DateTimeOffset), 713, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (510, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x070000000000CC1E010000 AS DateTimeOffset), N'Semi', NULL, NULL, CAST(0x0750AA4A1BC797400B0000 AS DateTimeOffset), CAST(0x0750AA4A1BC797400B0000 AS DateTimeOffset), 713, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (511, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x070000000000941D010000 AS DateTimeOffset), N'TEXA', NULL, NULL, CAST(0x0700B2812B0098400B0000 AS DateTimeOffset), CAST(0x0700B2812B0098400B0000 AS DateTimeOffset), 714, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (512, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x070000000000941D010000 AS DateTimeOffset), N'TEXA', NULL, NULL, CAST(0x0770168A2B0098400B0000 AS DateTimeOffset), CAST(0x0770168A2B0098400B0000 AS DateTimeOffset), 714, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (513, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x070000000000941D010000 AS DateTimeOffset), N'TEXA', NULL, NULL, CAST(0x07A0C0962B0098400B0000 AS DateTimeOffset), CAST(0x07A0C0962B0098400B0000 AS DateTimeOffset), 714, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (514, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x070000000000941D010000 AS DateTimeOffset), N'TEXA', NULL, NULL, CAST(0x07601DAC2B0098400B0000 AS DateTimeOffset), CAST(0x07601DAC2B0098400B0000 AS DateTimeOffset), 714, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (715, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000098400B0000 AS DateTimeOffset), N'uni', NULL, NULL, CAST(0x073096AD578E98400B0000 AS DateTimeOffset), CAST(0x073096AD578E98400B0000 AS DateTimeOffset), 745896, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (716, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000098400B0000 AS DateTimeOffset), N'uni', NULL, NULL, CAST(0x07A0DCBA578E98400B0000 AS DateTimeOffset), CAST(0x07A0DCBA578E98400B0000 AS DateTimeOffset), 745896, NULL)
INSERT [dbo].[SGT_Vale] ([num_voucher], [price], [condition], [date_entry], [voucher_provider], [created_by], [updated_by], [created_at], [updated_at], [num_entry_bill], [num_close_bill]) VALUES (717, CAST(10 AS Decimal(18, 0)), N'Disponible', CAST(0x07000000000098400B0000 AS DateTimeOffset), N'uni', NULL, NULL, CAST(0x071005CD578E98400B0000 AS DateTimeOffset), CAST(0x071005CD578E98400B0000 AS DateTimeOffset), 745896, NULL)
SET IDENTITY_INSERT [dbo].[SGT_Vehiculo] ON 

INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [is_traveling]) VALUES (1, N'Toyota', N'Corolla', N'N1234', N'Y1253364', N'64EK125369', 4, N'Funcional', NULL, NULL, CAST(0x070062A821101A400B0000 AS DateTimeOffset), CAST(0x077073A921101A400B0000 AS DateTimeOffset), NULL, 0)
INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [is_traveling]) VALUES (2, N'Hyndai', N'Elantra', N'N1235', N'Y1253365', N'64EK125368', 4, N'Dañado', NULL, NULL, CAST(0x0760F615AB101A400B0000 AS DateTimeOffset), CAST(0x0760A609AC2A35400B0000 AS DateTimeOffset), NULL, 0)
INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [is_traveling]) VALUES (3, N'Chevrolet', N'Aveo', N'N1236', N'Y1253365', N'64EK125368', 4, N'Mantenimiento', NULL, NULL, CAST(0x07E0DAEBF2101A400B0000 AS DateTimeOffset), CAST(0x078061EDF2101A400B0000 AS DateTimeOffset), NULL, 0)
INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [is_traveling]) VALUES (4, N'Chevrolet', N'Spark', N'N1237', N'Y1253365', N'64EK125368', 4, N'Funcional', NULL, NULL, CAST(0x07E0EE8FD9121A400B0000 AS DateTimeOffset), CAST(0x07A0A719482935400B0000 AS DateTimeOffset), NULL, 0)
INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [is_traveling]) VALUES (5, N'Chevrolet', N'Aveo', N'P1238', N'Y1253365', N'64EK125368', 4, N'Mantenimiento', NULL, NULL, CAST(0x07C0E3A88B131A400B0000 AS DateTimeOffset), CAST(0x07408AF43E2A35400B0000 AS DateTimeOffset), NULL, 0)
INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [is_traveling]) VALUES (17, N'BMW', N'I369', N'P36985', N'1453369', N'640KLOP963', 6, N'Funcional', NULL, NULL, CAST(0x07102CA1971735400B0000 AS DateTimeOffset), CAST(0x0740A1A1971735400B0000 AS DateTimeOffset), NULL, 0)
INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [is_traveling]) VALUES (18, N'Hyndai', N'Accent', N'P1237', N'E123658', N'HJ623659123', 4, N'Mantenimiento', NULL, NULL, CAST(0x07B0AAE6F51835400B0000 AS DateTimeOffset), CAST(0x07C03346AF2A35400B0000 AS DateTimeOffset), NULL, 0)
INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [is_traveling]) VALUES (1017, N'BWM', N'X3 sDrive30i', N'N2369', N'Y1253364', N'64TH156324', 6, N'Funcional', NULL, NULL, CAST(0x0790040D08293A400B0000 AS DateTimeOffset), CAST(0x0790040D08293A400B0000 AS DateTimeOffset), NULL, 0)
INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [is_traveling]) VALUES (1018, N'Volkswagen', N'Atlas', N'N7896', N'HK15236', N'65QW123659', 4, N'Funcional', NULL, NULL, CAST(0x07D015C62F293A400B0000 AS DateTimeOffset), CAST(0x07D015C62F293A400B0000 AS DateTimeOffset), NULL, 0)
INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [is_traveling]) VALUES (1019, N'Volswagen', N'Beettle', N'N5698', N'HK15236', N'65QW1235896', 6, N'Funcional', NULL, NULL, CAST(0x07F0E59D4E293A400B0000 AS DateTimeOffset), CAST(0x07F0E59D4E293A400B0000 AS DateTimeOffset), NULL, 0)
INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [is_traveling]) VALUES (1020, N'toyoya', N'corolla', N'PP4545', N'1234567896', N'sdas456ds4a57dsa', 4, N'Funcional', NULL, NULL, CAST(0x07C0A2E5521E8C400B0000 AS DateTimeOffset), CAST(0x07C0A2E5521E8C400B0000 AS DateTimeOffset), NULL, 0)
INSERT [dbo].[SGT_Vehiculo] ([id], [brand], [model], [plate], [chassis], [engine], [seats], [state], [created_by], [updated_by], [created_at], [updated_at], [procuraduria_id], [is_traveling]) VALUES (1021, N'Toyota', N'Yaris', N'N6847', N'VF7S6NFXB57818400 ', N'52WVC10338', 4, N'Mantenimiento', NULL, NULL, CAST(0x0750A46D463492400B0000 AS DateTimeOffset), CAST(0x07503D580D8F92400B0000 AS DateTimeOffset), NULL, 0)
SET IDENTITY_INSERT [dbo].[SGT_Vehiculo] OFF
INSERT [dbo].[SIS_Usuarios] ([Id], [CodigoUsuario], [ApellidosUsuario], [NombresUsuario], [ClaveUsuario], [CorreoElectronicoUsuario], [MovilMensajeCortoUsuario], [CodigoUsuarioSupervisor], [ActivoInactivoUsuario], [TiempoRefrescoPantallaSegundos], [CodigoEstiloPantalla], [CodigoZonaContacto], [CodigoCallCenter], [CodigoRolUsuario], [ProveedorServicioCelular], [UbicacionFisicaUsuario]) VALUES (1, N'01        ', N'Toloza', N'Kevin', N'123456    ', N'th15003@ues.edu.sv', NULL, NULL, N'A', NULL, NULL, NULL, NULL, NULL, NULL, N'Ues')
INSERT [dbo].[SIS_Usuarios] ([Id], [CodigoUsuario], [ApellidosUsuario], [NombresUsuario], [ClaveUsuario], [CorreoElectronicoUsuario], [MovilMensajeCortoUsuario], [CodigoUsuarioSupervisor], [ActivoInactivoUsuario], [TiempoRefrescoPantallaSegundos], [CodigoEstiloPantalla], [CodigoZonaContacto], [CodigoCallCenter], [CodigoRolUsuario], [ProveedorServicioCelular], [UbicacionFisicaUsuario]) VALUES (3, N'03        ', N'Peñate Aviles', N'Karen Elvira', N'dsi_2019  ', N'karen.peñate@ues.edu.sv', NULL, NULL, N'A', NULL, NULL, NULL, NULL, NULL, NULL, N'Ues')
INSERT [dbo].[SIS_Usuarios] ([Id], [CodigoUsuario], [ApellidosUsuario], [NombresUsuario], [ClaveUsuario], [CorreoElectronicoUsuario], [MovilMensajeCortoUsuario], [CodigoUsuarioSupervisor], [ActivoInactivoUsuario], [TiempoRefrescoPantallaSegundos], [CodigoEstiloPantalla], [CodigoZonaContacto], [CodigoCallCenter], [CodigoRolUsuario], [ProveedorServicioCelular], [UbicacionFisicaUsuario]) VALUES (2, N'DM15012   ', N'Díaz Mejía', N'Carlos Dalton', N'dm15012   ', N'dm15012@ues.edu.sv', NULL, NULL, N'A', NULL, N'X         ', NULL, NULL, NULL, NULL, N'Mi Casita')
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__SGT_Misi__72E12F1BB7B45C43]    Script Date: 10/01/2020 09:00:43 p.m. ******/
ALTER TABLE [dbo].[SGT_Mision] ADD UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__SGT_Usua__37F064A17680CC82]    Script Date: 10/01/2020 09:00:43 p.m. ******/
ALTER TABLE [dbo].[SGT_Usuario] ADD UNIQUE NONCLUSTERED 
(
	[codigo_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__SGT_Vehi__0C04E256A24FF706]    Script Date: 10/01/2020 09:00:43 p.m. ******/
ALTER TABLE [dbo].[SGT_Vehiculo] ADD UNIQUE NONCLUSTERED 
(
	[plate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SGT_Condiciones_Ruta] ADD  DEFAULT ((0)) FOR [monday_frequency]
GO
ALTER TABLE [dbo].[SGT_Condiciones_Ruta] ADD  DEFAULT ((0)) FOR [tuesday_frequency]
GO
ALTER TABLE [dbo].[SGT_Condiciones_Ruta] ADD  DEFAULT ((0)) FOR [wednesday_frequency]
GO
ALTER TABLE [dbo].[SGT_Condiciones_Ruta] ADD  DEFAULT ((0)) FOR [thursday_frequency]
GO
ALTER TABLE [dbo].[SGT_Condiciones_Ruta] ADD  DEFAULT ((0)) FOR [friday_frequency]
GO
ALTER TABLE [dbo].[SGT_Condiciones_Ruta] ADD  DEFAULT ((0)) FOR [saturday_frequency]
GO
ALTER TABLE [dbo].[SGT_Condiciones_Ruta] ADD  DEFAULT ((0)) FOR [sunday_frequency]
GO
ALTER TABLE [dbo].[SGT_Folo6_Aprovado] ADD  DEFAULT ((0)) FOR [request_unit_approve]
GO
ALTER TABLE [dbo].[SGT_Folo6_Aprovado] ADD  DEFAULT ((0)) FOR [driver_assigned]
GO
ALTER TABLE [dbo].[SGT_Folo6_Aprovado] ADD  DEFAULT ((0)) FOR [car]
GO
ALTER TABLE [dbo].[SGT_Folo6_Aprovado] ADD  DEFAULT ((0)) FOR [gasoline]
GO
ALTER TABLE [dbo].[SGT_Mision] ADD  DEFAULT (N'1') FOR [active]
GO
ALTER TABLE [dbo].[SGT_Motorista] ADD  DEFAULT (N'1') FOR [active]
GO
ALTER TABLE [dbo].[SGT_Procuraduria] ADD  CONSTRAINT [DF_SGT_Procuraduria_enabled]  DEFAULT ((1)) FOR [enabled]
GO
ALTER TABLE [dbo].[SGT_Ruta] ADD  CONSTRAINT [DF_SGT_Ruta_enabled]  DEFAULT ((1)) FOR [enabled]
GO
ALTER TABLE [dbo].[SGT_Usuario] ADD  DEFAULT ((1)) FOR [activo_inactivousuario]
GO
ALTER TABLE [dbo].[SGT_Vale] ADD  DEFAULT (N'disponible') FOR [condition]
GO
ALTER TABLE [dbo].[SGT_Vehiculo] ADD  DEFAULT (N'Funcional') FOR [state]
GO
ALTER TABLE [dbo].[SGT_Vehiculo] ADD  DEFAULT ((0)) FOR [is_traveling]
GO
ALTER TABLE [dbo].[SGT_Asignacion_Folo6_Motorista]  WITH CHECK ADD FOREIGN KEY([driver_id])
REFERENCES [dbo].[SGT_Motorista] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Asignacion_Folo6_Motorista]  WITH CHECK ADD FOREIGN KEY([folo06_id])
REFERENCES [dbo].[SGT_Folo6] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Direccion]  WITH CHECK ADD FOREIGN KEY([city_id])
REFERENCES [dbo].[SGT_Municipio] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Direccion]  WITH CHECK ADD FOREIGN KEY([container_id])
REFERENCES [dbo].[SGT_Lugares_Contenedor] ([id])
ON DELETE CASCADE
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
ALTER TABLE [dbo].[SGT_Lugar_Frecuente]  WITH CHECK ADD FOREIGN KEY([city_id])
REFERENCES [dbo].[SGT_Municipio] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Lugar_Frecuente]  WITH CHECK ADD FOREIGN KEY([department_id])
REFERENCES [dbo].[SGT_Departamento] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Lugar_Frecuente]  WITH CHECK ADD FOREIGN KEY([procuraduria_id])
REFERENCES [dbo].[SGT_Procuraduria] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Lugar_Frecuente]  WITH CHECK ADD FOREIGN KEY([route_id])
REFERENCES [dbo].[SGT_Ruta] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Lugares_Contenedor]  WITH CHECK ADD FOREIGN KEY([folo_id])
REFERENCES [dbo].[SGT_Folo6] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SGT_Lugares_Contenedor]  WITH CHECK ADD FOREIGN KEY([frequent_place_id])
REFERENCES [dbo].[SGT_Lugar_Frecuente] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Mision]  WITH CHECK ADD FOREIGN KEY([procuraduria_id])
REFERENCES [dbo].[SGT_Procuraduria] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Motorista]  WITH CHECK ADD FOREIGN KEY([procuraduria_id])
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
ALTER TABLE [dbo].[SGT_UsuarioRol]  WITH CHECK ADD  CONSTRAINT [FK__SGT_Usuar__codig__2A164134] FOREIGN KEY([codigo_usuario])
REFERENCES [dbo].[SGT_Usuario] ([codigo_usuario])
GO
ALTER TABLE [dbo].[SGT_UsuarioRol] CHECK CONSTRAINT [FK__SGT_Usuar__codig__2A164134]
GO
ALTER TABLE [dbo].[SGT_UsuarioRol]  WITH CHECK ADD  CONSTRAINT [FK_SGT_UsuarioRol_SGT_Rol] FOREIGN KEY([codigo_usuario])
REFERENCES [dbo].[SGT_Usuario] ([codigo_usuario])
GO
ALTER TABLE [dbo].[SGT_UsuarioRol] CHECK CONSTRAINT [FK_SGT_UsuarioRol_SGT_Rol]
GO
ALTER TABLE [dbo].[SGT_Vale]  WITH CHECK ADD FOREIGN KEY([num_close_bill])
REFERENCES [dbo].[SGT_FacturaLiquidacion] ([num_bill])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Vale]  WITH CHECK ADD FOREIGN KEY([num_entry_bill])
REFERENCES [dbo].[SGT_FacturaCompra] ([num_bill])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Vales_Asignados_Folo6]  WITH CHECK ADD FOREIGN KEY([folo6_id])
REFERENCES [dbo].[SGT_Folo6] ([id])
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
ALTER TABLE [dbo].[SGT_Vehiculo_Asignado_Folo6]  WITH CHECK ADD FOREIGN KEY([folo06_id])
REFERENCES [dbo].[SGT_Folo6] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SGT_Vehiculo_Asignado_Folo6]  WITH CHECK ADD FOREIGN KEY([vehicle_id])
REFERENCES [dbo].[SGT_Vehiculo] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SIS_UsuariosPorPerfil]  WITH CHECK ADD  CONSTRAINT [FK_SIS_UsuariosPorPerfil_SIS_Perfiles] FOREIGN KEY([CodigoPerfil])
REFERENCES [dbo].[SIS_Perfiles] ([CodigoPerfil])
GO
ALTER TABLE [dbo].[SIS_UsuariosPorPerfil] CHECK CONSTRAINT [FK_SIS_UsuariosPorPerfil_SIS_Perfiles]
GO
ALTER TABLE [dbo].[SIS_UsuariosPorPerfil]  WITH CHECK ADD  CONSTRAINT [FK_SIS_UsuariosPorPerfil_SIS_Usuarios] FOREIGN KEY([CodigoUsuario])
REFERENCES [dbo].[SIS_Usuarios] ([CodigoUsuario])
GO
ALTER TABLE [dbo].[SIS_UsuariosPorPerfil] CHECK CONSTRAINT [FK_SIS_UsuariosPorPerfil_SIS_Usuarios]
GO
USE [master]
GO
ALTER DATABASE [sigestran] SET  READ_WRITE 
GO
