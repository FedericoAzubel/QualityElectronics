document.addEventListener("DOMContentLoaded", () => {
    const usuario = document.querySelector(".nombre_usuario");
    console.log(usuario.innerHTML)
    const cerrarSesion = document.querySelector(".usuarioOpcion2");
    console.log(usuario.value + " caca")

    if (usuario.innerHTML != "Inicie sesión" && cerrarSesion.classList.contains("displayNone")) //Esta iniciado y contiene la clase display none
    {
        cerrarSesion.classList = "dropdown-item usuarioOpcion2";
    }
    else if (usuario.innerHTML == "Inicie sesión" && !cerrarSesion.classList.contains("displayNone")) //No esta iniciado y no contiene la clase display none
    {
        cerrarSesion.classList = "dropdown-item usuarioOpcion2 displayNone";
    }

    const LogOut = () => {
        localStorage.removeItem("nombre")
        localStorage.removeItem("apellido")
        sessionStorage.setItem("contador", contador);
    }


})
