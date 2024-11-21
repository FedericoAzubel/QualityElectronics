using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using QualityElectronics.Models;
using System.Text;
using Newtonsoft.Json;


namespace QualityElectronics.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        var userJson = HttpContext.Session.GetString("user");
        var usuario  = Usuario.FromString(userJson);
        ViewBag.nombreUsuario =  usuario.Nombre;
        ViewBag.apellidoUsuario = usuario.Apellido;
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

    public IActionResult Catalogo()
    {
        return View();
    }

    public IActionResult Notebooks()
    {
        return View();
    }

    public IActionResult Perifericos()
    {
        return View();
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
    
    public IActionResult TuCatalogo(int clas3)
    {
        string opcionString = HttpContext.Session.GetString("ListaOpcion");
        List<int> opcion = JsonConvert.DeserializeObject<List<int>>(opcionString);

        string clas2String = HttpContext.Session.GetString("class2");
        int clas2 = int.Parse(clas2String); // Convierte el string a int

        BD.LevantarTuCatalogo(clas2, clas3, opcion);
        ViewBag.ListaTuCatalogo = BD.ListaTuCatalogo;
        return View("Catalogo");
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

    public IActionResult Producto()
    {
        return View();
    }
}
