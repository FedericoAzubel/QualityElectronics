USE [QualityElectronics]
GO
/****** Object:  Table [dbo].[Atributo]    Script Date: 03/12/2024 21:13:24 ******/
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
/****** Object:  Table [dbo].[Ayuda]    Script Date: 03/12/2024 21:13:24 ******/
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
/****** Object:  Table [dbo].[FormatoDePago]    Script Date: 03/12/2024 21:13:24 ******/
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
/****** Object:  Table [dbo].[Motivo_Pregunta]    Script Date: 03/12/2024 21:13:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Motivo_Pregunta](
	[IdMotivo] [int] IDENTITY(1,1) NOT NULL,
	[NombreMotivo] [varchar](50) NOT NULL,
	[IdPregunta] [int] NOT NULL,
 CONSTRAINT [PK_Motivo_Pregunta] PRIMARY KEY CLUSTERED 
(
	[IdMotivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preguntas_Usuario]    Script Date: 03/12/2024 21:13:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas_Usuario](
	[IdPregunta] [int] IDENTITY(1,1) NOT NULL,
	[Contenido] [text] NOT NULL,
	[IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Preguntas_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdPregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 03/12/2024 21:13:24 ******/
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
/****** Object:  Table [dbo].[Reseñas]    Script Date: 03/12/2024 21:13:24 ******/
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
/****** Object:  Table [dbo].[Seccion]    Script Date: 03/12/2024 21:13:24 ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 03/12/2024 21:13:24 ******/
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
ALTER TABLE [dbo].[Motivo_Pregunta]  WITH CHECK ADD  CONSTRAINT [FK_Motivo_Pregunta_Preguntas_Usuario] FOREIGN KEY([IdPregunta])
REFERENCES [dbo].[Preguntas_Usuario] ([IdPregunta])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Motivo_Pregunta] CHECK CONSTRAINT [FK_Motivo_Pregunta_Preguntas_Usuario]
GO
ALTER TABLE [dbo].[Preguntas_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Preguntas_Usuario_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Preguntas_Usuario] CHECK CONSTRAINT [FK_Preguntas_Usuario_Usuario]
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
