let contador = parseInt(sessionStorage.getItem("contador")) || 0;  // Aseguramos que es un número

// Guardamos el contador para futuras referencias
sessionStorage.setItem("contador", contador);
console.log(typeof contador)
if (contador < 1) {
    const nombre = document.querySelector(".nombreUsuario").value;
    const apellido = document.querySelector(".apellidoUsuario").value;
    
    // Asegurarse de que los campos tienen valores antes de almacenarlos
    if (nombre && apellido) {
        localStorage.setItem("nombre", nombre);
        localStorage.setItem("apellido", apellido);
        contador++;
        sessionStorage.setItem("contador", contador);  // Actualizamos el contador después de incrementar
    }
}
else
{
    const cerrarSesion = document.querySelector(".usuarioOpcion2");
    cerrarSesion.classList = "dropdown-item usuarioOpcion2";
}

const layout = document.querySelector(".nombre_usuario");
const recuperado = {
    nombre: localStorage.getItem("nombre"),
    apellido: localStorage.getItem("apellido")
};

// Mostramos los datos en el DOM
if (layout && recuperado.nombre && recuperado.apellido) {
    layout.innerHTML = recuperado.nombre + " " + recuperado.apellido;
}

/*if (nombre == null && apellido == null){
    localStorage.removeItem("nombre")
    localStorage.removeItem("apellido")
    contador--;
}*/

const LogOut = () => {
    contador--;
    localStorage.removeItem("nombre")
    localStorage.removeItem("apellido")
    sessionStorage.setItem("contador", contador);
}