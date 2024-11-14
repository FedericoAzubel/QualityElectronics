using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using QualityElectronics.Models;

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
        return View();
    }

    public IActionResult Filtros2(List<int> opcion)
    {
        ViewBag.opcion = opcion;
        return View();
    }

    public IActionResult Filtros3(List<int> opcion, int clas2)
    {
        ViewBag.opcion = opcion;
        ViewBag.clas2 = clas2;
        return RedirectToAction("TuCatalogo","Home");
    }
    
    public IActionResult TuCatalogo(List<int> opciones, int clas2, int clas3)
    {
        BD.LevantarTuCatalogo(clas2, clas3, opciones);
        ViewBag.ListaTuCatalogo = BD.ListaTuCatalogo;
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

    public IActionResult Producto()
    {
        return View();
    }
}
