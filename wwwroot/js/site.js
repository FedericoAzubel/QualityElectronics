document.addEventListener("DOMContentLoaded", () => {
    const usuario = document.querySelector(".nombre_usuario");
    const cerrarSesion = document.querySelector(".usuarioOpcion2");
    const iniciarSesion = document.querySelector(".usuarioOpcion0");
    const crearSesion = document.querySelector(".usuarioOpcion1");
    const seccion1 = document.querySelector(".seccion_1");
    const seccion2 = document.querySelector(".seccion_2");

    const actualizarEstadoSesion = () => {
        if (usuario.innerHTML !== "Inicie sesión") {
            // Usuario está iniciado
            cerrarSesion.classList.remove("displayNone");
            iniciarSesion.classList.add("displayNone");
            crearSesion.classList.add("displayNone");
        } else {
            // Usuario no está iniciado
            cerrarSesion.classList.add("displayNone");
            iniciarSesion.classList.remove("displayNone");
            crearSesion.classList.remove("displayNone");
            seccion1.classList.add("displayNone");
            seccion2.classList.remove("displayNone");
        }
    };

    // Actualizar el estado de las clases según el contenido
    actualizarEstadoSesion();
});

// Declarar LogOut como función global
function LogOut() {
    localStorage.removeItem("nombre");
    localStorage.removeItem("apellido");
    const contador = sessionStorage.getItem("contador") || 0; // Asegúrate de que contador esté definido
    sessionStorage.setItem("contador", contador);
}