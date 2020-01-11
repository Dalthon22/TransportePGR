USE [sigestran]
GO
/****** Object:  Table [dbo].[SIS_Usuarios]    Script Date: 08/10/2019 12:39:07 AM ******/
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
)

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SIS_Usuarios] ([Id], [CodigoUsuario], [ApellidosUsuario], [NombresUsuario], [ClaveUsuario], [CorreoElectronicoUsuario], [MovilMensajeCortoUsuario], [CodigoUsuarioSupervisor], [ActivoInactivoUsuario], [TiempoRefrescoPantallaSegundos], [CodigoEstiloPantalla], [CodigoZonaContacto], [CodigoCallCenter], [CodigoRolUsuario], [ProveedorServicioCelular], [UbicacionFisicaUsuario]) VALUES (2, N'DM15012   ', N'Díaz Mejía', N'Carlos Dalton', N'dm15012   ', N'dm15012@ues.edu.sv', NULL, NULL, N'A', NULL, N'X         ', NULL, NULL, NULL, NULL, N'Mi Casita')
INSERT [dbo].[SIS_Usuarios] ([Id], [CodigoUsuario], [ApellidosUsuario], [NombresUsuario], [ClaveUsuario], [CorreoElectronicoUsuario], [MovilMensajeCortoUsuario], [CodigoUsuarioSupervisor], [ActivoInactivoUsuario], [TiempoRefrescoPantallaSegundos], [CodigoEstiloPantalla], [CodigoZonaContacto], [CodigoCallCenter], [CodigoRolUsuario], [ProveedorServicioCelular], [UbicacionFisicaUsuario]) VALUES (1, N'01        ', N'Toloza', N'Kevin', N'123456    ', N'th15003@ues.edu.sv', NULL, NULL, N'A', NULL, NULL, NULL, NULL, NULL, NULL, N'Ues')
INSERT [dbo].[SIS_Usuarios] ([Id], [CodigoUsuario], [ApellidosUsuario], [NombresUsuario], [ClaveUsuario], [CorreoElectronicoUsuario], [MovilMensajeCortoUsuario], [CodigoUsuarioSupervisor], [ActivoInactivoUsuario], [TiempoRefrescoPantallaSegundos], [CodigoEstiloPantalla], [CodigoZonaContacto], [CodigoCallCenter], [CodigoRolUsuario], [ProveedorServicioCelular], [UbicacionFisicaUsuario]) VALUES (3, N'03        ', N'Peñate Aviles', N'Karen Elvira', N'dsi_2019  ', N'karen.peñate@ues.edu.sv', NULL, NULL, N'A', NULL, NULL, NULL, NULL, NULL, NULL, N'Ues')
