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
        if(user == null)
        {
                return RedirectToAction("Login");
        }
        else if (user.Email == email && user.Contrasena == password /*user.Contraseña*/)
        {
            HttpContext.Session.SetString("user", user.ToString());
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
