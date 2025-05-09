USE [QualityElectronics]
GO
/****** Object:  StoredProcedure [dbo].[InsertProducto]    Script Date: 04/12/2024 20:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[InsertProducto]
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
