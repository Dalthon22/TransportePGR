USE [sgt_PGR]
GO
ALTER TABLE [dbo].[TRA_Vehiculos] DROP CONSTRAINT [FK_TRA_Vehiculos_TRA_TipoVehiculo]
GO
ALTER TABLE [dbo].[TRA_Vehiculos] DROP CONSTRAINT [FK_TRA_Vehiculos_TRA_OficinasResponsablesDeVehiculos]
GO
ALTER TABLE [dbo].[TRA_Vehiculos] DROP CONSTRAINT [FK_TRA_Vehiculos_TRA_EstadoVehiculo]
GO
ALTER TABLE [dbo].[TRA_OficinasResponsablesDeVehiculos] DROP CONSTRAINT [FK_TRA_OficinasResponsablesDeVehiculos_GLO_Relaciones_UnidadesOrganizacionalesLey]
GO
ALTER TABLE [dbo].[TRA_HistorialUsoVehiculo] DROP CONSTRAINT [FK__TRA_Histo__Respo__0C50D423]
GO
ALTER TABLE [dbo].[TRA_HistorialUsoVehiculo] DROP CONSTRAINT [FK__TRA_Histo__Codig__0D44F85C]
GO
ALTER TABLE [dbo].[TRA_HistorialUsoVehiculo] DROP CONSTRAINT [FK__TRA_Histo__Codig__0B5CAFEA]
GO
ALTER TABLE [dbo].[SIS_UsuariosPorPerfil] DROP CONSTRAINT [FK_SIS_UsuariosPorPerfil_SIS_Usuarios]
GO
ALTER TABLE [dbo].[SIS_UsuariosPorPerfil] DROP CONSTRAINT [FK_SIS_UsuariosPorPerfil_SIS_Perfiles]
GO
ALTER TABLE [dbo].[GLO_Relaciones_UnidadesOrganizacionalesLey] DROP CONSTRAINT [FK_GLO_Relaciones_UnidadesOrganizacionalesLey_GLO_UnidadesOrganizacionalesLey]
GO
ALTER TABLE [dbo].[GLO_Relaciones_UnidadesOrganizacionalesLey] DROP CONSTRAINT [FK_GLO_Relaciones_UnidadesOrganizacionalesLey_GLO_Ubicacion_O_Pad_Ley]
GO
ALTER TABLE [dbo].[SIS_Usuarios] DROP CONSTRAINT [DF__SIS_Usuar__Ubica__267ABA7A]
GO
ALTER TABLE [dbo].[SIS_Usuarios] DROP CONSTRAINT [DF__SIS_Usuar__Gener__25869641]
GO
ALTER TABLE [dbo].[SIS_Usuarios] DROP CONSTRAINT [DF__SIS_Usuar__Codig__24927208]
GO
/****** Object:  Index [UQ__TRA_Desc__92C53B6CCDC9EBFD]    Script Date: 25/01/2020 9:40:52 PM ******/
ALTER TABLE [dbo].[TRA_DescripcionUsoVehiculo] DROP CONSTRAINT [UQ__TRA_Desc__92C53B6CCDC9EBFD]
GO
/****** Object:  Table [dbo].[TRA_Vehiculos]    Script Date: 25/01/2020 9:40:52 PM ******/
DROP TABLE [dbo].[TRA_Vehiculos]
GO
/****** Object:  Table [dbo].[TRA_TipoVehiculo]    Script Date: 25/01/2020 9:40:52 PM ******/
DROP TABLE [dbo].[TRA_TipoVehiculo]
GO
/****** Object:  Table [dbo].[TRA_OficinasResponsablesDeVehiculos]    Script Date: 25/01/2020 9:40:52 PM ******/
DROP TABLE [dbo].[TRA_OficinasResponsablesDeVehiculos]
GO
/****** Object:  Table [dbo].[TRA_HistorialUsoVehiculo]    Script Date: 25/01/2020 9:40:52 PM ******/
DROP TABLE [dbo].[TRA_HistorialUsoVehiculo]
GO
/****** Object:  Table [dbo].[TRA_EstadoVehiculo]    Script Date: 25/01/2020 9:40:52 PM ******/
DROP TABLE [dbo].[TRA_EstadoVehiculo]
GO
/****** Object:  Table [dbo].[TRA_DescripcionUsoVehiculo]    Script Date: 25/01/2020 9:40:52 PM ******/
DROP TABLE [dbo].[TRA_DescripcionUsoVehiculo]
GO
/****** Object:  Table [dbo].[SIS_UsuariosPorPerfil]    Script Date: 25/01/2020 9:40:52 PM ******/
DROP TABLE [dbo].[SIS_UsuariosPorPerfil]
GO
/****** Object:  Table [dbo].[SIS_Usuarios]    Script Date: 25/01/2020 9:40:52 PM ******/
DROP TABLE [dbo].[SIS_Usuarios]
GO
/****** Object:  Table [dbo].[SIS_Perfiles]    Script Date: 25/01/2020 9:40:52 PM ******/
DROP TABLE [dbo].[SIS_Perfiles]
GO
/****** Object:  Table [dbo].[GLO_UnidadesOrganizacionalesLey]    Script Date: 25/01/2020 9:40:52 PM ******/
DROP TABLE [dbo].[GLO_UnidadesOrganizacionalesLey]
GO
/****** Object:  Table [dbo].[GLO_Ubicacion_O_Pad_Ley]    Script Date: 25/01/2020 9:40:52 PM ******/
DROP TABLE [dbo].[GLO_Ubicacion_O_Pad_Ley]
GO
/****** Object:  Table [dbo].[GLO_Relaciones_UnidadesOrganizacionalesLey]    Script Date: 25/01/2020 9:40:52 PM ******/
DROP TABLE [dbo].[GLO_Relaciones_UnidadesOrganizacionalesLey]
GO
/****** Object:  UserDefinedFunction [dbo].[SIS_FU_EncriptarClave]    Script Date: 25/01/2020 9:40:52 PM ******/
DROP FUNCTION [dbo].[SIS_FU_EncriptarClave]
GO
/****** Object:  UserDefinedFunction [dbo].[SIS_FU_DesencriptarClave]    Script Date: 25/01/2020 9:40:52 PM ******/
DROP FUNCTION [dbo].[SIS_FU_DesencriptarClave]
GO
/****** Object:  User [admin]    Script Date: 25/01/2020 9:40:52 PM ******/
DROP USER [admin]
GO
USE [master]
GO
/****** Object:  Database [sgt_PGR]    Script Date: 25/01/2020 9:40:52 PM ******/
DROP DATABASE [sgt_PGR]
GO
/****** Object:  Database [sgt_PGR]    Script Date: 25/01/2020 9:40:52 PM ******/
CREATE DATABASE [sgt_PGR]
 CONTAINMENT = NONE
/****** Object:  UserDefinedFunction [dbo].[SIS_FU_DesencriptarClave]    Script Date: 25/01/2020 9:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[SIS_FU_DesencriptarClave] (@Clave CHAR(10))  
RETURNS CHAR(10) AS  
BEGIN
 
DECLARE
 @ClaveDesencriptada VARCHAR(10),
 @Auxiliar  CHAR(1),
 @TamanoClave INT,
 @Contador INT
 
SELECT  @ClaveDesencriptada='',
    @Contador=1,
    @TamanoClave=LEN(@Clave)
 
WHILE (@Contador<=@TamanoClave)
 BEGIN
  SELECT @Auxiliar=CHAR(ASCII(SUBSTRING(@Clave,@Contador,1))-100-@TamanoClave)
  SELECT @ClaveDesencriptada=CAST(@ClaveDesencriptada AS VARCHAR(10) )+CAST(@Auxiliar AS VARCHAR(10))
  SELECT @Contador=@Contador+1
 END
 
RETURN (REVERSE(@ClaveDesencriptada) )
END
GO
/****** Object:  UserDefinedFunction [dbo].[SIS_FU_EncriptarClave]    Script Date: 25/01/2020 9:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--funciones para la clave
CREATE FUNCTION [dbo].[SIS_FU_EncriptarClave]
 
/* Declaración de Parámetros */
(@Clave CHAR(10))  
/* Declaración de Resultado */
RETURNS CHAR(10) AS  
BEGIN
 
/* Declaración de Variables */
DECLARE
 @ClaveEncriptada VARCHAR(10),
 @CaracterAuxiliar CHAR(1),
 @TamanoClave INT,
 @Contador INT
 
/* Inicialización de Variables */
SELECT
 @ClaveEncriptada='',
 @Contador=1,
 @TamanoClave=LEN(@Clave)
 
/* Lazo de procesamiento de cada uno de los caracteres originales de la clave */
WHILE (@Contador<=@TamanoClave)
 BEGIN
  SELECT @CaracterAuxiliar=CHAR(ASCII(SUBSTRING(@Clave,@Contador,1))+100+@TamanoClave)
  SELECT @ClaveEncriptada=CAST(@ClaveEncriptada AS VARCHAR(10) )+CAST(@CaracterAuxiliar AS VARCHAR(10))
  SELECT @Contador=@Contador+1
 END
 
