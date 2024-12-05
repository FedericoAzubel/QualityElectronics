USE [QualityElectronics]
GO
/****** Object:  Table [dbo].[Atributo]    Script Date: 5/12/2024 13:09:32 ******/
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
/****** Object:  Table [dbo].[DomiciliosUsuarios]    Script Date: 5/12/2024 13:09:32 ******/
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
/****** Object:  Table [dbo].[FormatoDePago]    Script Date: 5/12/2024 13:09:32 ******/
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
/****** Object:  Table [dbo].[Motivo_Pregunta]    Script Date: 5/12/2024 13:09:32 ******/
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
/****** Object:  Table [dbo].[Preguntas_Usuario]    Script Date: 5/12/2024 13:09:32 ******/
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
/****** Object:  Table [dbo].[PreguntasDelUsuario]    Script Date: 5/12/2024 13:09:32 ******/
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
/****** Object:  Table [dbo].[Producto]    Script Date: 5/12/2024 13:09:32 ******/
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
/****** Object:  Table [dbo].[Reseñas]    Script Date: 5/12/2024 13:09:32 ******/
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
/****** Object:  Table [dbo].[Seccion]    Script Date: 5/12/2024 13:09:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seccion](
	[IdSeccion] [int] NOT NULL,
	[NombreSeccion] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Seccion] PRIMARY KEY CLUSTERED 
(
	[IdSeccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 5/12/2024 13:09:32 ******/
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

INSERT [dbo].[DomiciliosUsuarios] ([IdDomicilio], [nombreDom], [NombreCalle], [alturaCalle], [codigoPostal], [provincia], [IdUsuario]) VALUES (1, N'Fede house', N'muñiz ', 2047, N'1414', N'Bs.As', 2)
INSERT [dbo].[DomiciliosUsuarios] ([IdDomicilio], [nombreDom], [NombreCalle], [alturaCalle], [codigoPostal], [provincia], [IdUsuario]) VALUES (2, N'Mi domicilio chiquito', N'JulianPerez', 465, N'12345', N'Buenos Aires', 1)
INSERT [dbo].[DomiciliosUsuarios] ([IdDomicilio], [nombreDom], [NombreCalle], [alturaCalle], [codigoPostal], [provincia], [IdUsuario]) VALUES (3, N'domicilio grande', N'Pujol', 567, N'9087', N'CABA', 1)
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
SET IDENTITY_INSERT [dbo].[Preguntas_Usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[PreguntasDelUsuario] ON 

INSERT [dbo].[PreguntasDelUsuario] ([IdPreguntaUsuario], [IdPregunta], [IdMotivo], [IdUsuario]) VALUES (1, 1, 4, 1)
SET IDENTITY_INSERT [dbo].[PreguntasDelUsuario] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Precio], [Foto], [Clasificacion1], [Descripcion], [Clasificacion2], [Clasificacion3], [EsNotebook]) VALUES (1, N'Lenovo IdeaPad 1', 145000, N'Laptop_baja1.png', 1, N'Tu compañera perfecta para tareas básicas', 1, 1, 1)
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
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Apellido], [Email], [Telefono], [Contrasena]) VALUES (1, N'manolo', N'cabezahuevo', N'pepe@gmail.com', 123456, N'pepe')
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Apellido], [Email], [Telefono], [Contrasena]) VALUES (2, N'Dekel', N'Usach', N'dekel.usach@gmail.com', 91201203, N'mashtag')
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
/****** Object:  StoredProcedure [dbo].[InsertAtributo]    Script Date: 5/12/2024 13:09:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertAtributo]
    @Campo varchar,
    @Valor varchar,
    @IdSeccion INT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO Atributo (Campo, Valor, IdSeccion)
        VALUES (@Campo, @Valor, @IdSeccion);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertDomiciliosUsuarios]    Script Date: 5/12/2024 13:09:32 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertFormatoDePago]    Script Date: 5/12/2024 13:09:32 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertMotivo_Pregunta]    Script Date: 5/12/2024 13:09:32 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertPreguntas_Usuario]    Script Date: 5/12/2024 13:09:32 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertPreguntasDelUsuario]    Script Date: 5/12/2024 13:09:32 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertProducto1]    Script Date: 5/12/2024 13:09:32 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertReseñas]    Script Date: 5/12/2024 13:09:32 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertSeccion]    Script Date: 5/12/2024 13:09:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertSeccion]
    @Nombre varchar,
    @IdProducto INT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO Seccion (Nombre, IdProducto)
        VALUES (@Nombre, @IdProducto);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertUsuario]    Script Date: 5/12/2024 13:09:32 ******/
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
