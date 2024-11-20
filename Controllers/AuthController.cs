using System.Diagnostics;
using System.Text;
using Microsoft.AspNetCore.Mvc;

namespace test_session.Controllers;

public class AuthController : Controller
{
    private readonly ILogger<AuthController> _logger;

    public AuthController(ILogger<AuthController> logger)
    {
        _logger = logger;
    }

    public IActionResult Login()
    {
        if (HttpContext.Session.GetString("user") != null)
        {
            return RedirectToAction("Index", "Home");
        }
        return View();
    }

    [HttpPost]
    public IActionResult VerificarLogin(string email, string password)
    {
        Usuario user = BD.LevantarUsuarioPorMail(email);
        if (email == "fede@gmail.com"/*user.Email*/ && password == "12345"/*user.Contraseña*/)
        {
            HttpContext.Session.SetString("user", new Usuario(email, password).ToString());
            return RedirectToAction("Index", "Home");
        }
        else
        {
            ViewBag.Bool = false;
            ViewBag.Error = "Email o contraseña incorrectos.";
            return View("Login");
        }
    }

    public IActionResult Logout()
    {
        HttpContext.Session.Remove("user");
        return RedirectToAction("Login");
    }

}
