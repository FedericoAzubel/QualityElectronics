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
        List<Motivo> ListaMotivos = BD.LevantarMotivos();
        ViewBag.ListaMotivos = ListaMotivos;
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
        var userJson = HttpContext.Session.GetString("user");
        var usuario  = Usuario.FromString(userJson);
        int IdUsuario = usuario.IdUsuario;
        List<FormatoPago> ListaPago = BD.LevantarFormatosPago();
        ViewBag.ListaPago = ListaPago;
        List<DomiciliosUsuarios> ListaDoms = BD.LevantarDomicilios(IdUsuario);
        ViewBag.ListaDoms = ListaDoms;

        return View();
    }

    public IActionResult Producto(string producto)
    {
        Producto deserializedProducto = Newtonsoft.Json.JsonConvert.DeserializeObject<Producto>(producto);
        ViewBag.Producto = deserializedProducto;
        int IdProducto = deserializedProducto.IdProducto;
        List<Seccion> ListaSeccion = BD.LevantarSeccionesProd();
        List<Atributo> ListaAtributo = BD.LevantarAtributoProd(IdProducto);
        ViewBag.ListaSeccion = ListaSeccion;
        ViewBag.ListaAtributo = ListaAtributo;
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
        var userJson = HttpContext.Session.GetString("user");
        var usuario  = Usuario.FromString(userJson);
        int IdUsuario = usuario.IdUsuario;
        List<DomiciliosUsuarios> ListaDoms = BD.LevantarDomicilios(IdUsuario);
        ViewBag.ListaDoms = ListaDoms;
        return View();
    }
    
    //  public IActionResult MisCompras()
    // {
    //     var userJson = HttpContext.Session.GetString("user");
    //     var usuario  = Usuario.FromString(userJson);
    //     int IdUsuario = usuario.IdUsuario;
    //     List<ComprasUsuarios> ListaComps = BD.LevantarCompras(IdUsuario);
    //     ViewBag.ListaCompras = ListaComps;
    //     return View();
    // }

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

    public IActionResult InsertarPreguntaUsuario(string Contenido, string NombreMotivo)
    {
        var userJson = HttpContext.Session.GetString("user");
        var usuario  = Usuario.FromString(userJson);
        int IdUsuario = usuario.IdUsuario;
        int IdMotivo = BD.ObtenerIdMotivoPorNombre(NombreMotivo);
        BD.InsertarPregunta(Contenido, IdMotivo, IdUsuario);
        return RedirectToAction("Ayuda");
    }

    public IActionResult InsertarNuevoDom(string nombreDom, string NombreCalle, int alturaCalle, string codigoPostal, string provincia)
    {
        var userJson = HttpContext.Session.GetString("user");
        var usuario  = Usuario.FromString(userJson);
        int IdUsuario = usuario.IdUsuario;
        BD.InsertarDomicilio(nombreDom, NombreCalle, alturaCalle, codigoPostal, provincia, IdUsuario);
        return RedirectToAction("MisDomicilios");
    }
}
