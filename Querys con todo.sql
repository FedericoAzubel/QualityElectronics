--CREACIÓN DE ÍNDICES
-- Índices para la tabla [Atributo]
CREATE NONCLUSTERED INDEX IX_Atributo_IdSeccion
ON [dbo].[Atributo] ([IdSeccion]);

-- Índices para la tabla [DomiciliosUsuarios]
CREATE NONCLUSTERED INDEX IX_DomiciliosUsuarios_IdUsuario
ON [dbo].[DomiciliosUsuarios] ([IdUsuario]);

-- Índices para la tabla [PreguntasDelUsuario]
CREATE NONCLUSTERED INDEX IX_PreguntasDelUsuario_IdPregunta
ON [dbo].[PreguntasDelUsuario] ([IdPregunta]);

CREATE NONCLUSTERED INDEX IX_PreguntasDelUsuario_IdMotivo
ON [dbo].[PreguntasDelUsuario] ([IdMotivo]);

CREATE NONCLUSTERED INDEX IX_PreguntasDelUsuario_IdUsuario
ON [dbo].[PreguntasDelUsuario] ([IdUsuario]);

-- Índices para la tabla [Reseñas]
CREATE NONCLUSTERED INDEX IX_Reseñas_IdProducto
ON [dbo].[Reseñas] ([IdProducto]);

CREATE NONCLUSTERED INDEX IX_Reseñas_IdUsuario
ON [dbo].[Reseñas] ([IdUsuario]);

-- Índices para la tabla [Seccion]
CREATE NONCLUSTERED INDEX IX_Seccion_IdProducto
ON [dbo].[Seccion] ([IdProducto]);

--TRIGGER que verifica que la puntuación (Puntuacion) de una reseña esté dentro del rango permitido (por ejemplo, 1 a 5) y prevenir la inserción o actualización de datos inválidos.
CREATE TRIGGER trg_ValidarPuntuacion
ON [dbo].[Reseñas]
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Verificar si alguna puntuación está fuera del rango permitido
    IF EXISTS (
        SELECT 1
        FROM inserted
        WHERE Puntuacion < 1 OR Puntuacion > 5
    )
    BEGIN
        RAISERROR ('La puntuación de la reseña debe estar entre 1 y 5.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;


--STORED PROCEDURES CON TRANSACCIONES

CREATE PROCEDURE InsertAtributo
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



CREATE PROCEDURE InsertAyuda
    @Pregunta varchar,
    @Respuesta text
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO Ayuda (Pregunta, Respuesta)
        VALUES (@Pregunta, @Respuesta);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;



CREATE PROCEDURE InsertDomiciliosUsuarios
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



CREATE PROCEDURE InsertFormatoDePago
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



CREATE PROCEDURE InsertMotivo_Pregunta
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



CREATE PROCEDURE InsertPreguntas_Usuario
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



CREATE PROCEDURE InsertPreguntasDelUsuario
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



CREATE PROCEDURE InsertProducto
    @Nombre varchar,
    @Precio float,
    @Foto text,
    @Clasificacion1 INT,
    @Descripcion text,
    @Clasificacion2 INT,
    @Clasificacion3 INT,
    @EsPeriferico bit,
    @EsNotebook bit
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO Producto (Nombre, Precio, Foto, Clasificacion1, Descripcion, Clasificacion2, Clasificacion3, EsPeriferico, EsNotebook)
        VALUES (@Nombre, @Precio, @Foto, @Clasificacion1, @Descripcion, @Clasificacion2, @Clasificacion3, @EsPeriferico, @EsNotebook);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;



CREATE PROCEDURE InsertReseñas
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



CREATE PROCEDURE InsertSeccion
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



CREATE PROCEDURE InsertUsuario
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

