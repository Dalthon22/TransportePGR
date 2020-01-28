/****** Object:  Table [dbo].[GLO_Relaciones_UnidadesOrganizacionalesLey]    Script Date: 27/01/2020 11:55:15 PM ******/
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
/****** Object:  Table [dbo].[GLO_Ubicacion_O_Pad_Ley]    Script Date: 27/01/2020 11:55:15 PM ******/
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
/****** Object:  Table [dbo].[GLO_UnidadesOrganizacionalesLey]    Script Date: 27/01/2020 11:55:15 PM ******/
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
/****** Object:  Table [dbo].[SIS_Perfiles]    Script Date: 27/01/2020 11:55:15 PM ******/
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
/****** Object:  Table [dbo].[SIS_Usuarios]    Script Date: 27/01/2020 11:55:15 PM ******/
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
/****** Object:  Table [dbo].[SIS_UsuariosPorPerfil]    Script Date: 27/01/2020 11:55:15 PM ******/
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
/****** Object:  Table [dbo].[TRA_DescripcionUsoVehiculo]    Script Date: 27/01/2020 11:55:15 PM ******/
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
/****** Object:  Table [dbo].[TRA_EstadoVehiculo]    Script Date: 27/01/2020 11:55:15 PM ******/
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
/****** Object:  Table [dbo].[TRA_HistorialUsoVehiculo]    Script Date: 27/01/2020 11:55:15 PM ******/
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
/****** Object:  Table [dbo].[TRA_OficinasResponsablesDeVehiculos]    Script Date: 27/01/2020 11:55:15 PM ******/
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
/****** Object:  Table [dbo].[TRA_ReportePorPefil]    Script Date: 27/01/2020 11:55:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[TRA_ReportePorPefil](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CodigoPerfil] [char](10) NULL,
	[ReporteId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TRA_Reportes]    Script Date: 27/01/2020 11:55:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRA_Reportes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NombreReporte] [nvarchar](100) NOT NULL,
	[DescripcionReporte] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TRA_TipoVehiculo]    Script Date: 27/01/2020 11:55:15 PM ******/
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
/****** Object:  Table [dbo].[TRA_Vehiculos]    Script Date: 27/01/2020 11:55:15 PM ******/
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
INSERT [dbo].[TRA_DescripcionUsoVehiculo] ([CodigoDescripcion], [Descripcion]) VALUES (N'3         ', N'Préstamo')
INSERT [dbo].[TRA_DescripcionUsoVehiculo] ([CodigoDescripcion], [Descripcion]) VALUES (N'2         ', N'Reparación y prueba de vehículo')
INSERT [dbo].[TRA_EstadoVehiculo] ([CodigoEstado], [EstadoVehiculo]) VALUES (1, N'Disponible          ')
INSERT [dbo].[TRA_EstadoVehiculo] ([CodigoEstado], [EstadoVehiculo]) VALUES (2, N'En mantenimiento    ')
INSERT [dbo].[TRA_EstadoVehiculo] ([CodigoEstado], [EstadoVehiculo]) VALUES (3, N'Dañado              ')
INSERT [dbo].[TRA_EstadoVehiculo] ([CodigoEstado], [EstadoVehiculo]) VALUES (4, N'Descargado          ')
INSERT [dbo].[TRA_EstadoVehiculo] ([CodigoEstado], [EstadoVehiculo]) VALUES (5, N'Préstamo            ')
SET IDENTITY_INSERT [dbo].[TRA_HistorialUsoVehiculo] ON 

