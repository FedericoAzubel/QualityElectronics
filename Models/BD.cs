using System.Data.SqlClient;
using Dapper;

public class BD
{
    public static List<Producto> ListaProductos = new List<Producto>();
    public static List<Producto> ListaNotebooks = new List<Producto>();
    public static List<Producto> ListaPerifericos = new List<Producto>();
    public static List<Producto> ListaTuCatalogo = new List<Producto>();
    private static string _connectionString = @"Server=localhost;DataBase=QualityElectronics;Trusted_Connection=True;";

    /*Este método levanta todos los prodcutos del catálogo*/
    public static List<Producto>  LevantarProductos()
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Productos";
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
}