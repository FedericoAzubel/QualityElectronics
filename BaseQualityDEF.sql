USE [QualityElectronics]
GO
/****** Object:  Table [dbo].[Atributo]    Script Date: 28/4/2025 11:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atributo](
	[IdAtributo] [int] IDENTITY(1,1) NOT NULL,
	[Campo] [varchar](200) NOT NULL,
	[Valor] [varchar](200) NOT NULL,
	[IdProducto] [int] NOT NULL,
	[IdSeccion] [int] NOT NULL,
 CONSTRAINT [PK_Atributo] PRIMARY KEY CLUSTERED 
(
	[IdAtributo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compras_Usuario]    Script Date: 28/4/2025 11:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras_Usuario](
	[IdCompra] [int] IDENTITY(1,1) NOT NULL,
	[FormatoPago] [varchar](200) NULL,
	[Domicilio] [varchar](200) NULL,
	[IdUsuario] [int] NOT NULL,
	[PrecioTotal] [int] NULL,
	[Terminado] [bit] NOT NULL,
 CONSTRAINT [PK_Compras_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleProd]    Script Date: 28/4/2025 11:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleProd](
	[IdDetalle] [int] IDENTITY(1,1) NOT NULL,
	[NombreProd] [varchar](200) NOT NULL,
	[PrecioProd] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[PrecioUnitario] [int] NOT NULL,
	[IdCompra] [int] NOT NULL,
	[Foto] [text] NOT NULL,
	[IdProd] [int] NOT NULL,
 CONSTRAINT [PK_DetalleProd] PRIMARY KEY CLUSTERED 
(
	[IdDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DomiciliosUsuarios]    Script Date: 28/4/2025 11:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DomiciliosUsuarios](
	[IdDomicilio] [int] IDENTITY(1,1) NOT NULL,
	[nombreDom] [varchar](200) NOT NULL,
	[NombreCalle] [varchar](200) NOT NULL,
	[alturaCalle] [int] NOT NULL,
	[codigoPostal] [int] NOT NULL,
	[provincia] [varchar](200) NOT NULL,
	[IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_DomiciliosUsuarios] PRIMARY KEY CLUSTERED 
(
	[IdDomicilio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormatoDePago]    Script Date: 28/4/2025 11:31:51 ******/
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
/****** Object:  Table [dbo].[Motivo_Pregunta]    Script Date: 28/4/2025 11:31:51 ******/
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
/****** Object:  Table [dbo].[Preguntas_Usuario]    Script Date: 28/4/2025 11:31:51 ******/
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
/****** Object:  Table [dbo].[PreguntasDelUsuario]    Script Date: 28/4/2025 11:31:51 ******/
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
/****** Object:  Table [dbo].[Producto]    Script Date: 28/4/2025 11:31:51 ******/
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
	[EsNotebook] [bit] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reseñas]    Script Date: 28/4/2025 11:31:51 ******/
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
/****** Object:  Table [dbo].[Seccion]    Script Date: 28/4/2025 11:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seccion](
	[IdSeccion] [int] IDENTITY(1,1) NOT NULL,
	[NombreSeccion] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Seccion] PRIMARY KEY CLUSTERED 
(
	[IdSeccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 28/4/2025 11:31:51 ******/
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
SET IDENTITY_INSERT [dbo].[Atributo] ON 

INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (1, N'Socket', N'AM5', 1, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (2, N'Núcleos', N'6', 1, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (3, N'Hilos', N'12', 1, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (4, N'Socket', N'AM4', 2, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (5, N'Núcleos', N'8', 2, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (6, N'Hilos', N'16', 2, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (7, N'Socket', N'LGA1200', 3, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (8, N'Núcleos', N'4', 3, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (9, N'Hilos', N'8', 3, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (10, N'Socket', N'LGA1700', 4, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (11, N'Núcleos', N'10', 4, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (12, N'Hilos', N'20', 4, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (13, N'Socket', N'AM5', 5, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (14, N'Núcleos', N'6', 5, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (15, N'Hilos', N'12', 5, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (16, N'Socket', N'LGA1200', 6, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (17, N'Núcleos', N'8', 6, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (18, N'Hilos', N'16', 6, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (19, N'Socket', N'AM4', 7, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (20, N'Núcleos', N'12', 7, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (21, N'Hilos', N'24', 7, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (22, N'Socket', N'AM5', 8, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (23, N'Núcleos', N'6', 8, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (24, N'Hilos', N'12', 8, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (25, N'Socket', N'LGA1700', 9, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (26, N'Núcleos', N'16', 9, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (27, N'Hilos', N'32', 9, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (28, N'Socket', N'AM5', 10, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (29, N'Núcleos', N'12', 10, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (30, N'Hilos', N'24', 10, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (31, N'Socket', N'LGA1700', 11, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (32, N'Núcleos', N'16', 11, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (33, N'Hilos', N'32', 11, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (34, N'Socket', N'AM5', 12, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (35, N'Núcleos', N'14', 12, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (36, N'Hilos', N'28', 12, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (37, N'Socket', N'AM4', 13, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (38, N'Núcleos', N'4', 13, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (39, N'Hilos', N'8', 13, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (40, N'Socket', N'LGA1200', 14, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (41, N'Núcleos', N'6', 14, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (42, N'Hilos', N'12', 14, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (43, N'Socket', N'AM5', 15, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (44, N'Núcleos', N'8', 15, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (45, N'Hilos', N'16', 15, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (46, N'Socket', N'LGA1700', 16, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (47, N'Núcleos', N'10', 16, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (48, N'Hilos', N'20', 16, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (49, N'Socket', N'AM4', 17, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (50, N'Núcleos', N'6', 17, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (51, N'Hilos', N'12', 17, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (52, N'Socket', N'LGA1200', 18, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (53, N'Núcleos', N'8', 18, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (54, N'Hilos', N'16', 18, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (55, N'Socket', N'AM5', 19, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (56, N'Núcleos', N'12', 19, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (57, N'Hilos', N'24', 19, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (58, N'Socket', N'LGA1700', 20, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (59, N'Núcleos', N'14', 20, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (60, N'Hilos', N'28', 20, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (61, N'Socket', N'AM4', 21, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (62, N'Núcleos', N'16', 21, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (63, N'Hilos', N'32', 21, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (64, N'Socket', N'LGA1200', 22, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (65, N'Núcleos', N'12', 22, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (66, N'Hilos', N'24', 22, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (67, N'Socket', N'AM5', 23, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (68, N'Núcleos', N'14', 23, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (69, N'Hilos', N'28', 23, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (70, N'Socket', N'LGA1700', 24, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (71, N'Núcleos', N'16', 24, 2)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (72, N'Velocidad transferencia (MB/s)', N'550', 1, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (73, N'Capacidad', N'512 GB', 1, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (74, N'Tipo de memoria', N'SSD NVMe', 1, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (75, N'Velocidad transferencia (MB/s)', N'500', 2, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (76, N'Capacidad', N'1 TB', 2, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (77, N'Tipo de memoria', N'SSD SATA', 2, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (78, N'Velocidad transferencia (MB/s)', N'600', 3, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (79, N'Capacidad', N'256 GB', 3, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (80, N'Tipo de memoria', N'HDD', 3, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (81, N'Velocidad transferencia (MB/s)', N'750', 4, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (82, N'Capacidad', N'2 TB', 4, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (83, N'Tipo de memoria', N'SSD NVMe', 4, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (84, N'Velocidad transferencia (MB/s)', N'700', 5, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (85, N'Capacidad', N'1 TB', 5, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (86, N'Tipo de memoria', N'SSD SATA', 5, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (87, N'Velocidad transferencia (MB/s)', N'650', 6, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (88, N'Capacidad', N'512 GB', 6, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (89, N'Tipo de memoria', N'HDD', 6, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (90, N'Velocidad transferencia (MB/s)', N'800', 7, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (91, N'Capacidad', N'2 TB', 7, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (92, N'Tipo de memoria', N'SSD NVMe', 7, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (93, N'Velocidad transferencia (MB/s)', N'850', 8, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (94, N'Capacidad', N'1 TB', 8, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (95, N'Tipo de memoria', N'SSD SATA', 8, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (96, N'Velocidad transferencia (MB/s)', N'900', 9, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (97, N'Capacidad', N'2 TB', 9, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (98, N'Tipo de memoria', N'SSD NVMe', 9, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (99, N'Velocidad transferencia (MB/s)', N'950', 10, 1)
GO
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (100, N'Capacidad', N'1 TB', 10, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (101, N'Tipo de memoria', N'SSD SATA', 10, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (102, N'Velocidad transferencia (MB/s)', N'1000', 11, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (103, N'Capacidad', N'2 TB', 11, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (104, N'Tipo de memoria', N'SSD NVMe', 11, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (105, N'Velocidad transferencia (MB/s)', N'1050', 12, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (106, N'Capacidad', N'1 TB', 12, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (107, N'Tipo de memoria', N'SSD SATA', 12, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (108, N'Velocidad transferencia (MB/s)', N'500', 13, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (109, N'Capacidad', N'512 GB', 13, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (110, N'Tipo de memoria', N'HDD', 13, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (111, N'Velocidad transferencia (MB/s)', N'550', 14, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (112, N'Capacidad', N'1 TB', 14, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (113, N'Tipo de memoria', N'SSD SATA', 14, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (114, N'Velocidad transferencia (MB/s)', N'600', 15, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (115, N'Capacidad', N'256 GB', 15, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (116, N'Tipo de memoria', N'HDD', 15, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (117, N'Velocidad transferencia (MB/s)', N'650', 16, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (118, N'Capacidad', N'512 GB', 16, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (119, N'Tipo de memoria', N'SSD NVMe', 16, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (120, N'Velocidad transferencia (MB/s)', N'700', 17, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (121, N'Capacidad', N'1 TB', 17, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (122, N'Tipo de memoria', N'SSD SATA', 17, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (123, N'Velocidad transferencia (MB/s)', N'750', 18, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (124, N'Capacidad', N'2 TB', 18, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (125, N'Tipo de memoria', N'SSD NVMe', 18, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (126, N'Velocidad transferencia (MB/s)', N'800', 19, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (127, N'Capacidad', N'1 TB', 19, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (128, N'Tipo de memoria', N'SSD SATA', 19, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (129, N'Velocidad transferencia (MB/s)', N'850', 20, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (130, N'Capacidad', N'2 TB', 20, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (131, N'Tipo de memoria', N'SSD NVMe', 20, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (132, N'Velocidad transferencia (MB/s)', N'900', 21, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (133, N'Capacidad', N'1 TB', 21, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (134, N'Tipo de memoria', N'SSD SATA', 21, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (135, N'Velocidad transferencia (MB/s)', N'950', 22, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (136, N'Capacidad', N'2 TB', 22, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (137, N'Tipo de memoria', N'SSD NVMe', 22, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (138, N'Velocidad transferencia (MB/s)', N'1000', 23, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (139, N'Capacidad', N'1 TB', 23, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (140, N'Tipo de memoria', N'SSD SATA', 23, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (141, N'Velocidad transferencia (MB/s)', N'1050', 24, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (142, N'Capacidad', N'2 TB', 24, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (143, N'Tipo de memoria', N'SSD NVMe', 24, 1)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (144, N'Velocidad (MHz)', N'3200', 1, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (145, N'Capacidad', N'8 GB', 1, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (146, N'Tipo', N'DDR4', 1, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (147, N'Latencia (CL)', N'16', 1, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (148, N'Velocidad (MHz)', N'3600', 2, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (149, N'Capacidad', N'16 GB', 2, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (150, N'Tipo', N'DDR4', 2, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (151, N'Latencia (CL)', N'18', 2, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (152, N'Velocidad (MHz)', N'3000', 3, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (153, N'Capacidad', N'8 GB', 3, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (154, N'Tipo', N'DDR4', 3, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (155, N'Latencia (CL)', N'16', 3, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (156, N'Velocidad (MHz)', N'3200', 4, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (157, N'Capacidad', N'16 GB', 4, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (158, N'Tipo', N'DDR4', 4, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (159, N'Latencia (CL)', N'18', 4, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (160, N'Velocidad (MHz)', N'3600', 5, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (161, N'Capacidad', N'16 GB', 5, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (162, N'Tipo', N'DDR4', 5, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (163, N'Latencia (CL)', N'18', 5, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (164, N'Velocidad (MHz)', N'3000', 6, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (165, N'Capacidad', N'8 GB', 6, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (166, N'Tipo', N'DDR4', 6, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (167, N'Latencia (CL)', N'16', 6, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (168, N'Velocidad (MHz)', N'3200', 7, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (169, N'Capacidad', N'16 GB', 7, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (170, N'Tipo', N'DDR4', 7, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (171, N'Latencia (CL)', N'18', 7, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (172, N'Velocidad (MHz)', N'3600', 8, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (173, N'Capacidad', N'16 GB', 8, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (174, N'Tipo', N'DDR4', 8, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (175, N'Latencia (CL)', N'18', 8, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (176, N'Velocidad (MHz)', N'3000', 9, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (177, N'Capacidad', N'8 GB', 9, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (178, N'Tipo', N'DDR4', 9, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (179, N'Latencia (CL)', N'16', 9, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (180, N'Velocidad (MHz)', N'3200', 10, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (181, N'Capacidad', N'16 GB', 10, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (182, N'Tipo', N'DDR4', 10, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (183, N'Latencia (CL)', N'18', 10, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (184, N'Velocidad (MHz)', N'3600', 11, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (185, N'Capacidad', N'16 GB', 11, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (186, N'Tipo', N'DDR4', 11, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (187, N'Latencia (CL)', N'18', 11, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (188, N'Velocidad (MHz)', N'3000', 12, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (189, N'Capacidad', N'8 GB', 12, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (190, N'Tipo', N'DDR4', 12, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (191, N'Latencia (CL)', N'16', 12, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (192, N'Velocidad (MHz)', N'3200', 13, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (193, N'Capacidad', N'8 GB', 13, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (194, N'Tipo', N'DDR4', 13, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (195, N'Latencia (CL)', N'16', 13, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (196, N'Velocidad (MHz)', N'3600', 14, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (197, N'Capacidad', N'16 GB', 14, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (198, N'Tipo', N'DDR4', 14, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (199, N'Latencia (CL)', N'18', 14, 4)
GO
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (200, N'Velocidad (MHz)', N'3000', 15, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (201, N'Capacidad', N'8 GB', 15, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (202, N'Tipo', N'DDR4', 15, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (203, N'Latencia (CL)', N'16', 15, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (204, N'Velocidad (MHz)', N'3200', 16, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (205, N'Capacidad', N'16 GB', 16, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (206, N'Tipo', N'DDR4', 16, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (207, N'Latencia (CL)', N'18', 16, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (208, N'Velocidad (MHz)', N'3600', 17, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (209, N'Capacidad', N'16 GB', 17, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (210, N'Tipo', N'DDR4', 17, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (211, N'Latencia (CL)', N'18', 17, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (212, N'Velocidad (MHz)', N'3000', 18, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (213, N'Capacidad', N'8 GB', 18, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (214, N'Tipo', N'DDR4', 18, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (215, N'Latencia (CL)', N'16', 18, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (216, N'Velocidad (MHz)', N'3200', 19, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (217, N'Capacidad', N'16 GB', 19, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (218, N'Tipo', N'DDR4', 19, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (219, N'Latencia (CL)', N'18', 19, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (220, N'Velocidad (MHz)', N'3600', 20, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (221, N'Capacidad', N'16 GB', 20, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (222, N'Tipo', N'DDR4', 20, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (223, N'Latencia (CL)', N'18', 20, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (224, N'Velocidad (MHz)', N'3000', 21, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (225, N'Capacidad', N'8 GB', 21, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (226, N'Tipo', N'DDR4', 21, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (227, N'Latencia (CL)', N'16', 21, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (228, N'Velocidad (MHz)', N'3200', 22, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (229, N'Capacidad', N'16 GB', 22, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (230, N'Tipo', N'DDR4', 22, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (231, N'Latencia (CL)', N'18', 22, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (232, N'Velocidad (MHz)', N'3600', 23, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (233, N'Capacidad', N'16 GB', 23, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (234, N'Tipo', N'DDR4', 23, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (235, N'Latencia (CL)', N'18', 23, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (236, N'Velocidad (MHz)', N'3000', 24, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (237, N'Capacidad', N'8 GB', 24, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (238, N'Tipo', N'DDR4', 24, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (239, N'Latencia (CL)', N'16', 24, 4)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (240, N'Modelo', N'NVIDIA GeForce GTX 1650', 1, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (241, N'Memoria dedicada (MB)', N'4096', 1, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (242, N'Modelo', N'NVIDIA GeForce RTX 3060', 2, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (243, N'Memoria dedicada (MB)', N'6144', 2, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (244, N'Modelo', N'AMD Radeon RX 5600', 3, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (245, N'Memoria dedicada (MB)', N'6144', 3, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (246, N'Modelo', N'NVIDIA GeForce RTX 3070', 4, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (247, N'Memoria dedicada (MB)', N'8192', 4, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (248, N'Modelo', N'AMD Radeon RX 6700 XT', 5, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (249, N'Memoria dedicada (MB)', N'12288', 5, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (250, N'Modelo', N'NVIDIA GeForce RTX 3080', 6, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (251, N'Memoria dedicada (MB)', N'10240', 6, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (252, N'Modelo', N'AMD Radeon RX 6800', 7, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (253, N'Memoria dedicada (MB)', N'16384', 7, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (254, N'Modelo', N'NVIDIA GeForce RTX 3090', 8, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (255, N'Memoria dedicada (MB)', N'24576', 8, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (256, N'Modelo', N'AMD Radeon RX 6900 XT', 9, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (257, N'Memoria dedicada (MB)', N'16384', 9, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (258, N'Modelo', N'NVIDIA GeForce RTX 4070', 10, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (259, N'Memoria dedicada (MB)', N'12288', 10, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (260, N'Modelo', N'AMD Radeon RX 6950 XT', 11, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (261, N'Memoria dedicada (MB)', N'16384', 11, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (262, N'Modelo', N'NVIDIA GeForce RTX 4080', 12, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (263, N'Memoria dedicada (MB)', N'24576', 12, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (264, N'Modelo', N'NVIDIA GeForce GTX 1660', 13, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (265, N'Memoria dedicada (MB)', N'6144', 13, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (266, N'Modelo', N'AMD Radeon RX 5500', 14, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (267, N'Memoria dedicada (MB)', N'6144', 14, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (268, N'Modelo', N'NVIDIA GeForce RTX 3050', 15, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (269, N'Memoria dedicada (MB)', N'6144', 15, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (270, N'Modelo', N'AMD Radeon RX 6600', 16, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (271, N'Memoria dedicada (MB)', N'8192', 16, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (272, N'Modelo', N'NVIDIA GeForce RTX 3060 Ti', 17, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (273, N'Memoria dedicada (MB)', N'6144', 17, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (274, N'Modelo', N'AMD Radeon RX 6700', 18, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (275, N'Memoria dedicada (MB)', N'12288', 18, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (276, N'Modelo', N'NVIDIA GeForce RTX 3070 Ti', 19, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (277, N'Memoria dedicada (MB)', N'8192', 19, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (278, N'Modelo', N'AMD Radeon RX 6750 XT', 20, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (279, N'Memoria dedicada (MB)', N'12288', 20, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (280, N'Modelo', N'NVIDIA GeForce RTX 3080 Ti', 21, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (281, N'Memoria dedicada (MB)', N'12288', 21, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (282, N'Modelo', N'AMD Radeon RX 6800 XT', 22, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (283, N'Memoria dedicada (MB)', N'16384', 22, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (284, N'Modelo', N'NVIDIA GeForce RTX 3090 Ti', 23, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (285, N'Memoria dedicada (MB)', N'24576', 23, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (286, N'Modelo', N'AMD Radeon RX 6900 XT', 24, 3)
INSERT [dbo].[Atributo] ([IdAtributo], [Campo], [Valor], [IdProducto], [IdSeccion]) VALUES (287, N'Memoria dedicada (MB)', N'16384', 24, 3)
SET IDENTITY_INSERT [dbo].[Atributo] OFF
GO
SET IDENTITY_INSERT [dbo].[Compras_Usuario] ON 

INSERT [dbo].[Compras_Usuario] ([IdCompra], [FormatoPago], [Domicilio], [IdUsuario], [PrecioTotal], [Terminado]) VALUES (1, N'Tarjeta de crédito', N'Domicilio1', 5, 145030, 1)
INSERT [dbo].[Compras_Usuario] ([IdCompra], [FormatoPago], [Domicilio], [IdUsuario], [PrecioTotal], [Terminado]) VALUES (2, N'Depósito o transferencia bancaria', N'Domicilio2', 5, 1770000, 1)
INSERT [dbo].[Compras_Usuario] ([IdCompra], [FormatoPago], [Domicilio], [IdUsuario], [PrecioTotal], [Terminado]) VALUES (3, N'Depósito o transferencia bancaria', N'domicilio grande', 1, 910000, 1)
INSERT [dbo].[Compras_Usuario] ([IdCompra], [FormatoPago], [Domicilio], [IdUsuario], [PrecioTotal], [Terminado]) VALUES (4, N'Mercado Pago', N'Mi domicilio chiquito', 1, 82000, 1)
INSERT [dbo].[Compras_Usuario] ([IdCompra], [FormatoPago], [Domicilio], [IdUsuario], [PrecioTotal], [Terminado]) VALUES (5, NULL, NULL, 4, 625030, 0)
INSERT [dbo].[Compras_Usuario] ([IdCompra], [FormatoPago], [Domicilio], [IdUsuario], [PrecioTotal], [Terminado]) VALUES (6, N'Depósito o transferencia bancaria', N'Domicilio2', 5, 2500000, 1)
INSERT [dbo].[Compras_Usuario] ([IdCompra], [FormatoPago], [Domicilio], [IdUsuario], [PrecioTotal], [Terminado]) VALUES (7, N'Depósito o transferencia bancaria', N'Domicilio2', 5, 280000, 1)
SET IDENTITY_INSERT [dbo].[Compras_Usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[DetalleProd] ON 

INSERT [dbo].[DetalleProd] ([IdDetalle], [NombreProd], [PrecioProd], [Cantidad], [PrecioUnitario], [IdCompra], [Foto], [IdProd]) VALUES (0, N'Lenovo IdeaPad 1', 145030, 1, 145030, 1, N'Laptop_baja1.png', 1)
INSERT [dbo].[DetalleProd] ([IdDetalle], [NombreProd], [PrecioProd], [Cantidad], [PrecioUnitario], [IdCompra], [Foto], [IdProd]) VALUES (1, N'HP Pavilion 14', 240000, 3, 720000, 2, N'Laptop_media2.png', 6)
INSERT [dbo].[DetalleProd] ([IdDetalle], [NombreProd], [PrecioProd], [Cantidad], [PrecioUnitario], [IdCompra], [Foto], [IdProd]) VALUES (2, N'PC ASUS ROG Strix GT35', 300000, 3, 900000, 2, N'pc_alta3.png', 23)
INSERT [dbo].[DetalleProd] ([IdDetalle], [NombreProd], [PrecioProd], [Cantidad], [PrecioUnitario], [IdCompra], [Foto], [IdProd]) VALUES (3, N'PC HP Slim S01', 75000, 2, 150000, 2, N'pc_baja1.png', 13)
INSERT [dbo].[DetalleProd] ([IdDetalle], [NombreProd], [PrecioProd], [Cantidad], [PrecioUnitario], [IdCompra], [Foto], [IdProd]) VALUES (4, N'Acer Aspire 3', 155000, 2, 310000, 3, N'Laptop_baja3.png', 3)
INSERT [dbo].[DetalleProd] ([IdDetalle], [NombreProd], [PrecioProd], [Cantidad], [PrecioUnitario], [IdCompra], [Foto], [IdProd]) VALUES (5, N'Acer Nitro 5', 300000, 2, 600000, 3, N'Laptop_media4.png', 8)
INSERT [dbo].[DetalleProd] ([IdDetalle], [NombreProd], [PrecioProd], [Cantidad], [PrecioUnitario], [IdCompra], [Foto], [IdProd]) VALUES (6, N'PC Lenovo V50s', 82000, 1, 82000, 4, N'pc_baja2.png', 14)
INSERT [dbo].[DetalleProd] ([IdDetalle], [NombreProd], [PrecioProd], [Cantidad], [PrecioUnitario], [IdCompra], [Foto], [IdProd]) VALUES (8, N'HP 14-dq2025la', 160000, 3, 480000, 5, N'Laptop_baja2.png', 2)
INSERT [dbo].[DetalleProd] ([IdDetalle], [NombreProd], [PrecioProd], [Cantidad], [PrecioUnitario], [IdCompra], [Foto], [IdProd]) VALUES (9, N'Lenovo IdeaPad 1', 145030, 1, 145030, 5, N'Laptop_baja1.png', 1)
INSERT [dbo].[DetalleProd] ([IdDetalle], [NombreProd], [PrecioProd], [Cantidad], [PrecioUnitario], [IdCompra], [Foto], [IdProd]) VALUES (11, N'HP Omen 16', 500000, 5, 2500000, 6, N'Laptop_alta2.png', 10)
INSERT [dbo].[DetalleProd] ([IdDetalle], [NombreProd], [PrecioProd], [Cantidad], [PrecioUnitario], [IdCompra], [Foto], [IdProd]) VALUES (14, N'PC Alienware Aurora R15', 280000, 1, 280000, 7, N'pc_alta2.png', 22)
SET IDENTITY_INSERT [dbo].[DetalleProd] OFF
GO
SET IDENTITY_INSERT [dbo].[DomiciliosUsuarios] ON 

INSERT [dbo].[DomiciliosUsuarios] ([IdDomicilio], [nombreDom], [NombreCalle], [alturaCalle], [codigoPostal], [provincia], [IdUsuario]) VALUES (1, N'Fede house', N'muñiz ', 2047, 1414, N'Bs.As', 2)
INSERT [dbo].[DomiciliosUsuarios] ([IdDomicilio], [nombreDom], [NombreCalle], [alturaCalle], [codigoPostal], [provincia], [IdUsuario]) VALUES (2, N'Mi domicilio chiquito', N'JulianPerez', 465, 12345, N'Buenos Aires', 1)
INSERT [dbo].[DomiciliosUsuarios] ([IdDomicilio], [nombreDom], [NombreCalle], [alturaCalle], [codigoPostal], [provincia], [IdUsuario]) VALUES (3, N'domicilio grande', N'Pujol', 567, 9087, N'CABA', 1)
INSERT [dbo].[DomiciliosUsuarios] ([IdDomicilio], [nombreDom], [NombreCalle], [alturaCalle], [codigoPostal], [provincia], [IdUsuario]) VALUES (4, N'dom1', N'pepe', 89, 9876, N'caba', 3)
INSERT [dbo].[DomiciliosUsuarios] ([IdDomicilio], [nombreDom], [NombreCalle], [alturaCalle], [codigoPostal], [provincia], [IdUsuario]) VALUES (5, N'Domicilio1', N'Julian Perez', 465, 12345, N'Morón', 5)
INSERT [dbo].[DomiciliosUsuarios] ([IdDomicilio], [nombreDom], [NombreCalle], [alturaCalle], [codigoPostal], [provincia], [IdUsuario]) VALUES (6, N'Domicilio2', N'Juancito', 56, 1234, N'Castelar', 5)
INSERT [dbo].[DomiciliosUsuarios] ([IdDomicilio], [nombreDom], [NombreCalle], [alturaCalle], [codigoPostal], [provincia], [IdUsuario]) VALUES (7, N'a', N'a', 1, 123, N'a', 4)
SET IDENTITY_INSERT [dbo].[DomiciliosUsuarios] OFF
GO
SET IDENTITY_INSERT [dbo].[FormatoDePago] ON 

INSERT [dbo].[FormatoDePago] ([IdPago], [Descripcion]) VALUES (1, N'Depósito o transferencia bancaria')
INSERT [dbo].[FormatoDePago] ([IdPago], [Descripcion]) VALUES (2, N'Mercado Pago')
INSERT [dbo].[FormatoDePago] ([IdPago], [Descripcion]) VALUES (3, N'Tarjeta de crédito')
SET IDENTITY_INSERT [dbo].[FormatoDePago] OFF
GO
SET IDENTITY_INSERT [dbo].[Motivo_Pregunta] ON 

INSERT [dbo].[Motivo_Pregunta] ([IdMotivo], [NombreMotivo]) VALUES (1, N'Consulta sobre un producto')
INSERT [dbo].[Motivo_Pregunta] ([IdMotivo], [NombreMotivo]) VALUES (2, N'Consulta General')
INSERT [dbo].[Motivo_Pregunta] ([IdMotivo], [NombreMotivo]) VALUES (3, N'Necesito ayuda para realizar una compra')
INSERT [dbo].[Motivo_Pregunta] ([IdMotivo], [NombreMotivo]) VALUES (4, N'Consulta sobre mi Envío')
SET IDENTITY_INSERT [dbo].[Motivo_Pregunta] OFF
GO
SET IDENTITY_INSERT [dbo].[Preguntas_Usuario] ON 

INSERT [dbo].[Preguntas_Usuario] ([IdPregunta], [Contenido]) VALUES (1, N'prueba de consulta')
INSERT [dbo].[Preguntas_Usuario] ([IdPregunta], [Contenido]) VALUES (2, N'rwerwerwe')
INSERT [dbo].[Preguntas_Usuario] ([IdPregunta], [Contenido]) VALUES (3, N'hjihihihbih')
INSERT [dbo].[Preguntas_Usuario] ([IdPregunta], [Contenido]) VALUES (4, N'pregunta 2')
SET IDENTITY_INSERT [dbo].[Preguntas_Usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[PreguntasDelUsuario] ON 

INSERT [dbo].[PreguntasDelUsuario] ([IdPreguntaUsuario], [IdPregunta], [IdMotivo], [IdUsuario]) VALUES (1, 1, 4, 1)
INSERT [dbo].[PreguntasDelUsuario] ([IdPreguntaUsuario], [IdPregunta], [IdMotivo], [IdUsuario]) VALUES (2, 2, 2, 3)
INSERT [dbo].[PreguntasDelUsuario] ([IdPreguntaUsuario], [IdPregunta], [IdMotivo], [IdUsuario]) VALUES (3, 3, 2, 5)
INSERT [dbo].[PreguntasDelUsuario] ([IdPreguntaUsuario], [IdPregunta], [IdMotivo], [IdUsuario]) VALUES (4, 4, 3, 5)
SET IDENTITY_INSERT [dbo].[PreguntasDelUsuario] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (1, N'Lenovo IdeaPad 1', 145030, N'Laptop_baja1.png', 1, N'Tu compañera perfecta para tareas básicas', 1, 1, 1)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (2, N'HP 14-dq2025la', 160000, N'Laptop_baja2.png', 1, N'Tu compañera perfecta para tareas básicas', 1, 1, 1)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (3, N'Acer Aspire 3', 155000, N'Laptop_baja3.png', 1, N'Tu compañera perfecta para tareas básicas', 1, 1, 1)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (4, N'Dell Inspiron 15', 220000, N'Laptop_baja4.png', 2, N'Rendimiento equilibrado y diseño moderno', 2, 1, 1)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (5, N'Asus VivoBook 15', 230000, N'Laptop_media1.png', 2, N'Rendimiento equilibrado y diseño moderno', 2, 1, 1)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (6, N'HP Pavilion 14', 240000, N'Laptop_media2.png', 2, N'Rendimiento equilibrado y diseño moderno', 2, 1, 1)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (7, N'Lenovo IdeaPad 5', 250000, N'Laptop_media3.png', 3, N'Rendimiento equilibrado y diseño moderno', 2, 1, 1)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (8, N'Acer Nitro 5', 300000, N'Laptop_media4.png', 3, N'Rendimiento equilibrado y diseño moderno', 2, 1, 1)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (9, N'Asus TUF Gaming F15', 450000, N'Laptop_alta1.png', 4, N'La laptop más avanzada para profesionales exigentes', 3, 1, 1)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (10, N'HP Omen 16', 500000, N'Laptop_alta2.png', 4, N'La laptop más avanzada para profesionales exigentes', 3, 1, 1)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (11, N'Dell XPS 15', 600000, N'Laptop_alta3.png', 4, N'La laptop más avanzada para profesionales exigentes', 3, 1, 1)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (12, N'Apple MacBook Pro 14"', 750000, N'Laptop_alta4.png', 4, N'La laptop más avanzada para profesionales exigentes', 3, 1, 1)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (13, N'PC HP Slim S01', 75000, N'pc_baja1.png', 1, N'PC básica ideal para tareas de oficina y navegación.', 1, 1, 0)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (14, N'PC Lenovo V50s', 82000, N'pc_baja2.png', 1, N'Diseñada para trabajos básicos y excelente relación calidad-precio.', 1, 1, 0)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (15, N'PC Dell Inspiron 3910', 90000, N'pc_baja3.png', 1, N'Compacta y económica, adecuada para tareas cotidianas.', 1, 1, 0)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (16, N'PC ASUS ExpertCenter D5', 95000, N'pc_baja4.png', 1, N'Rendimiento accesible para actividades básicas.', 1, 1, 0)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (17, N'PC Acer Aspire TC', 120000, N'pc_media1.png', 2, N'Equilibrio entre rendimiento y diseño para tareas múltiples.', 2, 1, 0)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (18, N'PC Lenovo IdeaCentre 3', 135000, N'pc_media2.png', 2, N'Gran opción para trabajo, navegación y multimedia.', 2, 1, 0)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (19, N'PC HP Pavilion TP01', 150000, N'pc_media3.png', 3, N'PC confiable con características avanzadas para multitarea.', 2, 1, 0)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (20, N'PC Dell XPS Desktop', 170000, N'pc_media4.png', 3, N'Potencia equilibrada para aplicaciones de rendimiento medio.', 2, 1, 0)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (21, N'PC MSI MAG Infinite', 250000, N'pc_alta1.png', 4, N'Diseño robusto y potencia para creadores de contenido.', 3, 1, 0)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (22, N'PC Alienware Aurora R15', 280000, N'pc_alta2.png', 4, N'PC avanzada para gamers y profesionales exigentes.', 3, 1, 0)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (23, N'PC ASUS ROG Strix GT35', 300000, N'pc_alta3.png', 4, N'Ideal para gaming de alta gama y tareas intensivas.', 3, 1, 0)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (24, N'PC HP Omen 45L', 350000, N'pc_alta4.png', 4, N'Máxima potencia para experiencias gaming y edición profesional.', 3, 1, 0)
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Seccion] ON 

INSERT [dbo].[Seccion] ([IdSeccion], [NombreSeccion]) VALUES (1, N'Almacenamiento')
INSERT [dbo].[Seccion] ([IdSeccion], [NombreSeccion]) VALUES (2, N'Procesador')
INSERT [dbo].[Seccion] ([IdSeccion], [NombreSeccion]) VALUES (3, N'Tarjeta Gráfica')
INSERT [dbo].[Seccion] ([IdSeccion], [NombreSeccion]) VALUES (4, N'Memoria RAM')
SET IDENTITY_INSERT [dbo].[Seccion] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Apellido], [Email], [Telefono], [Contrasena]) VALUES (1, N'manolo', N'cabezahuevo', N'pepe@gmail.com', 123456, N'pepe')
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Apellido], [Email], [Telefono], [Contrasena]) VALUES (2, N'Dekel', N'Usach', N'dekel.usach@gmail.com', 91201203, N'mashtag')
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Apellido], [Email], [Telefono], [Contrasena]) VALUES (3, N'julian', N'medina', N'julian.medina@ort.edu.ar', 0, N'3213213121')
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Apellido], [Email], [Telefono], [Contrasena]) VALUES (4, N'ilan', N'tauscher', N'tauscherilan@gmail.com', 1111111, N'hola')
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Apellido], [Email], [Telefono], [Contrasena]) VALUES (5, N'fede', N'azubel', N'fede@gmail.com', 1111111, N'pepe')
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Apellido], [Email], [Telefono], [Contrasena]) VALUES (6, N'manolo', N'cabezahuevo', N'hola@gmail.com', 98, N'11')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[Atributo]  WITH CHECK ADD  CONSTRAINT [FK_Atributo_Producto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Producto] ([IdProducto])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Atributo] CHECK CONSTRAINT [FK_Atributo_Producto]
GO
ALTER TABLE [dbo].[Atributo]  WITH CHECK ADD  CONSTRAINT [FK_Atributo_Seccion] FOREIGN KEY([IdSeccion])
REFERENCES [dbo].[Seccion] ([IdSeccion])
GO
ALTER TABLE [dbo].[Atributo] CHECK CONSTRAINT [FK_Atributo_Seccion]
GO
ALTER TABLE [dbo].[Compras_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Usuario_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Compras_Usuario] CHECK CONSTRAINT [FK_Compras_Usuario_Usuario]
GO
ALTER TABLE [dbo].[DetalleProd]  WITH CHECK ADD  CONSTRAINT [FK_DetalleProd_Compras_Usuario] FOREIGN KEY([IdCompra])
REFERENCES [dbo].[Compras_Usuario] ([IdCompra])
GO
ALTER TABLE [dbo].[DetalleProd] CHECK CONSTRAINT [FK_DetalleProd_Compras_Usuario]
GO
ALTER TABLE [dbo].[DetalleProd]  WITH CHECK ADD  CONSTRAINT [FK_DetalleProd_Producto] FOREIGN KEY([IdProd])
REFERENCES [dbo].[Producto] ([IdProducto])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DetalleProd] CHECK CONSTRAINT [FK_DetalleProd_Producto]
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
/****** Object:  StoredProcedure [dbo].[InsertAtributo]    Script Date: 28/4/2025 11:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertAtributo]
    @Campo VARCHAR(200),
    @Valor VARCHAR(200),
    @IdProducto INT,
    @IdSeccion INT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO Atributo (Campo, Valor, IdProducto, IdSeccion)
        VALUES (@Campo, @Valor, @IdProducto, @IdSeccion);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertDomiciliosUsuarios]    Script Date: 28/4/2025 11:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertDomiciliosUsuarios]
    @nombreDom varchar,
    @NombreCalle varchar,
    @alturaCalle INT,
    @codigoPostal INT,
    @provincia varchar,
    @IdUsuario INT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO DomiciliosUsuarios (nombreDom, NombreCalle, alturaCalle, codigoPostal, provincia, IdUsuario)
        VALUES (@nombreDom, @NombreCalle, @alturaCalle, @codigoPostal, @provincia, @IdUsuario);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertFormatoDePago]    Script Date: 28/4/2025 11:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertFormatoDePago]
    @Descripcion varchar
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO FormatoDePago (Descripcion)
        VALUES (@Descripcion);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertMotivo_Pregunta]    Script Date: 28/4/2025 11:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertMotivo_Pregunta]
    @NombreMotivo varchar
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO Motivo_Pregunta (NombreMotivo)
        VALUES (@NombreMotivo);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertPreguntas_Usuario]    Script Date: 28/4/2025 11:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertPreguntas_Usuario]
    @Contenido text
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO Preguntas_Usuario (Contenido)
        VALUES (@Contenido);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertPreguntasDelUsuario]    Script Date: 28/4/2025 11:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertPreguntasDelUsuario]
    @IdPregunta INT,
    @IdMotivo INT,
    @IdUsuario INT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO PreguntasDelUsuario (IdPregunta, IdMotivo, IdUsuario)
        VALUES (@IdPregunta, @IdMotivo, @IdUsuario);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertProducto1]    Script Date: 28/4/2025 11:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertProducto1]
    @Nombre varchar,
    @Precio float,
    @Foto text,
    @Clasificacion1 INT,
    @Descripcion text,
    @Clasificacion2 INT,
    @Clasificacion3 INT,
    @EsNotebook bit
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO Producto (Nombre, Precio, Foto, Clasificacion1, Descripcion, Clasificacion2, Clasificacion3, EsNotebook)
        VALUES (@Nombre, @Precio, @Foto, @Clasificacion1, @Descripcion, @Clasificacion2, @Clasificacion3, @EsNotebook);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertReseñas]    Script Date: 28/4/2025 11:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertReseñas]
    @IdProducto INT,
    @Puntuacion INT,
    @Contenido text,
    @IdUsuario INT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO Reseñas (IdProducto, Puntuacion, Contenido, IdUsuario)
        VALUES (@IdProducto, @Puntuacion, @Contenido, @IdUsuario);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertSeccion]    Script Date: 28/4/2025 11:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertSeccion]
    @NombreSeccion VARCHAR(200)
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO Seccion (NombreSeccion)
        VALUES (@NombreSeccion);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertUsuario]    Script Date: 28/4/2025 11:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertUsuario]
    @Nombre varchar,
    @Apellido varchar,
    @Email varchar,
    @Telefono INT,
    @Contrasena varchar
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO Usuario (Nombre, Apellido, Email, Telefono, Contrasena)
        VALUES (@Nombre, @Apellido, @Email, @Telefono, @Contrasena);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO
