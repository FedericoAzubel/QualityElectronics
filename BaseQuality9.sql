GO
CREATE DATABASE [QualityElectronics]
GO
USE [QualityElectronics]
GO
/****** Object:  Table [dbo].[Atributo]    Script Date: 04/12/2024 18:19:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atributo](
	[IdAtributo] [int] IDENTITY(1,1) NOT NULL,
	[Campo] [varchar](200) NOT NULL,
	[Valor] [varchar](200) NOT NULL,
	[IdSeccion] [int] NOT NULL,
 CONSTRAINT [PK_Atributo] PRIMARY KEY CLUSTERED 
(
	[IdAtributo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ayuda]    Script Date: 04/12/2024 18:19:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ayuda](
	[IdFiltro] [int] IDENTITY(1,1) NOT NULL,
	[Pregunta] [varchar](200) NOT NULL,
	[Respuesta] [text] NOT NULL,
 CONSTRAINT [PK_Filtros] PRIMARY KEY CLUSTERED 
(
	[IdFiltro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DomiciliosUsuarios]    Script Date: 04/12/2024 18:19:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DomiciliosUsuarios](
	[IdDomicilio] [int] IDENTITY(1,1) NOT NULL,
	[nombreDom] [varchar](200) NOT NULL,
	[NombreCalle] [varchar](200) NOT NULL,
	[alturaCalle] [int] NOT NULL,
	[codigoPostal] [varchar](200) NOT NULL,
	[provincia] [varchar](200) NOT NULL,
	[IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_DomiciliosUsuarios] PRIMARY KEY CLUSTERED 
(
	[IdDomicilio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormatoDePago]    Script Date: 04/12/2024 18:19:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormatoDePago](
	[IdPago] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
 CONSTRAINT [PK_FormatoDePago] PRIMARY KEY CLUSTERED 
(
	[IdPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Motivo_Pregunta]    Script Date: 04/12/2024 18:19:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Motivo_Pregunta](
	[IdMotivo] [int] IDENTITY(1,1) NOT NULL,
	[NombreMotivo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Motivo_Pregunta] PRIMARY KEY CLUSTERED 
(
	[IdMotivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preguntas_Usuario]    Script Date: 04/12/2024 18:19:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas_Usuario](
	[IdPregunta] [int] IDENTITY(1,1) NOT NULL,
	[Contenido] [text] NOT NULL,
 CONSTRAINT [PK_Preguntas_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdPregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreguntasDelUsuario]    Script Date: 04/12/2024 18:19:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreguntasDelUsuario](
	[IdPreguntaUsuario] [int] IDENTITY(1,1) NOT NULL,
	[IdPregunta] [int] NOT NULL,
	[IdMotivo] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_PreguntasDelUsuario] PRIMARY KEY CLUSTERED 
(
	[IdPreguntaUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 04/12/2024 18:19:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Precio] [float] NOT NULL,
	[Foto] [text] NOT NULL,
	[Clasificacion1] [int] NOT NULL,
	[Descripcion] [text] NOT NULL,
	[Clasificacion2] [int] NOT NULL,
	[Clasificacion3] [int] NOT NULL,
	[EsPeriferico] [bit] NOT NULL,
	[EsNotebook] [bit] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reseñas]    Script Date: 04/12/2024 18:19:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reseñas](
	[IdReseña] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Puntuacion] [int] NOT NULL,
	[Contenido] [text] NOT NULL,
	[IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Reseñas] PRIMARY KEY CLUSTERED 
(
	[IdReseña] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seccion]    Script Date: 04/12/2024 18:19:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seccion](
	[IdSeccion] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[IdProducto] [int] NOT NULL,
 CONSTRAINT [PK_Seccion] PRIMARY KEY CLUSTERED 
(
	[IdSeccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 04/12/2024 18:19:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Apellido] [varchar](200) NOT NULL,
	[Email] [varchar](200) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Contrasena] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DomiciliosUsuarios] ON 

INSERT [dbo].[DomiciliosUsuarios] ([IdDomicilio], [nombreDom], [NombreCalle], [alturaCalle], [codigoPostal], [provincia], [IdUsuario]) VALUES (1, N'Domicilio1', N'pujol', 123, N'1405', N'capital', 2)
INSERT [dbo].[DomiciliosUsuarios] ([IdDomicilio], [nombreDom], [NombreCalle], [alturaCalle], [codigoPostal], [provincia], [IdUsuario]) VALUES (3, N'dom2', N'julian perez', 465, N'12345', N'bsas', 2)
SET IDENTITY_INSERT [dbo].[DomiciliosUsuarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Motivo_Pregunta] ON 

INSERT [dbo].[Motivo_Pregunta] ([IdMotivo], [NombreMotivo]) VALUES (1, N'Consulta sobre un producto')
INSERT [dbo].[Motivo_Pregunta] ([IdMotivo], [NombreMotivo]) VALUES (2, N'Consulta general')
INSERT [dbo].[Motivo_Pregunta] ([IdMotivo], [NombreMotivo]) VALUES (3, N'Necesito ayuda para realizar una compra')
INSERT [dbo].[Motivo_Pregunta] ([IdMotivo], [NombreMotivo]) VALUES (4, N'Consulta sobre mi envío')
SET IDENTITY_INSERT [dbo].[Motivo_Pregunta] OFF
GO
SET IDENTITY_INSERT [dbo].[Preguntas_Usuario] ON 

INSERT [dbo].[Preguntas_Usuario] ([IdPregunta], [Contenido]) VALUES (1, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum')
INSERT [dbo].[Preguntas_Usuario] ([IdPregunta], [Contenido]) VALUES (2, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum')
INSERT [dbo].[Preguntas_Usuario] ([IdPregunta], [Contenido]) VALUES (3, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum')
INSERT [dbo].[Preguntas_Usuario] ([IdPregunta], [Contenido]) VALUES (4, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum')
INSERT [dbo].[Preguntas_Usuario] ([IdPregunta], [Contenido]) VALUES (5, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum')
INSERT [dbo].[Preguntas_Usuario] ([IdPregunta], [Contenido]) VALUES (6, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum

iataaa')
INSERT [dbo].[Preguntas_Usuario] ([IdPregunta], [Contenido]) VALUES (7, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum

iataaa')
INSERT [dbo].[Preguntas_Usuario] ([IdPregunta], [Contenido]) VALUES (8, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum

iataaa')
INSERT [dbo].[Preguntas_Usuario] ([IdPregunta], [Contenido]) VALUES (9, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum

iataaa')
INSERT [dbo].[Preguntas_Usuario] ([IdPregunta], [Contenido]) VALUES (10, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
INSERT [dbo].[Preguntas_Usuario] ([IdPregunta], [Contenido]) VALUES (11, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
INSERT [dbo].[Preguntas_Usuario] ([IdPregunta], [Contenido]) VALUES (12, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
INSERT [dbo].[Preguntas_Usuario] ([IdPregunta], [Contenido]) VALUES (13, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
INSERT [dbo].[Preguntas_Usuario] ([IdPregunta], [Contenido]) VALUES (14, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
INSERT [dbo].[Preguntas_Usuario] ([IdPregunta], [Contenido]) VALUES (15, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
INSERT [dbo].[Preguntas_Usuario] ([IdPregunta], [Contenido]) VALUES (16, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
funcionaaaa')
SET IDENTITY_INSERT [dbo].[Preguntas_Usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[PreguntasDelUsuario] ON 

INSERT [dbo].[PreguntasDelUsuario] ([IdPreguntaUsuario], [IdPregunta], [IdMotivo], [IdUsuario]) VALUES (1, 3, 2, 2)
INSERT [dbo].[PreguntasDelUsuario] ([IdPreguntaUsuario], [IdPregunta], [IdMotivo], [IdUsuario]) VALUES (2, 4, 2, 2)
INSERT [dbo].[PreguntasDelUsuario] ([IdPreguntaUsuario], [IdPregunta], [IdMotivo], [IdUsuario]) VALUES (3, 5, 2, 2)
INSERT [dbo].[PreguntasDelUsuario] ([IdPreguntaUsuario], [IdPregunta], [IdMotivo], [IdUsuario]) VALUES (4, 6, 2, 2)
INSERT [dbo].[PreguntasDelUsuario] ([IdPreguntaUsuario], [IdPregunta], [IdMotivo], [IdUsuario]) VALUES (5, 7, 2, 2)
INSERT [dbo].[PreguntasDelUsuario] ([IdPreguntaUsuario], [IdPregunta], [IdMotivo], [IdUsuario]) VALUES (6, 8, 2, 2)
INSERT [dbo].[PreguntasDelUsuario] ([IdPreguntaUsuario], [IdPregunta], [IdMotivo], [IdUsuario]) VALUES (7, 9, 2, 2)
INSERT [dbo].[PreguntasDelUsuario] ([IdPreguntaUsuario], [IdPregunta], [IdMotivo], [IdUsuario]) VALUES (8, 10, 3, 2)
INSERT [dbo].[PreguntasDelUsuario] ([IdPreguntaUsuario], [IdPregunta], [IdMotivo], [IdUsuario]) VALUES (9, 11, 2, 2)
INSERT [dbo].[PreguntasDelUsuario] ([IdPreguntaUsuario], [IdPregunta], [IdMotivo], [IdUsuario]) VALUES (10, 12, 2, 2)
INSERT [dbo].[PreguntasDelUsuario] ([IdPreguntaUsuario], [IdPregunta], [IdMotivo], [IdUsuario]) VALUES (11, 13, 2, 2)
INSERT [dbo].[PreguntasDelUsuario] ([IdPreguntaUsuario], [IdPregunta], [IdMotivo], [IdUsuario]) VALUES (12, 14, 2, 2)
INSERT [dbo].[PreguntasDelUsuario] ([IdPreguntaUsuario], [IdPregunta], [IdMotivo], [IdUsuario]) VALUES (13, 15, 2, 2)
INSERT [dbo].[PreguntasDelUsuario] ([IdPreguntaUsuario], [IdPregunta], [IdMotivo], [IdUsuario]) VALUES (14, 16, 2, 2)
SET IDENTITY_INSERT [dbo].[PreguntasDelUsuario] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Apellido], [Email], [Telefono], [Contrasena]) VALUES (1, N'Federico', N'Azubel', N'federicoazubel@gmail.com', 1159960078, N'fede')
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Apellido], [Email], [Telefono], [Contrasena]) VALUES (2, N'pepe', N'gonzalez', N'pepe@gmail.com', 12345, N'pepe')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[Atributo]  WITH CHECK ADD  CONSTRAINT [FK_Atributo_Seccion] FOREIGN KEY([IdSeccion])
REFERENCES [dbo].[Seccion] ([IdSeccion])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Atributo] CHECK CONSTRAINT [FK_Atributo_Seccion]
GO
ALTER TABLE [dbo].[DomiciliosUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_DomiciliosUsuarios_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DomiciliosUsuarios] CHECK CONSTRAINT [FK_DomiciliosUsuarios_Usuario]
GO
ALTER TABLE [dbo].[PreguntasDelUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PreguntasDelUsuario_Motivo_Pregunta] FOREIGN KEY([IdMotivo])
REFERENCES [dbo].[Motivo_Pregunta] ([IdMotivo])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PreguntasDelUsuario] CHECK CONSTRAINT [FK_PreguntasDelUsuario_Motivo_Pregunta]
GO
ALTER TABLE [dbo].[PreguntasDelUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PreguntasDelUsuario_Preguntas_Usuario] FOREIGN KEY([IdPregunta])
REFERENCES [dbo].[Preguntas_Usuario] ([IdPregunta])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PreguntasDelUsuario] CHECK CONSTRAINT [FK_PreguntasDelUsuario_Preguntas_Usuario]
GO
ALTER TABLE [dbo].[PreguntasDelUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PreguntasDelUsuario_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PreguntasDelUsuario] CHECK CONSTRAINT [FK_PreguntasDelUsuario_Usuario]
GO
ALTER TABLE [dbo].[Reseñas]  WITH CHECK ADD  CONSTRAINT [FK_Reseñas_Producto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Producto] ([IdProducto])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reseñas] CHECK CONSTRAINT [FK_Reseñas_Producto]
GO
ALTER TABLE [dbo].[Reseñas]  WITH CHECK ADD  CONSTRAINT [FK_Reseñas_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reseñas] CHECK CONSTRAINT [FK_Reseñas_Usuario]
GO
ALTER TABLE [dbo].[Seccion]  WITH CHECK ADD  CONSTRAINT [FK_Seccion_Producto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Producto] ([IdProducto])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Seccion] CHECK CONSTRAINT [FK_Seccion_Producto]
GO
