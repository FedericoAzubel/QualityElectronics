using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using QualityElectronics.Models;
using System.Text;
using Newtonsoft.Json;
using QualityElectronics.services;


namespace QualityElectronics.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;
    private readonly GlobalVariableService _globalVariableService;
    public HomeController(ILogger<HomeController> logger, GlobalVariableService nombreUsuario)
    {
        _logger = logger;
        _globalVariableService = nombreUsuario;
    }

    public IActionResult Index()
    {
        var userJson = HttpContext.Session.GetString("user");
        var usuario  = Usuario.FromString(userJson);
        if(usuario != null){
            _globalVariableService.nombreUsuario = $"{usuario.Nombre} {usuario.Apellido}";
        }
        return View();
    }
    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }

    public IActionResult CatalogoDeProductos()
    {
       return View();
    }

    public IActionResult Catalogo()
    {
        ViewBag.Nombre = "Catálogo";
        List<Producto> ListaProductos = BD.LevantarProductos();
        ViewBag.ListaProductos = ListaProductos;
        return View("CatalogoDeProductos");
    }

    public IActionResult Notebooks()
    {
        ViewBag.Nombre = "Notebooks";
        List<Producto> ListaProductos = BD.LevantarNotebooks();
        ViewBag.ListaProductos = ListaProductos;
        return View("CatalogoDeProductos");
    }

    public IActionResult Perifericos()
    {
        ViewBag.Nombre = "Periféricos";
        List<Producto> ListaProductos = BD.LevantarPerifericos();
        ViewBag.ListaProductos = ListaProductos;
        return View("CatalogoDeProductos");
    }
    
    public IActionResult TuCatalogo(int clas3)
    {
        string opcionString = HttpContext.Session.GetString("ListaOpcion");
        List<int> opcion = JsonConvert.DeserializeObject<List<int>>(opcionString);

        string clas2String = HttpContext.Session.GetString("class2");
        int clas2 = int.Parse(clas2String); // Convierte el string a int

        BD.LevantarTuCatalogo(clas2, clas3, opcion);

        ViewBag.Nombre = "Tu Catálogo";
        ViewBag.ListaProductos = BD.ListaTuCatalogo;
        return View("CatalogoDeProductos");
    }

    
    public IActionResult Filtros1()
    {
        HttpContext.Session.Remove("ListaOpcion");
        HttpContext.Session.Remove("class2");
        return View();
    }

    [HttpPost]
    public IActionResult Filtros2(List<int> opcion)
    {
        HttpContext.Session.SetString("ListaOpcion", JsonConvert.SerializeObject(opcion));
        return View();
    }

    [HttpPost]
    public IActionResult Filtros3(int clas2)
    {
        HttpContext.Session.SetString("class2", clas2.ToString());
        return View();
    }
    public IActionResult Ayuda()
    {
        return View();
    }

    public IActionResult MiCuenta()
    {
        return View();
    }

    public IActionResult Registrarse()
    {
        return View();
    }

    public IActionResult InicioSesion()
    {
        return View();
    }

    public IActionResult Carrito()
    {
        return View();
    }

    public IActionResult Producto(Producto producto)
    {
        HttpContext.Session.Remove("ObjetoProducto");
        HttpContext.Session.SetString("ObjetoProducto", JsonConvert.SerializeObject(producto));
        return View();
    }
    
    public IActionResult MisPreguntas()
    {
        var userJson = HttpContext.Session.GetString("user");
        var usuario  = Usuario.FromString(userJson);
        int IdUsuario = usuario.IdUsuario;
        List<Preguntas_Motivo> ListaPreguntas = BD.LevantarPreguntasUsuario(IdUsuario);
        ViewBag.ListaPreguntas = ListaPreguntas;
        return View();
    }
    
    public IActionResult MisDomicilios()
    {
        return View();
    }
    
    public IActionResult EnviarReseña(int Puntuacion, string Contenido)
    {
        var userJson = HttpContext.Session.GetString("user");
        var usuario  = Usuario.FromString(userJson);
        int IdUsuario = usuario.IdUsuario;
        string productoString = HttpContext.Session.GetString("ObjetoProducto");
        Producto producto = JsonConvert.DeserializeObject<Producto>(productoString);
        int IdProducto = producto.IdProducto;
        BD.IngresarReseña(IdProducto, Puntuacion, Contenido, IdUsuario);
        return View();
    }
}
