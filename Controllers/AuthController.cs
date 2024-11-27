using System.Diagnostics;
using System.Text;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using QualityElectronics.services;

namespace test_session.Controllers;

public class AuthController : Controller
{
    private readonly ILogger<AuthController> _logger;
    private readonly GlobalVariableService _globalVariableService;

    public AuthController(ILogger<AuthController> logger, GlobalVariableService nombreUsuario)
    {
        _logger = logger;
        _globalVariableService = nombreUsuario;

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
            ViewBag.Error = "No hay una cuenta asociada al mail ingresado";
            return RedirectToAction("Login");
        }
        else if (user.Email == email && user.Contrasena == password)
        {
            HttpContext.Session.SetString("user", user.ToString());
            return RedirectToAction("Index", "Home");
        }
        else
        {
            ViewBag.Error = "Email o contraseña incorrectos.";
            return View("Login");
        }
    }

    public IActionResult Logout()
    {
        HttpContext.Session.Remove("user");
        _globalVariableService.nombreUsuario = "Inicie sesión";
        return RedirectToAction("Login");
    }

    public IActionResult SignUp()
    {
        return View();
    }

    public IActionResult VerificarSignUp(string nombre, string apellido, string email, int tel, string contrasena, string rep_contra)
    {
        List<Usuario> ListaUsers = BD.LevantarUsuarios();
        bool validarMail = false, validarTel = false;
        int contador = 0;
        while(contador < ListaUsers.Count() && validarMail != true && validarTel != true)
        {
            Usuario user = ListaUsers[contador];
            if(email == user.Email)
            {
                validarMail = true;
            }
            else if(tel == user.Telefono)
            {
                validarTel = true;
            }
            contador++;
        }
        if(validarMail == true)
        {
            ViewBag.Error = "El email ingresado ya esta en uso";
            return View("SignUp");
        }
        else if(validarTel == true)
        {
            ViewBag.Error = "El teléfono ingresado ya esta en uso";
            return View("SignUp");
        }
        else if(tel > 9999999999)
        {
            ViewBag.Error = "El número de telefono es inválido, ingreselo nuevamente";
            return View("SignUp");
        }
        else if(contrasena != rep_contra)
        {
            ViewBag.Error = "Las contraseñas deben coincidir, ingreselas nuevamente";
            return View("SignUp");
        }
        else
        {
            BD.IngresarUsuario(nombre, apellido, email, tel, contrasena);
            return View("Login");
        }
    }

}
