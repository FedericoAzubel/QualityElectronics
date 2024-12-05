using System.Data.SqlClient;
using System.Reflection;
using Dapper;

public class BD
{
    public static List<Producto> ListaProductos = new List<Producto>();
    public static List<Producto> ListaNotebooks = new List<Producto>();
    public static List<Producto> ListaPerifericos = new List<Producto>();
    public static List<Producto> ListaTuCatalogo = new List<Producto>();
    public static List<Preguntas_Motivo> ListaPreguntas = new List<Preguntas_Motivo>();
    public static List<Motivo> ListaMotivos = new List<Motivo>();
    public static List<DomiciliosUsuarios> ListaDoms = new List<DomiciliosUsuarios>();
    public static List<Seccion> ListaSeccion = new List<Seccion>();
    public static List<Atributo> ListaAtributo = new List<Atributo>();

    private static string _connectionString = @"Server=DESKTOP-I5A2R1G\SQLEXPRESS;DataBase=QualityElectronics;Trusted_Connection=True;";

    /*Este método levanta todos los prodcutos del catálogo*/
    public static List<Producto>  LevantarProductos()
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Producto";
            ListaProductos = db.Query<Producto>(sql).ToList();
        }
        return ListaProductos;
    }

    /*Este método levanta todos los prodcutos que sean Notebooks*/
    public static List<Producto>  LevantarNotebooks()
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Producto WHERE EsNotebook = 1";
            ListaNotebooks = db.Query<Producto>(sql).ToList();
        }
        return ListaNotebooks;
    }

    /*Este método levanta todos los prodcutos que sean Periféricos*/
    public static List<Producto> LevantarPerifericos()
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Producto WHERE EsPeriferico = 1";
            ListaPerifericos = db.Query<Producto>(sql).ToList();
        }
        return ListaPerifericos;
    }


    public static void LevantarTuCatalogo(int clas2, int clas3, List<int> opciones)
    {
        int clas1 = int.MinValue;
        foreach(int opcion in opciones)
        {
            if(opcion > clas1)
            {
                clas1 = opcion;
            }
        }
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Producto WHERE Clasificacion1 = @clasi1 AND Clasificacion2 = @clasi2 AND Clasificacion3 = @clasi3";
            ListaTuCatalogo = db.Query<Producto>(sql, new{clasi1 = clas1, clasi2 = clas2, clasi3 = clas3}).ToList();
        }
    }

    public static Usuario LevantarUsuarioPorMail(string email)
    {
        Usuario user;
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Usuario WHERE Email = @pemail";
            user = db.QueryFirstOrDefault<Usuario>(sql, new {pemail = email});
        }
        return user;
    }

    public static void IngresarUsuario(string nombre, string apellido, string email, int tel, string contrasena)
    {
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "INSERT INTO Usuario(Nombre, Apellido, Email, Contrasena, Telefono) VALUES (@pNombre, @pApellido, @pEmail, @pContrasena, @pTelefono)";
            db.Execute(sql, new{pNombre = nombre, pApellido = apellido, pEmail = email, pContrasena = contrasena, pTelefono = tel});
        }
    }

    public static List<Usuario>  LevantarUsuarios()
    {
        List<Usuario> ListaUsers;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Usuario";
            ListaUsers = db.Query<Usuario>(sql).ToList();
        }
        return ListaUsers;
    }

    public static void IngresarReseña(int IdProducto, int Puntuacion, string Contenido, int IdUsuario)
    {
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "INSERT INTO Reseñas(IdProducto, Puntuacion, Contenido, IdUsuario) VALUES (@pIdProducto, @pPuntuacion, @pContenido, @pIdUsuario)";
            db.Execute(sql, new{pIdProducto = IdProducto, pPuntuacion = Puntuacion, pContenido = Contenido, pIdUsuario = IdUsuario});
        }
    }


    public static List<Preguntas_Motivo> LevantarPreguntasUsuario(int IdUsuario)
    {
        
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT PU.Contenido, MP.NombreMotivo FROM Preguntas_Usuario AS PU INNER JOIN  PreguntasDelUsuario AS PDL on PU.IdPregunta = PDL.IdPregunta INNER JOIN Motivo_Pregunta AS MP ON PDL.IdMotivo = MP.IdMotivo INNER JOIN Usuario AS U ON PDL.IdUsuario  = U.IdUsuario WHERE U.IdUsuario = @pIdUsuario;";
            ListaPreguntas = db.Query<Preguntas_Motivo>(sql, new {pIdUsuario = IdUsuario}).ToList();
        }
        return ListaPreguntas;
    }


    public static int ObtenerIdMotivoPorNombre(string NombreMotivo)
    {
        int IdMotivo = 0;  // Valor predeterminado en caso de no encontrar coincidencias
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT IdMotivo FROM Motivo_Pregunta WHERE NombreMotivo = @pNombreMotivo";
            // Usar QueryFirstOrDefault para obtener un valor directamente, accediendo al campo de forma explícita
            var result = db.QueryFirstOrDefault(sql, new { pNombreMotivo = NombreMotivo });
            
            // Verificar si se encontró el resultado y luego convertirlo a int
            if (result != null)
            {
                IdMotivo = result.IdMotivo;  // Acceder al campo IdMotivo directamente
            }
        }
        return IdMotivo;  // Devolver el valor de IdMotivo
    }

    public static void InsertarPregunta(string Contenido, int IdMotivo, int IdUsuario)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "INSERT INTO Preguntas_Usuario (Contenido) OUTPUT INSERTED.IdPregunta VALUES (@pContenido)";
            int IdPregunta = db.ExecuteScalar<int>(sql, new { pContenido = Contenido });

            string sql2 = "INSERT INTO PreguntasDelUsuario (IdPregunta, IdMotivo, IdUsuario) VALUES (@pIdPregunta, @pIdMotivo, @pIdUsuario)";
            db.Execute(sql2, new{pIdPregunta = IdPregunta, pIdMotivo = IdMotivo, pIdUsuario = IdUsuario});
        }
    }

    public static List<Motivo> LevantarMotivos()
    {
        List<Motivo> ListaMotivos = new List<Motivo>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Motivo_Pregunta";
            ListaMotivos = db.Query<Motivo>(sql).ToList();
        }
        return ListaMotivos;
    }

    public static void InsertarDomicilio(string nombreDom, string NombreCalle, int alturaCalle, string codigoPostal, string provincia, int IdUsuario)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "INSERT INTO DomiciliosUsuarios (nombreDom, NombreCalle, alturaCalle, codigoPostal, provincia, IdUsuario) VALUES (@pnombreDom, @pNombreCalle, @palturaCalle, @pcodigoPostal, @pprovincia, @pIdUsuario)";
            db.Execute(sql, new{pnombreDom = nombreDom, pNombreCalle = NombreCalle, palturaCalle = alturaCalle, pcodigoPostal = codigoPostal, pprovincia = provincia, pIdUsuario = IdUsuario});
        }
    }

    public static List<DomiciliosUsuarios> LevantarDomicilios(int IdUsuario)
    {
        List<DomiciliosUsuarios> ListaDoms = new List<DomiciliosUsuarios>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM DomiciliosUsuarios WHERE IdUsuario = @pIdUsuario";
            ListaDoms = db.Query<DomiciliosUsuarios>(sql, new{pIdUsuario = IdUsuario}).ToList();
        }
        return ListaDoms;
    }

    public static List<Seccion> LevantarSeccionesProd(int IdUsuario)
    {
        List<Seccion> ListaSeccion = new List<Seccion>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Seccion WHERE IdUsuario = @pIdUsuario";
            ListaSeccion = db.Query<Seccion>(sql, new{pIdUsuario = IdUsuario}).ToList();
        }
        return ListaSeccion;
    }
    
    public static List<Atributo> LevantarAtributoProd(int IdSeccion)
    {
        List<Atributo> ListaAtributo = new List<Atributo>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Atributo WHERE IdSeccion = @pIdSeccion";
            ListaAtributo = db.Query<Atributo>(sql, new{pIdSeccion = IdSeccion}).ToList();
        }
        return ListaAtributo;
    }
   
}