INSERT [dbo].[TRA_HistorialUsoVehiculo] ([id], [FechaHoraUso], [NuevoKilometraje], [DetalleUso], [CodigoActivoFijo_Vehiculo], [ResponsableRegistro], [CodigoDescripcionUso]) VALUES (1, CAST(0x072088840780A9400B0000 AS DateTimeOffset), N'0         ', N'Inicial', NULL, N'dm15012   ', N'1         ')
INSERT [dbo].[TRA_HistorialUsoVehiculo] ([id], [FechaHoraUso], [NuevoKilometraje], [DetalleUso], [CodigoActivoFijo_Vehiculo], [ResponsableRegistro], [CodigoDescripcionUso]) VALUES (2, CAST(0x07F02E4E1983A9400B0000 AS DateTimeOffset), N'5         ', N'Reparación y prueba de vehículo', NULL, N'dm15012   ', N'2         ')
INSERT [dbo].[TRA_HistorialUsoVehiculo] ([id], [FechaHoraUso], [NuevoKilometraje], [DetalleUso], [CodigoActivoFijo_Vehiculo], [ResponsableRegistro], [CodigoDescripcionUso]) VALUES (3, CAST(0x070066776C83A9400B0000 AS DateTimeOffset), N'6         ', N'Reparación y prueba de vehículo', NULL, N'dm15012   ', N'2         ')
INSERT [dbo].[TRA_HistorialUsoVehiculo] ([id], [FechaHoraUso], [NuevoKilometraje], [DetalleUso], [CodigoActivoFijo_Vehiculo], [ResponsableRegistro], [CodigoDescripcionUso]) VALUES (4, CAST(0x071055BAF288A9400B0000 AS DateTimeOffset), N'7         ', N'Reparación y prueba de vehículo', NULL, N'dm15012   ', N'2         ')
INSERT [dbo].[TRA_HistorialUsoVehiculo] ([id], [FechaHoraUso], [NuevoKilometraje], [DetalleUso], [CodigoActivoFijo_Vehiculo], [ResponsableRegistro], [CodigoDescripcionUso]) VALUES (5, CAST(0x07002B9D2B89A9400B0000 AS DateTimeOffset), N'8         ', N'Funcionando al 100', NULL, N'dm15012   ', N'2         ')
SET IDENTITY_INSERT [dbo].[TRA_HistorialUsoVehiculo] OFF
INSERT [dbo].[TRA_OficinasResponsablesDeVehiculos] ([CodigoOficinaResponsableVehiculo], [DescripcionOficinaResponsableVehiculo]) VALUES (1, N'Unidad Local de Defensoria Pública | Ofcinas Centrales San Salvador')
INSERT [dbo].[TRA_OficinasResponsablesDeVehiculos] ([CodigoOficinaResponsableVehiculo], [DescripcionOficinaResponsableVehiculo]) VALUES (2, N'Unidad Local Especializada en Niñes y Adolecencia | Procuraduría Aux. San Salvador')
INSERT [dbo].[TRA_OficinasResponsablesDeVehiculos] ([CodigoOficinaResponsableVehiculo], [DescripcionOficinaResponsableVehiculo]) VALUES (3, N'Unidad de Tecnologia e información')
INSERT [dbo].[TRA_OficinasResponsablesDeVehiculos] ([CodigoOficinaResponsableVehiculo], [DescripcionOficinaResponsableVehiculo]) VALUES (4, N'Unidad Local de Defensa de los Derechos del Trabajador ')
INSERT [dbo].[TRA_OficinasResponsablesDeVehiculos] ([CodigoOficinaResponsableVehiculo], [DescripcionOficinaResponsableVehiculo]) VALUES (5, N'Unidad Local de Defensa de la Familia | Procuraduría Aux.Apopa')
SET IDENTITY_INSERT [dbo].[TRA_Reportes] ON 