/* Retorno de Resultado */
RETURN (REVERSE(@ClaveEncriptada) )
 
END
 
 
 
--CREATE FUNCTION SIS_FU_DesencriptarClave (@Clave CHAR(10))  
--RETURNS CHAR(10) AS  
--BEGIN
 
--DECLARE
-- @ClaveDesencriptada VARCHAR(10),
-- @Auxiliar  CHAR(1),
-- @TamanoClave INT,
-- @Contador INT
 
--SELECT  @ClaveDesencriptada='',
--    @Contador=1,
--    @TamanoClave=LEN(@Clave)
 
--WHILE (@Contador<=@TamanoClave)
-- BEGIN
--  SELECT @Auxiliar=CHAR(ASCII(SUBSTRING(@Clave,@Contador,1))-100-@TamanoClave)
--  SELECT @ClaveDesencriptada=CAST(@ClaveDesencriptada AS VARCHAR(10) )+CAST(@Auxiliar AS VARCHAR(10))
--  SELECT @Contador=@Contador+1
-- END
 
--RETURN (REVERSE(@ClaveDesencriptada) )
--END
GO
/****** Object:  Table [dbo].[GLO_Relaciones_UnidadesOrganizacionalesLey]    Script Date: 25/01/2020 9:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GLO_Relaciones_UnidadesOrganizacionalesLey](
	[id_Relacion] [int] NOT NULL,
	[idUnidadOrganizacional] [int] NOT NULL,
	[id_Ubicacion_O_Pad] [int] NOT NULL,
 CONSTRAINT [PK_GLO_Relaciones_UnidadesOrganizacionalesLey] PRIMARY KEY CLUSTERED 
(
	[id_Relacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GLO_Ubicacion_O_Pad_Ley]    Script Date: 25/01/2020 9:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[GLO_Ubicacion_O_Pad_Ley](
	[id_Ubicacion_O_Pad] [int] NOT NULL,
	[Ubicacion_O_Pad] [varchar](300) NULL,
	[CodigoUnidadOrganizacional] [varchar](10) NULL,
 CONSTRAINT [PK_GLO_Ubicacion_O_Pad_Ley] PRIMARY KEY CLUSTERED 
(
	[id_Ubicacion_O_Pad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GLO_UnidadesOrganizacionalesLey]    Script Date: 25/01/2020 9:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[GLO_UnidadesOrganizacionalesLey](
	[idUnidadOrganizacional] [int] NOT NULL,
	[NombreUnidadOrganizacionalLey] [varchar](150) NULL,
	[CodigoUnidadOrganizacionalLey] [varchar](10) NULL,
	[idUnidadOrganizacionalAgrupador] [int] NULL,
 CONSTRAINT [PK_GLO_UnidadesOrganizacionalesLey] PRIMARY KEY CLUSTERED 
(
	[idUnidadOrganizacional] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIS_Perfiles]    Script Date: 25/01/2020 9:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
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
/****** Object:  Table [dbo].[SIS_Usuarios]    Script Date: 25/01/2020 9:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SIS_Usuarios](
	[CodigoUsuario] [char](10) NOT NULL,
	[ApellidosUsuario] [varchar](50) NOT NULL,
	[NombresUsuario] [varchar](50) NOT NULL,
	[ClaveUsuario] [char](10) NOT NULL,
	[CodigoHorarioTrabajo] [char](10) NULL,
	[CorreoElectronicoUsuario] [varchar](100) NOT NULL,
	[MovilMensajeCortoUsuario] [varchar](100) NULL,
	[CodigoUsuarioSupervisor] [char](10) NULL,
	[ActivoInactivoUsuario] [char](1) NOT NULL,
	[TiempoRefrescoPantallaSegundos] [numeric](5, 0) NULL,
	[CodigoEstiloPantalla] [char](10) NULL,
	[CodigoZonaContacto] [char](10) NULL,
	[CodigoCallCenter] [char](10) NULL,
	[CodigoRolUsuario] [char](1) NULL,
	[GenerarContactosDeColegas] [char](1) NULL,
	[ProveedorServicioCelular] [char](1) NULL,
	[UbicacionFisicaUsuario] [varchar](250) NULL,
 CONSTRAINT [PK_SIS_Usuarios] PRIMARY KEY CLUSTERED 
(
	[CodigoUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIS_UsuariosPorPerfil]    Script Date: 25/01/2020 9:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
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
/****** Object:  Table [dbo].[TRA_DescripcionUsoVehiculo]    Script Date: 25/01/2020 9:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[TRA_DescripcionUsoVehiculo](
	[CodigoDescripcion] [char](10) NOT NULL,
	[Descripcion] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoDescripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TRA_EstadoVehiculo]    Script Date: 25/01/2020 9:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[TRA_EstadoVehiculo](
	[CodigoEstado] [int] NOT NULL,
	[EstadoVehiculo] [char](20) NULL,
 CONSTRAINT [PK_TRA_EstadoVehiculo] PRIMARY KEY CLUSTERED 
(
	[CodigoEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TRA_HistorialUsoVehiculo]    Script Date: 25/01/2020 9:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[TRA_HistorialUsoVehiculo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FechaHoraUso] [datetimeoffset](7) NOT NULL,
	[NuevoKilometraje] [char](10) NOT NULL,
	[DetalleUso] [nvarchar](max) NOT NULL,
	[CodigoActivoFijo_Vehiculo] [char](21) NULL,
	[ResponsableRegistro] [char](10) NULL,
	[CodigoDescripcionUso] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TRA_OficinasResponsablesDeVehiculos]    Script Date: 25/01/2020 9:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[TRA_OficinasResponsablesDeVehiculos](
	[CodigoOficinaResponsableVehiculo] [int] NOT NULL,
	[DescripcionOficinaResponsableVehiculo] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TRA_OficinasResponsablesDeVehiculos] PRIMARY KEY CLUSTERED 
(
	[CodigoOficinaResponsableVehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TRA_TipoVehiculo]    Script Date: 25/01/2020 9:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[TRA_TipoVehiculo](
	[CodigoTipoVehiculo] [int] NOT NULL,
	[TipoVehiculo] [char](20) NULL,
 CONSTRAINT [PK_TRA_TipoVehiculo] PRIMARY KEY CLUSTERED 
(
	[CodigoTipoVehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TRA_Vehiculos]    Script Date: 25/01/2020 9:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[TRA_Vehiculos](
	[CodigoActivoFijo] [char](21) NOT NULL,
	[NumeroPlacaVehiculo] [char](10) NULL,
	[NumeroChasisVehiculo] [varchar](50) NULL,
	[NumeroMotorVehiculo] [varchar](50) NULL,
	[NumeroVINVehiculo] [varchar](50) NULL,
	[MarcaVehiculo] [varchar](50) NULL,
	[ModeloVehiculo] [varchar](50) NULL,
	[CodigoTipoVehiculo] [int] NULL,
	[ColorVehiculo] [varchar](50) NULL,
	[AnnoVehiculo] [char](4) NULL,
	[CapacidadPersonaVehiculo] [tinyint] NULL,
	[TipoCombustibleVehiculo] [varchar](1) NULL,
	[CodigoOficinaResponsableVehiculo] [int] NULL,
	[ObservacionesVehiculo] [text] NULL,
	[KilometrajeActual] [char](10) NULL,
	[CodigoEstado] [int] NULL,
 CONSTRAINT [PK_TRA_Vehiculos] PRIMARY KEY CLUSTERED 
(
	[CodigoActivoFijo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[GLO_Relaciones_UnidadesOrganizacionalesLey] ([id_Relacion], [idUnidadOrganizacional], [id_Ubicacion_O_Pad]) VALUES (1, 5, 6)
INSERT [dbo].[GLO_Relaciones_UnidadesOrganizacionalesLey] ([id_Relacion], [idUnidadOrganizacional], [id_Ubicacion_O_Pad]) VALUES (2, 2, 5)
INSERT [dbo].[GLO_Relaciones_UnidadesOrganizacionalesLey] ([id_Relacion], [idUnidadOrganizacional], [id_Ubicacion_O_Pad]) VALUES (3, 7, 6)
INSERT [dbo].[GLO_Relaciones_UnidadesOrganizacionalesLey] ([id_Relacion], [idUnidadOrganizacional], [id_Ubicacion_O_Pad]) VALUES (4, 6, 3)
INSERT [dbo].[GLO_Relaciones_UnidadesOrganizacionalesLey] ([id_Relacion], [idUnidadOrganizacional], [id_Ubicacion_O_Pad]) VALUES (5, 3, 2)
INSERT [dbo].[GLO_Relaciones_UnidadesOrganizacionalesLey] ([id_Relacion], [idUnidadOrganizacional], [id_Ubicacion_O_Pad]) VALUES (6, 1, 4)
INSERT [dbo].[GLO_Relaciones_UnidadesOrganizacionalesLey] ([id_Relacion], [idUnidadOrganizacional], [id_Ubicacion_O_Pad]) VALUES (7, 4, 8)
INSERT [dbo].[GLO_Relaciones_UnidadesOrganizacionalesLey] ([id_Relacion], [idUnidadOrganizacional], [id_Ubicacion_O_Pad]) VALUES (8, 8, 6)
INSERT [dbo].[GLO_Ubicacion_O_Pad_Ley] ([id_Ubicacion_O_Pad], [Ubicacion_O_Pad], [CodigoUnidadOrganizacional]) VALUES (1, N'Procuraduría Aux.Ahuachapán', N'PAAHUA')
INSERT [dbo].[GLO_Ubicacion_O_Pad_Ley] ([id_Ubicacion_O_Pad], [Ubicacion_O_Pad], [CodigoUnidadOrganizacional]) VALUES (2, N'Procuraduría Aux.Apopa', N'PAAPOP')
INSERT [dbo].[GLO_Ubicacion_O_Pad_Ley] ([id_Ubicacion_O_Pad], [Ubicacion_O_Pad], [CodigoUnidadOrganizacional]) VALUES (3, N'Procuraduría Aux. Cuscatlán', N'PACUSCA')
INSERT [dbo].[GLO_Ubicacion_O_Pad_Ley] ([id_Ubicacion_O_Pad], [Ubicacion_O_Pad], [CodigoUnidadOrganizacional]) VALUES (4, N'Procuraduría Aux. La Libertad', N'PALIBER')
INSERT [dbo].[GLO_Ubicacion_O_Pad_Ley] ([id_Ubicacion_O_Pad], [Ubicacion_O_Pad], [CodigoUnidadOrganizacional]) VALUES (5, N'Procuraduría Aux. San Salvador', N'PASS')
INSERT [dbo].[GLO_Ubicacion_O_Pad_Ley] ([id_Ubicacion_O_Pad], [Ubicacion_O_Pad], [CodigoUnidadOrganizacional]) VALUES (6, N'Ofcinas Centrales San Salvador', N'OCSS')
INSERT [dbo].[GLO_Ubicacion_O_Pad_Ley] ([id_Ubicacion_O_Pad], [Ubicacion_O_Pad], [CodigoUnidadOrganizacional]) VALUES (7, N'Coordinaciones Nacionales, S.S.', N'CNSS')
INSERT [dbo].[GLO_Ubicacion_O_Pad_Ley] ([id_Ubicacion_O_Pad], [Ubicacion_O_Pad], [CodigoUnidadOrganizacional]) VALUES (8, N'Ofcinas Especializadas, S.S.', N'OESS')
INSERT [dbo].[GLO_UnidadesOrganizacionalesLey] ([idUnidadOrganizacional], [NombreUnidadOrganizacionalLey], [CodigoUnidadOrganizacionalLey], [idUnidadOrganizacionalAgrupador]) VALUES (1, N'Unidad de Atención Especializada para las Mujeres', N'UAEM', 6)
INSERT [dbo].[GLO_UnidadesOrganizacionalesLey] ([idUnidadOrganizacional], [NombreUnidadOrganizacionalLey], [CodigoUnidadOrganizacionalLey], [idUnidadOrganizacionalAgrupador]) VALUES (2, N'Unidad Local Especializada en Niñes y Adolecencia', N'ULENA', 2)
INSERT [dbo].[GLO_UnidadesOrganizacionalesLey] ([idUnidadOrganizacional], [NombreUnidadOrganizacionalLey], [CodigoUnidadOrganizacionalLey], [idUnidadOrganizacionalAgrupador]) VALUES (3, N'Unidad Local de Defensa de la Familia', N'ULDF', 5)
INSERT [dbo].[GLO_UnidadesOrganizacionalesLey] ([idUnidadOrganizacional], [NombreUnidadOrganizacionalLey], [CodigoUnidadOrganizacionalLey], [idUnidadOrganizacionalAgrupador]) VALUES (4, N'Unidad Local de Mediacion y Conciliación', N'ULMC', 7)
INSERT [dbo].[GLO_UnidadesOrganizacionalesLey] ([idUnidadOrganizacional], [NombreUnidadOrganizacionalLey], [CodigoUnidadOrganizacionalLey], [idUnidadOrganizacionalAgrupador]) VALUES (5, N'Unidad Local de Defensoria Pública', N'ULDP', 1)
INSERT [dbo].[GLO_UnidadesOrganizacionalesLey] ([idUnidadOrganizacional], [NombreUnidadOrganizacionalLey], [CodigoUnidadOrganizacionalLey], [idUnidadOrganizacionalAgrupador]) VALUES (6, N'Unidad Local de Defensa de los Derechos del Trabajador', N'ULDT', 4)
INSERT [dbo].[GLO_UnidadesOrganizacionalesLey] ([idUnidadOrganizacional], [NombreUnidadOrganizacionalLey], [CodigoUnidadOrganizacionalLey], [idUnidadOrganizacionalAgrupador]) VALUES (7, N'Unidad de Tecnologia e información', N'UTI', 3)
INSERT [dbo].[GLO_UnidadesOrganizacionalesLey] ([idUnidadOrganizacional], [NombreUnidadOrganizacionalLey], [CodigoUnidadOrganizacionalLey], [idUnidadOrganizacionalAgrupador]) VALUES (8, N'Unidad de Adquisiciones y Contrataciones Institucional', N'UACI', 8)
INSERT [dbo].[SIS_Perfiles] ([CodigoPerfil], [NombrePerfil]) VALUES (N'adminIT   ', N'Administrador de IT')
INSERT [dbo].[SIS_Perfiles] ([CodigoPerfil], [NombrePerfil]) VALUES (N'adminTrans', N'Jefe Unidad de Transporte')
INSERT [dbo].[SIS_Usuarios] ([CodigoUsuario], [ApellidosUsuario], [NombresUsuario], [ClaveUsuario], [CodigoHorarioTrabajo], [CorreoElectronicoUsuario], [MovilMensajeCortoUsuario], [CodigoUsuarioSupervisor], [ActivoInactivoUsuario], [TiempoRefrescoPantallaSegundos], [CodigoEstiloPantalla], [CodigoZonaContacto], [CodigoCallCenter], [CodigoRolUsuario], [GenerarContactosDeColegas], [ProveedorServicioCelular], [UbicacionFisicaUsuario]) VALUES (N'1         ', N'Díaz Mejía', N'Carlos Dalton', N'carlos123 ', NULL, N'carlos123@gmail.com', NULL, NULL, N'1', NULL, N'X         ', NULL, NULL, NULL, N'N', NULL, N'?')
INSERT [dbo].[SIS_Usuarios] ([CodigoUsuario], [ApellidosUsuario], [NombresUsuario], [ClaveUsuario], [CodigoHorarioTrabajo], [CorreoElectronicoUsuario], [MovilMensajeCortoUsuario], [CodigoUsuarioSupervisor], [ActivoInactivoUsuario], [TiempoRefrescoPantallaSegundos], [CodigoEstiloPantalla], [CodigoZonaContacto], [CodigoCallCenter], [CodigoRolUsuario], [GenerarContactosDeColegas], [ProveedorServicioCelular], [UbicacionFisicaUsuario]) VALUES (N'dm15012   ', N'Diaz Mejia', N'Carlos Dalton', N'dm15012+  ', NULL, N'dm15012@ues.edu.sv', NULL, NULL, N'1', NULL, N'X         ', NULL, NULL, NULL, N'N', NULL, N'?')
INSERT [dbo].[SIS_UsuariosPorPerfil] ([CodigoPerfil], [CodigoUsuario]) VALUES (N'adminIT   ', N'1         ')
INSERT [dbo].[SIS_UsuariosPorPerfil] ([CodigoPerfil], [CodigoUsuario]) VALUES (N'adminIT   ', N'dm15012   ')
INSERT [dbo].[SIS_UsuariosPorPerfil] ([CodigoPerfil], [CodigoUsuario]) VALUES (N'adminTrans', N'1         ')
INSERT [dbo].[SIS_UsuariosPorPerfil] ([CodigoPerfil], [CodigoUsuario]) VALUES (N'adminTrans', N'dm15012   ')
INSERT [dbo].[TRA_DescripcionUsoVehiculo] ([CodigoDescripcion], [Descripcion]) VALUES (N'1         ', N'Inicial')
INSERT [dbo].[TRA_DescripcionUsoVehiculo] ([CodigoDescripcion], [Descripcion]) VALUES (N'3         ', N'Prestamo')
INSERT [dbo].[TRA_DescripcionUsoVehiculo] ([CodigoDescripcion], [Descripcion]) VALUES (N'2         ', N'Reparación y prueba de vehículo')
INSERT [dbo].[TRA_EstadoVehiculo] ([CodigoEstado], [EstadoVehiculo]) VALUES (1, N'Disponible          ')
INSERT [dbo].[TRA_EstadoVehiculo] ([CodigoEstado], [EstadoVehiculo]) VALUES (2, N'En mantenimiento    ')
INSERT [dbo].[TRA_EstadoVehiculo] ([CodigoEstado], [EstadoVehiculo]) VALUES (3, N'Dañado              ')
INSERT [dbo].[TRA_EstadoVehiculo] ([CodigoEstado], [EstadoVehiculo]) VALUES (4, N'Descargado          ')
INSERT [dbo].[TRA_EstadoVehiculo] ([CodigoEstado], [EstadoVehiculo]) VALUES (5, N'Prestado            ')
INSERT [dbo].[TRA_OficinasResponsablesDeVehiculos] ([CodigoOficinaResponsableVehiculo], [DescripcionOficinaResponsableVehiculo]) VALUES (1, N'Unidad Local de Defensoria Pública | Ofcinas Centrales San Salvador')
INSERT [dbo].[TRA_OficinasResponsablesDeVehiculos] ([CodigoOficinaResponsableVehiculo], [DescripcionOficinaResponsableVehiculo]) VALUES (2, N'Unidad Local Especializada en Niñes y Adolecencia | Procuraduría Aux. San Salvador')
INSERT [dbo].[TRA_OficinasResponsablesDeVehiculos] ([CodigoOficinaResponsableVehiculo], [DescripcionOficinaResponsableVehiculo]) VALUES (3, N'Unidad de Tecnologia e información')
INSERT [dbo].[TRA_OficinasResponsablesDeVehiculos] ([CodigoOficinaResponsableVehiculo], [DescripcionOficinaResponsableVehiculo]) VALUES (4, N'Unidad Local de Defensa de los Derechos del Trabajador ')
INSERT [dbo].[TRA_OficinasResponsablesDeVehiculos] ([CodigoOficinaResponsableVehiculo], [DescripcionOficinaResponsableVehiculo]) VALUES (5, N'Unidad Local de Defensa de la Familia | Procuraduría Aux.Apopa')
INSERT [dbo].[TRA_TipoVehiculo] ([CodigoTipoVehiculo], [TipoVehiculo]) VALUES (1, N'Pick up             ')
INSERT [dbo].[TRA_TipoVehiculo] ([CodigoTipoVehiculo], [TipoVehiculo]) VALUES (2, N'Camionate           ')
INSERT [dbo].[TRA_TipoVehiculo] ([CodigoTipoVehiculo], [TipoVehiculo]) VALUES (3, N'Microbus            ')
INSERT [dbo].[TRA_TipoVehiculo] ([CodigoTipoVehiculo], [TipoVehiculo]) VALUES (4, N'Sedan               ')
INSERT [dbo].[TRA_TipoVehiculo] ([CodigoTipoVehiculo], [TipoVehiculo]) VALUES (5, N'Motocicleta         ')
SET ANSI_PADDING OFF

GO
/****** Object:  Index [UQ__TRA_Desc__92C53B6CCDC9EBFD]    Script Date: 25/01/2020 9:40:53 PM ******/
ALTER TABLE [dbo].[TRA_DescripcionUsoVehiculo] ADD UNIQUE NONCLUSTERED 
(
	[Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SIS_Usuarios] ADD  CONSTRAINT [DF__SIS_Usuar__Codig__24927208]  DEFAULT ('X') FOR [CodigoEstiloPantalla]
GO
ALTER TABLE [dbo].[SIS_Usuarios] ADD  CONSTRAINT [DF__SIS_Usuar__Gener__25869641]  DEFAULT ('N') FOR [GenerarContactosDeColegas]
GO
ALTER TABLE [dbo].[SIS_Usuarios] ADD  CONSTRAINT [DF__SIS_Usuar__Ubica__267ABA7A]  DEFAULT ('?') FOR [UbicacionFisicaUsuario]
GO
ALTER TABLE [dbo].[GLO_Relaciones_UnidadesOrganizacionalesLey]  WITH CHECK ADD  CONSTRAINT [FK_GLO_Relaciones_UnidadesOrganizacionalesLey_GLO_Ubicacion_O_Pad_Ley] FOREIGN KEY([id_Ubicacion_O_Pad])
REFERENCES [dbo].[GLO_Ubicacion_O_Pad_Ley] ([id_Ubicacion_O_Pad])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GLO_Relaciones_UnidadesOrganizacionalesLey] CHECK CONSTRAINT [FK_GLO_Relaciones_UnidadesOrganizacionalesLey_GLO_Ubicacion_O_Pad_Ley]
GO
ALTER TABLE [dbo].[GLO_Relaciones_UnidadesOrganizacionalesLey]  WITH CHECK ADD  CONSTRAINT [FK_GLO_Relaciones_UnidadesOrganizacionalesLey_GLO_UnidadesOrganizacionalesLey] FOREIGN KEY([idUnidadOrganizacional])
REFERENCES [dbo].[GLO_UnidadesOrganizacionalesLey] ([idUnidadOrganizacional])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GLO_Relaciones_UnidadesOrganizacionalesLey] CHECK CONSTRAINT [FK_GLO_Relaciones_UnidadesOrganizacionalesLey_GLO_UnidadesOrganizacionalesLey]
GO
ALTER TABLE [dbo].[SIS_UsuariosPorPerfil]  WITH CHECK ADD  CONSTRAINT [FK_SIS_UsuariosPorPerfil_SIS_Perfiles] FOREIGN KEY([CodigoPerfil])
REFERENCES [dbo].[SIS_Perfiles] ([CodigoPerfil])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SIS_UsuariosPorPerfil] CHECK CONSTRAINT [FK_SIS_UsuariosPorPerfil_SIS_Perfiles]
GO
ALTER TABLE [dbo].[SIS_UsuariosPorPerfil]  WITH CHECK ADD  CONSTRAINT [FK_SIS_UsuariosPorPerfil_SIS_Usuarios] FOREIGN KEY([CodigoUsuario])
REFERENCES [dbo].[SIS_Usuarios] ([CodigoUsuario])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SIS_UsuariosPorPerfil] CHECK CONSTRAINT [FK_SIS_UsuariosPorPerfil_SIS_Usuarios]
GO
ALTER TABLE [dbo].[TRA_HistorialUsoVehiculo]  WITH CHECK ADD FOREIGN KEY([CodigoActivoFijo_Vehiculo])
REFERENCES [dbo].[TRA_Vehiculos] ([CodigoActivoFijo])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[TRA_HistorialUsoVehiculo]  WITH CHECK ADD FOREIGN KEY([CodigoDescripcionUso])
REFERENCES [dbo].[TRA_DescripcionUsoVehiculo] ([CodigoDescripcion])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[TRA_HistorialUsoVehiculo]  WITH CHECK ADD FOREIGN KEY([ResponsableRegistro])
REFERENCES [dbo].[SIS_Usuarios] ([CodigoUsuario])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[TRA_OficinasResponsablesDeVehiculos]  WITH CHECK ADD  CONSTRAINT [FK_TRA_OficinasResponsablesDeVehiculos_GLO_Relaciones_UnidadesOrganizacionalesLey] FOREIGN KEY([CodigoOficinaResponsableVehiculo])
REFERENCES [dbo].[GLO_Relaciones_UnidadesOrganizacionalesLey] ([id_Relacion])
GO
ALTER TABLE [dbo].[TRA_OficinasResponsablesDeVehiculos] CHECK CONSTRAINT [FK_TRA_OficinasResponsablesDeVehiculos_GLO_Relaciones_UnidadesOrganizacionalesLey]
GO
ALTER TABLE [dbo].[TRA_Vehiculos]  WITH NOCHECK ADD  CONSTRAINT [FK_TRA_Vehiculos_TRA_EstadoVehiculo] FOREIGN KEY([CodigoEstado])
REFERENCES [dbo].[TRA_EstadoVehiculo] ([CodigoEstado])
GO
ALTER TABLE [dbo].[TRA_Vehiculos] CHECK CONSTRAINT [FK_TRA_Vehiculos_TRA_EstadoVehiculo]
GO
ALTER TABLE [dbo].[TRA_Vehiculos]  WITH NOCHECK ADD  CONSTRAINT [FK_TRA_Vehiculos_TRA_OficinasResponsablesDeVehiculos] FOREIGN KEY([CodigoOficinaResponsableVehiculo])
REFERENCES [dbo].[TRA_OficinasResponsablesDeVehiculos] ([CodigoOficinaResponsableVehiculo])
GO
ALTER TABLE [dbo].[TRA_Vehiculos] CHECK CONSTRAINT [FK_TRA_Vehiculos_TRA_OficinasResponsablesDeVehiculos]
GO
ALTER TABLE [dbo].[TRA_Vehiculos]  WITH NOCHECK ADD  CONSTRAINT [FK_TRA_Vehiculos_TRA_TipoVehiculo] FOREIGN KEY([CodigoTipoVehiculo])
REFERENCES [dbo].[TRA_TipoVehiculo] ([CodigoTipoVehiculo])
GO
ALTER TABLE [dbo].[TRA_Vehiculos] CHECK CONSTRAINT [FK_TRA_Vehiculos_TRA_TipoVehiculo]
GO
USE [master]
GO
ALTER DATABASE [sgt_PGR] SET  READ_WRITE 
GO