INSERT [dbo].[TRA_Reportes] ([id], [NombreReporte], [DescripcionReporte]) VALUES (1, N'Vehículos', N'Genera un reporte en formato PDF que lista toda la flota vehicular')
SET IDENTITY_INSERT [dbo].[TRA_Reportes] OFF
INSERT [dbo].[TRA_TipoVehiculo] ([CodigoTipoVehiculo], [TipoVehiculo]) VALUES (1, N'Pick up             ')
INSERT [dbo].[TRA_TipoVehiculo] ([CodigoTipoVehiculo], [TipoVehiculo]) VALUES (2, N'Camionate           ')
INSERT [dbo].[TRA_TipoVehiculo] ([CodigoTipoVehiculo], [TipoVehiculo]) VALUES (3, N'Microbus            ')
INSERT [dbo].[TRA_TipoVehiculo] ([CodigoTipoVehiculo], [TipoVehiculo]) VALUES (4, N'Sedan               ')
INSERT [dbo].[TRA_TipoVehiculo] ([CodigoTipoVehiculo], [TipoVehiculo]) VALUES (5, N'Motocicleta         ')
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-400-5-5201', N'N18154    ', N'JTDBW933901131312', N'2NZ5124378', N'JTDBW933101134091', N'TOYOTA', N'YARIS', 4, N'GRIS', N'2009', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-400-5-5202', N'N18159    ', N'JTDBW933001131540', N'2NZ5123216', N'JTDBW933001131540', N'TOYOTA', N'YARIS', 4, N'GRIS', N'2008', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-400-5-5210', N'N18393    ', N'MM7UNY0W490811677', N'WLAT963068', N'MM7UNY0W490811677', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-400-5-5232', N'M57886    ', N'LZSJCML0685209710', N'ZS169FML88100739', N'NLZSJCML0685209710', N'UNITEDMOTOR', N'DS 200', 5, N'NEGRO', N'2007', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-400-5-5241', N'N5253     ', N'MM7UNY0W490829517', N'WLTA144671', N'MM7UNY0W490829517', N'MAZDA', N'BT 50', 1, N'VERDE', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5201', N'N18157    ', N'JTDBW933101134091', N'2NZ5142935', N'JTDBW933101134091', N'TOYOTA', N'YARIS', 4, N'GRIS', N'2008', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5203', N'N18158    ', N'JTDBW933001131747', N'2NZ5124371', N'JTDBW933001131747', N'TOYOTA', N'YARIS', 4, N'GRIS', N'2008', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5204', N'N18162    ', N'JTDBW933401131542', N'2NZ5123238', N'JTDBW933401131542', N'TOYOTA', N'YARIS', 4, N'GRIS', N'2009', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5205', N'N18160    ', N'JTDBW933601131753', N'2NZ5124440', N'JTDBW933601131753', N'TOYOTA', N'YARIS', 4, N'GRIS', N'2008', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5206', N'N18387    ', N'JTDBW933901131746', N'2NZ5124481', N'JTDBW933901131746', N'TOYOTA', N'YARIS', 4, N'GRIS', N'2009', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5207', N'N18327    ', N'MM7UNY0W490810694', N'WLAT961845', N'MM7UNY0W490810694', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2009', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5208', N'n18389    ', N'MM7UNY0W490810780', N'WLAT961838', N'MM7UNY0W490810780', N'MAZDA', N'BT 50', 1, N'BEIGE METALICO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5209', N'N18388    ', N'MM7UNY0W490810702', N'WLAT961849', N'MM7UNY0W490810702', N'MAZDA', N'BT 50', 1, N'GRIS OSCURO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5211', N'N18403    ', N'MM7UNY0W490812593', N'WLAT961847', N'MM7UNY0W490811677', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5212', N'P590912   ', N'KMHJM81VP8U788437', N'D4EA7399441', N'KMHJM81VP8U788437', N'HYUNDAI', N'TUCSON GL', 1, N'BLANCO', N'2007', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5213', N'N18391    ', N'MM7UNY0W490810699', N'WLAT961846', N'MM7UNY0W490810699', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5214', N'P513387   ', N'1FMEU63EX8UA25993', N'0000000000', N'1FMEU63EX8UA25993', N'FORD', N'EXPLORER XLT', 1, N'AZUL OSCURO', N'2007', 7, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5215', N'P590910   ', N'JN1TESY61Z0561068', N'ZD30128714K', N'JN1TESY61Z0561068', N'NISSAN', N'PATROL SGL', 4, N'DORADO', N'2007', 7, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5216', N'N20775    ', N'MM7UNY0W490829578', N'WLTA144651', N'MM7UNY0W490829578', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5218', N'P199284   ', N'KNAKN811DC5080196', N'G6DABS721669', N'KNAKN811DC5080196', N'KIA', N'MOHAVE EX', 4, N'GRIS', N'2011', 7, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5219', N'N18404    ', N'MM7UNY0W4908112612', N'WLAT964239', N'MM7UNY0W4908112612', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5220', N'N18408    ', N'MM7UNY0W490810618', N'WLAT961785', N'MM7UNY0W490810618', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5221', N'N2877     ', N'KNADE221286357404', N'G4EEHI36024', N'KNADE221286357404', N'KIA', N'RIO LX', 4, N'BEIGE', N'2007', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5222', N'N2745     ', N'KNADE221286357386', N'G4EEHI35894', N'KNADE221286357386', N'KIA', N'RIO LX', 4, N'GRIS', N'2007', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5223', N'N2893     ', N'MM7UNY0W380669745', N'WLAT873894', N'MM7UNY0W380669745', N'MAZDA', N'BT 50', 1, N'OCRE METALICO', N'2007', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5224', N'N2878     ', N'KNADE221286357405', N'G4EEH136015', N'KNADE221286357405', N'KIA', N'RIO LX', 4, N'BEIGE', N'2007', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5225', N'N2921     ', N'MM7UNY0W380668836', N'WLAT872049', N'MM7UNY0W380668836', N'MAZDA', N'BT 50', 1, N'GRIS METALICO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5226', N'N3127     ', N'MM7UNY0W380670482', N'WLAT875324', N'MM7UNY0W380670482', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2007', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5227', N'N3018     ', N'MM7UNY0W380670053', N'WLAT874460', N'MM7UNY0W380670053', N'MAZDA', N'BT 50', 1, N'BEIGE METALICO', N'2007', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5228', N'N5233     ', N'KNADG411AA6594556', N'G4EE9H254407', N'KNADG411AA6594556', N'KIA', N'RIO LX', 4, N'GRIS OSCURO', N'2009', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5229', N'N5191     ', N'MM7UNY0W490829577', N'WLTA144582', N'MM7UNY0W490829577', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5230', N'P594211   ', N'JHLRE47308C205368', N'K24Z12701005', N'JHLRE47308C205368', N'HONDA', N'CRV', 1, N'GRIS', N'2007', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5231', N'P594210   ', N'JN1TANT31Z0000497', N'QR25485718A', N'JN1TANT31Z0000497', N'NISSAN', N'X TRAIL S', 1, N'BEIGE METALICO', N'2007', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5232', N'M57876    ', N'LZSJCML0985209720', N'ZS169FML88100748', N'LZSJCML0985209720', N'UNITEDMOTOR', N'DS 200', 5, N'AZUL', N'2007', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5233', N'M152364   ', N'LZSJCML0685097070', N'ZS169FML88100728', N'LZSJCML0985209720', N'UNITEDMOTOR', N'DS 200', 1, N'NEGRO', N'2007', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5234', N'M5891     ', N'LZSJCML0885209708', N'ZS169FML88100725', N'LZSJCML0885209708', N'UNITEDMOTOR', N'DS 200', 5, N'NEGRO', N'2007', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5235', N'N2727     ', N'KNADE221286357391', N'G4EE7H136019', N'KNADE221286357391', N'KIA', N'RIO LX', 4, N'GRIS', N'2007', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5236', N'N2004     ', N'JN1UBHW41Z0022103', N'TD42194852', N'JN1UBHW41Z0022103', N'NISSAN', N'CIVILIAN SX', 3, N'NEGRO', N'2007', 30, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5237', N'N2734     ', N'KNADE221286357399', N'G4EE7H136049', N'KNADE221286357399', N'KIA', N'RIO LX', 4, N'BEIGE', N'2007', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5238', N'N2730     ', N'KNADE221286357398', N'G4EE7H136017', N'KNADE221286357398', N'KIA', N'RIO LX', 4, N'BEIGE', N'2007', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5239', N'N5246     ', N'MM7UNY0W490810706', N'WLTA144221', N'MM7UNY0W490810706', N'MAZDA', N'BT 50', 1, N'AZUL', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5240', N'N5244     ', N'KNADG411AG6594557', N'G4EE9H254398', N'KNADG411AG6594557', N'KIA', N'RIO LX', 4, N'GRIS OSCURO', N'2009', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5241', N'N8049     ', N'MM7UNY0W4908107061', N'WLAT961822', N'MM7UNY0W4908107061', N'MAZDA', N'BT 50', 1, N'CAFE METALICO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5242', N'N11759    ', N'1GCDT136258173882', N'0000000001', N'1GCDT136258173882', N'CHEVROLET', N'COLORADO', 1, N'GRIS', N'2004', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5243', N'N8682     ', N'MM7UNY0W490812232', N'WLAT963756', N'MM7UNY0W490812232', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5244', N'N18005    ', N'MM7UNY0W490810582', N'WLAT961673', N'MM7UNY0W490810582', N'MAZDA', N'BT 50', 1, N'BEIGE METALICO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5245', N'N17935    ', N'A1CDT136658267795', N'0000000002', N'A1CDT136658267795', N'CHEVROLET', N'COLORADO', 1, N'GRIS', N'2004', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5246', N'N18153    ', N'JTDBW933601131316', N'2NZ5120639', N'JTDBW933601131316', N'TOYOTA', N'YARIS', 4, N'GRIS', N'2008', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5247', N'N18006    ', N'MM7UNY0W490811166', N'WLAT962436', N'MM7UNY0W490811166', N'MAZDA', N'BT 50', 1, N'BEIGE METALICO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5248', N'M57877    ', N'LZSJCML0285209722', N'ZS169FML88100740', N'LZSJCML0285209722', N'UNITEDMOTOR', N'DS 200', 5, N'AZUL', N'2007', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5249', N'M57885    ', N'LZSJCML0385209714', N'ZS169FML88100729', N'LZSJCML0385209714', N'UNITEDMOTOR', N'DS 200', 5, N'NEGRO', N'2007', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5250', N'M57878    ', N'LZSJCML0285209705', N'ZS169FML88100741', N'LZSJCML0285209705', N'UNITEDMOTOR', N'DS 200', 5, N'NEGRO', N'2007', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5251', N'N2005     ', N'MM7UNY0W380670078', N'WLAT874673', N'MM7UNY0W380670078', N'MAZDA', N'BT 50', 1, N'OCRE METALICO', N'2007', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5252', N'M57889    ', N'LZSJCML0885209725', N'ZS169FML88100733', N'LZSJCML0885209725', N'UNITEDMOTOR', N'DS 200', 5, N'NEGRO', N'2008', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5253', N'M57879    ', N'LZSJCML0685209724', N'ZS169FML881000722', N'LZSJCML0685209724', N'UNITEDMOTOR', N'DS 200', 5, N'NEGRO', N'2007', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5254', N'M57880    ', N'LZSJCML0585209715', N'ZS169FML88100731', N'LZSJCML0585209715', N'UNITEDMOTOR', N'DS 200', 5, N'NEGRO', N'2008', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5255', N'N2009     ', N'MM7UNY0W380668818', N'WLAT872052', N'MM7UNY0W380668818', N'MAZDA', N'BT 50', 1, N'AZUL METALICO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5256', N'N2054     ', N'MM7UNY0W380669608', N'WLAT873680', N'MM7UNY0W380669608', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5257', N'M57884    ', N'LZSJCML0185209730', N'ZS169FML88100723', N'LZSJCML0185209730', N'UNITEDMOTOR', N'DS 200', 1, N'NEGRO', N'2008', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5258', N'N2072     ', N'MM7UNY0W380669876', N'WLAT874160', N'MM7UNY0W380669876', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5259', N'N2070     ', N'MM7UNY0W380669760', N'WLAT873887', N'MM7UNY0W380669760', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5260', N'N2729     ', N'KNADE221863579212', N'G4EE7H136046', N'KNADE221863579212', N'KIA', N'RIO LX', 4, N'GRIS', N'2008', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5261', N'N2177     ', N'KNADE221286357388', N'G4EE7H135986', N'KNADE221286357388', N'KIA', N'RIO LX', 4, N'GRIS', N'2008', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5262', N'N2737     ', N'KNADE221286357891', N'G4EE7H136020', N'KNADE221286357891', N'KIA', N'RIO LX', 4, N'GRIS', N'2007', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5263', N'N2736     ', N'KNADE2212863573881', N'G4EE7H135989', N'KNADE2212863573881', N'KIA', N'RIO LX', 4, N'GRIS', N'2007', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5264', N'N2746     ', N'KNADE221286357385', N'G4EE7H135930', N'KNADE221286357385', N'KIA', N'RIO LX', 4, N'GRIS', N'2007', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5265', N'N2741     ', N'KNADE221286357384', N'G4EE7H135915', N'KNADE221286357384', N'KIA', N'RIO LX', 1, N'GRIS', N'2008', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5266', N'N2891     ', N'MM7UNY0W380665223', N'WLAT863036', N'MM7UNY0W380665223', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5268', N'N2874     ', N'KNADE221286357402', N'G4EE7H136012', N'KNADE221286357402', N'KIA', N'RIO LX', 4, N'BEIGE', N'2008', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5270', N'N2909     ', N'MM7UNY0W380669808', N'WLAT875231', N'MM7UNY0W380669808', N'MAZDA', N'BT 50', 1, N'GRIS', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5271', N'N2894     ', N'MM7UNY0W380668810', N'WLAT872098', N'MM7UNY0W380668810', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5272', N'N2892     ', N'MM7UNY0W380670389', N'WLAT875232', N'MM7UNY0W380670389', N'MAZDA', N'BT 50', 1, N'GRIS OSCURO METALICO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5273', N'N2927     ', N'JN1TG4E25Z0770758', N'ZD30140047K', N'JN1TG4E25Z0770758', N'NISSAN', N'URVAN', 3, N'GRIS METALICO', N'2008', 15, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5274', N'N3000     ', N'MM7UNY0W380669328', N'WLAT873060', N'MM7UNY0W380669328', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5275', N'N2996     ', N'MM7UNY0W380669916', N'WLAT874184', N'MM7UNY0W380669916', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5276', N'N3110     ', N'MM7UNY0W380670172', N'WLAT874817', N'MM7UNY0W380670172', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5277', N'N3019     ', N'MM7UNY0W380670488', N'WLAT875037', N'MM7UNY0W380670488', N'MAZDA', N'BT 50', 1, N'GRIS METALICO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5278', N'N3115     ', N'MM7UNY0W380670379', N'WLAT875259', N'MM7UNY0W380670379', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5279', N'N3112     ', N'MM7UNY0W780670268', N'WLAT874938', N'MM7UNY0W780670268', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5280', N'N5247     ', N'MM7UNY0W4908295251', N'WLAT144077', N'MM7UNY0W4908295251', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5281', N'N5198     ', N'KNADG411AA6593942', N'G4EE9H253572', N'KNADG411AA6593942', N'KIA', N'RIO LX', 4, N'BEIGE', N'2010', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5282', N'N5259     ', N'MM7UNY0W490829543', N'WLAT144623', N'MM7UNY0W490829543', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5283', N'N5251     ', N'MM7UNY0W490829506', N'WLTA144688', N'MM7UNY0W490829506', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5284', N'N5885     ', N'KNADG411AA6591701', N'G4EE9H251834', N'KNADG411AA6591701', N'KIA', N'RIO LX', 4, N'GRIS', N'2008', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5285', N'N5264     ', N'MM7UNY0W490829510', N'WLTA144491', N'MM7UNY0W490829510', N'MAZDA', N'BT 50', 1, N'CELESTE', N'2009', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5286', N'N8652     ', N'MM7UNY0W490810782', N'WLAT961851', N'MM7UNY0W490810782', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2018', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5287', N'N7044     ', N'MM7UNY0W490829513', N'WLTA140107', N'MM7UNY0W490829513', N'MAZDA', N'BT 50', 1, N'GRIS', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5288', N'N18003    ', N'MM7UNY0W490812111', N'WLAT963266', N'MM7UNY0W490812111', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5289', N'N18002    ', N'MM7UNY0W3906936969', N'WLAT944622', N'MM7UNY0W3906936969', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5290', N'N18396    ', N'MM7UNY0W940811822', N'WLAT963277', N'MM7UNY0W940811822', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5291', N'N18385    ', N'MM7UNY0W490810790', N'WLAT961717', N'MM7UNY0W490810790', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5292', N'N18399    ', N'MM7UNY0W490810756', N'WLAT961873', N'MM7UNY0W490810756', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5293', N'N18398    ', N'MM7UNY0W490812028', N'WLAT963530', N'MM7UNY0W490812028', N'MAZDA', N'BT 50', 1, N'CELESTE METALICO ', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5294', N'N18405    ', N'MM7UNY0W490811838', N'WLAT963264', N'MM7UNY0W490811838', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5295', N'N18400    ', N'MM7UNY0W490810455', N'WLAT961245', N'MM7UNY0W490810455', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5296', N'N18407    ', N'MM7UNY0W490810585', N'WLAT961480', N'MM7UNY0W490810585', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5298', N'N18406    ', N'MM7UNY0W490812015', N'WLAT963577', N'MM7UNY0W490812015', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5299', N'N18409    ', N'MM7UNY0W490810750', N'WLAT961965', N'MM7UNY0W490810750', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2009', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5301', N'N2880     ', N'KNADE221286357383', N'G4EE7H136028', N'KNADE221286357383', N'KIA', N'RIO LX', 1, N'GRIS', N'2008', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5302', N'N2876     ', N'KNADE221286357403', N'G4EE7H136014', N'KNADE221286357403', N'KIA', N'RIO LX', 4, N'BEIGE', N'2008', 4, N'G', 1, N'', N'0         ', 1)
GO
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5304', N'N2896     ', N'MM7UNY0W380670247', N'WLAT875025', N'MM7UNY0W380670247', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5305', N'N2889     ', N'MM7UNY0W380669165', N'WLAT872838', N'MM7UNY0W380669165', N'MAZDA', N'BT 50', 1, N'OCRE METALICO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5306', N'N2900     ', N'MM7UNY0W380665163', N'WLAT862862', N'MM7UNY0W380665163', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5308', N'N2897     ', N'MM7UNY0W380665420', N'WLAT862892', N'MM7UNY0W380665420', N'MAZDA', N'BT 50', 1, N'GRIS METALICO', N'2008', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5309', N'N2918     ', N'MM7UNY0W380669933', N'WLAT874147', N'MM7UNY0W380669933', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2009', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5310', N'N2903     ', N'MM7UNY0W380665327', N'WLAT863206', N'MM7UNY0W380665327', N'MAZDA', N'BT 50', 1, N'BEIGE METALICO', N'2008', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5311', N'N3003     ', N'MM7UNY0W380669795', N'WLAT873941', N' MM7UNY0W380669795', N'MAZDA', N'BT 50', 1, N'AZUL METALICO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5312', N'N2929     ', N'JN1TG4E25Z0770838', N'ZD301411268K', N'JN1TG4E25Z0770838', N'NISSAN', N'URVAN', 3, N'GRIS METALICO', N'2008', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5313', N'M57882    ', N'LZSJCML0585209729', N'ZS169FML88100726', N'LZSJCML0585209729', N'UNITEDMOTOR', N'DS 200', 5, N'NEGRO', N'2008', 1, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5315', N'M57881    ', N'LZSJCML0685209738', N'ZS169FML88100718', N'LZSJCML0685209738', N'UNITEDMOTOR', N'DS 200', 5, N'AZUL', N'2008', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5316', N'M5788     ', N'LZSJCML0185209713', N'ZS169FML88100727', N'LZSJCML0185209713', N'UNITEDMOTOR', N'DS 200', 5, N'NEGRO', N'2009', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5317', N'M57883    ', N'LZSJCML0X85209712', N'ZS169FML88100721', N'LZSJCML0X85209712', N'UNITEDMOTOR', N'DS 200', 5, N'NEGRO', N'2008', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5318', N'M57894    ', N'LZSJCML0785209716', N'ZS169FML88100730', N'LZSJCML0785209716', N'UNITEDMOTOR', N'DS 200', 5, N'NEGRO', N'2008', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5319', N'M57890    ', N'LZSJCML0885209711', N'ZS169FML88100715', N'LZSJCML0885209711', N'UNITEDMOTOR', N'DS 200', 5, N'NEGRO', N'2008', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5320', N'M57897    ', N'LZSJCML0385209728', N'ZS169FML88100738', N'LZSJCML0385209728', N'UNITEDMOTOR', N'DS 200', 5, N'ROJO', N'2008', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5321', N'M57895    ', N'LZSJCML0585209732', N'ZS169FML88100724', N'LZSJCML0585209732', N'UNITEDMOTOR', N'DS 200', 5, N'ROJO', N'2008', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5324', N'M57899    ', N'LZSJCML0X85209709', N'ZS169FML881007141', N'LZSJCML0X85209709', N'UNITEDMOTOR', N'DS 200', 5, N'GRIS', N'2008', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5325', N'M57898    ', N'LZSJCML0985209717', N'ZS169FML88100732', N'LZSJCML0985209717', N'UNITEDMOTOR', N'DS 200', 5, N'ROJO', N'2008', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5326', N'N5234     ', N'KNADG411AG6594548', N'G4EE9H254396', N'KNADG411AG6594548', N'KIA', N'RIO LX', 4, N'GRIS', N'2010', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5327', N'N3107     ', N'MM7UNY0W380670143', N'WLAT874824', N'MM7UNY0W380670143', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5328', N'N5241     ', N'KNADG411AG5945491', N'G4EE7H253594', N'KNADG411AG5945491', N'KIA', N'RIO LX', 1, N'BEIGE', N'2010', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5330', N'N5243     ', N'KNADG411AG6594558', N'G4EE7H254396', N'KNADG411AG6594558', N'KIA', N'RIO LX', 4, N'GRIS OSCURO', N'2010', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5331', N'N5239     ', N'KNADG411AG6594549', N'G4EE9H254410', N'KNADG411AG6594549', N'KIA', N'RIO LX', 5, N'GRIS', N'2010', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5332', N'N5302     ', N'KNADG411AG5939431', N'G4EE9H253594', N'KNADG411AG5939431', N'KIA', N'RIO LX', 4, N'BEIGE', N'2010', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5333', N'N5494     ', N'8AFER13F64J349738', N'C201522961', N'8AFER13F64J349738', N'FORD', N'RANGER XLT', 1, N'GRIS METALICO', N'2004', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5334', N'N5493     ', N'MM7UNY0W490829584', N'WLTA144635', N'MM7UNY0W490829584', N'MAZDA', N'BT 50', 1, N'GRIS', N'2009', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5335', N'N3100     ', N'MM7UNY0W3806670072', N'WLAT874432', N'MM7UNY0W3806670072', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5336', N'N3014     ', N'MM7UNY0W380669091', N'WLAT872567', N'MM7UNY0W380669091', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5340', N'N10875    ', N'KNADN412AF6444207', N'G4FAES761253', N'KNADN412AF6444207', N'KIA', N'RIO EX', 4, N'BLANCO', N'2015', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5341', N'N5747     ', N'MM7UNY0W490829601', N'WLTA144738', N'MM7UNY0W490829601', N'MAZDA', N'BT 50', 1, N'GRIS', N'2009', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5342', N'N18007    ', N'MM7UNY0W490810613', N'WLAT961700', N'MM7UNY0W490810613', N'MAZDA', N'BT 50', 1, N'GRIS OSCURO', N'2009', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5343', N'N18001    ', N'MM7UNY0W490811340', N'WLAT962674', N'MM7UNY0W490811340', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2009', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5344', N'n18009    ', N'MM7UNY0W490810673', N'WLAT961749', N'MM7UNY0W490810673', N'MAZDA', N'BT 50', 1, N'GRIS OSCURO', N'2009', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5345', N'N18008    ', N'MM7UNY0W490810631', N'WLAT961677', N'MM7UNY0W490810631', N'MAZDA', N'BT 50', 1, N'GRIS CLARO', N'2009', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5346', N'N18390    ', N'MM7UNY0W490811527', N'WLAT962929', N'MM7UNY0W490811527', N'MAZDA', N'BT 50', 1, N'GRIS CLARO', N'2009', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5347', N'N18386    ', N'MM7UNY0W490810587', N'WLAT961659', N'MM7UNY0W490810587', N'MAZDA', N'BT 50', 1, N'GRIS CLARO METALICO', N'2009', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5348', N'N18394    ', N'MM7UNY0W490811143', N'WLAT962421', N'MM7UNY0W490811143', N'MAZDA', N'BT 50', 1, N'CAFE METALICO', N'2009', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5349', N'N18392    ', N'MM7UNY0W490811667', N'WLAT963093', N'MM7UNY0W490811667', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2009', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5350', N'N18401    ', N'MM7UNY0W490810611', N'WLAT961742', N'MM7UNY0W490810611', N'MAZDA', N'BT 50', 1, N'GRIS CLARO METALICO', N'2009', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5351', N'N18397    ', N'MM7UNY0W490811155', N'WLAT962433', N'MM7UNY0W490811155', N'MAZDA', N'BT 50', 1, N'GRIS', N'2009', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5352', N'N2010     ', N'MM7UNY0W380670407', N'WLAT875233', N'MM7UNY0W380670407', N'MAZDA', N'BT 50', 1, N'AZUL METALICO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5353', N'M5907     ', N'LZSJCML0085209718', N'ZS169FML88100717', N'LZSJCML0085209718', N'UNITEDMOTOR', N'DS 200', 5, N'GRIS', N'2008', 1, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5354', N'N2066     ', N'MM7UNY0W380669732', N'WLAT874048', N'MM7UNY0W380669732', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5355', N'N2013     ', N'MM7UNY0W380669396', N'WLAT873238', N'MM7UNY0W380669396', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5356', N'N2853     ', N'KNADE221286357387', N'G4EE7H136037', N'KNADE221286357387', N'KIA', N'RIO LX', 4, N'GRIS', N'2008', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5357', N'N2735     ', N'KNADE221286357400', N'G4EE7H135917', N'KNADE221286357400', N'KIA', N'RIO LX', 4, N'BEIGE', N'2008', 5, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5358', N'N18402    ', N'MM7UNY0W490810809', N'WLAT961976', N'MM7UNY0W490810809', N'MAZDA', N'BT 50', 1, N'GRIS CLARO METALICO', N'2009', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5360', N'N2856     ', N'KNADE221286357401', N'G4EE7H136016', N'KNADE221286357401', N'KIA', N'RIO LX', 4, N'BEIGE', N'2008', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5361', N'N18156    ', N'JTDBW933201130888', N'2NZ5116768', N'JTDBW933201130888', N'TOYOTA', N'YARIS', 4, N'GRIS', N'2009', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5362', N'N18155    ', N'JTDBW933X01131108', N'2NZ5118492', N'JTDBW933X01131108', N'TOYOTA', N'YARIS', 4, N'GRIS', N'2009', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5363', N'N2931     ', N'JN1TG4E25Z0770802', N'ZD30140220K', N'JN1TG4E25Z0770802', N'NISSAN', N'URVAN', 3, N'GRIS METALICO', N'2008', 15, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5364', N'N2888     ', N'MM7UNY0W180670141', N'WLAT874449', N'MM7UNY0W180670141', N'MAZDA', N'BT 50 RAP HI', 1, N'GRIS OSCURO METALICO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5365', N'N2939     ', N'JN1TG4E25Z0771172', N'ZD30146892K', N'JN1TG4E25Z0771172', N'NISSAN', N'URVAN', 3, N'GRIS METALICO', N'2008', 15, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5366', N'N2933     ', N'JN1TG4E25Z0770829', N'ZD30141153K', N'JN1TG4E25Z0770829', N'NISSAN', N'URVAN', 3, N'GRIS METALICO', N'2008', 15, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5367', N'N5505     ', N'1FYU02ZX5KA344391', N'0000000003', N'1FYU02ZX5KA344391', N'FORD', N'ESCAPE XLS', 4, N'AZUL OSCURO', N'2005', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5368', N'N2999     ', N'MM7UNY0W380669409', N'WLAT873385', N'MM7UNY0W380669409', N'MAZDA', N'BT 50', 1, N'BLANCO', N'2008', 4, N'D', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5369', N'N1819     ', N'JTDBW9330011315403', N'2NZ51243710', N'JTDBW9330011315403', N'TOYOTA', N'YARIS', 4, N'GRIS', N'2009', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5370', N'P678490   ', N'KNADN412AG6593796', N'G4FAFS879283', N'KNADN412AG6593796', N'KIA', N'RIO EX', 4, N'GRIS', N'2016', 4, N'G', 1, N'', N'0         ', 1)
INSERT [dbo].[TRA_Vehiculos] ([CodigoActivoFijo], [NumeroPlacaVehiculo], [NumeroChasisVehiculo], [NumeroMotorVehiculo], [NumeroVINVehiculo], [MarcaVehiculo], [ModeloVehiculo], [CodigoTipoVehiculo], [ColorVehiculo], [AnnoVehiculo], [CapacidadPersonaVehiculo], [TipoCombustibleVehiculo], [CodigoOficinaResponsableVehiculo], [ObservacionesVehiculo], [KilometrajeActual], [CodigoEstado]) VALUES (N'0614-01012-405-5-5371', N'M57888    ', N'LZSJCML0285209725', N'ZS169FML88100839', N'LZSJCML0285209725', N'UNITEDMOTOR', N'DS 200', 5, N'NEGRO', N'2009', 1, N'G', 1, N'', N'0         ', 1)
SET ANSI_PADDING OFF

GO
/****** Object:  Index [UQ__TRA_Desc__92C53B6CCDC9EBFD]    Script Date: 27/01/2020 11:55:16 PM ******/
ALTER TABLE [dbo].[TRA_DescripcionUsoVehiculo] ADD UNIQUE NONCLUSTERED 
(
	[Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING OFF

GO
/****** Object:  Index [UQ__TRA_Repo__EAABC3D76346ABB2]    Script Date: 27/01/2020 11:55:16 PM ******/
ALTER TABLE [dbo].[TRA_Reportes] ADD UNIQUE NONCLUSTERED 
(
	[NombreReporte] ASC
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
ALTER TABLE [dbo].[TRA_ReportePorPefil]  WITH CHECK ADD FOREIGN KEY([CodigoPerfil])
REFERENCES [dbo].[SIS_Perfiles] ([CodigoPerfil])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[TRA_ReportePorPefil]  WITH CHECK ADD FOREIGN KEY([ReporteId])
REFERENCES [dbo].[TRA_Reportes] ([id])
ON DELETE SET NULL
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
