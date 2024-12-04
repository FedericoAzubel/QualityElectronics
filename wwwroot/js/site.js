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

/*
//ESTRELLAS
const estrellas = document.querySelectorAll('.estrella');
let puntuacion = 0;

// Manejar la selección de estrellas
estrellas.forEach(estrella => {
    estrella.addEventListener('click', () => {
        puntuacion = parseInt(estrella.getAttribute('data-valor'));  // Guardamos el valor como entero
        actualizarEstrellas();
    });

    // Cambiar color de las estrellas al pasar el ratón
    estrella.addEventListener('click', () => {
        for (let i = 0; i < estrellas.length; i++) {
            if (i < parseInt(estrella.getAttribute('data-valor'))) {
                estrellas[i].style.color = 'B771AE';
            } else {
                estrellas[i].style.color = 'B771AE';
            }
        }
    });

    estrella.addEventListener('mouseout', () => {
        actualizarEstrellas();
    });
});

function actualizarEstrellas() {
    estrellas.forEach(estrella => {
        if (parseInt(estrella.getAttribute('data-valor')) <= puntuacion) {
            estrella.classList.add('seleccionada');
        } else {
            estrella.classList.remove('seleccionada');
        }
    });
}

// Enviar la reseña al servidor
const formulario = document.getElementById('formularioReseña');
formulario.addEventListener('submit', function(event) {
    event.preventDefault(); // Evitar que el formulario se envíe de la forma tradicional

    const contenido = document.getElementById('comentarios').value;

    // Crear los datos que se van a enviar al servidor
    const idProducto = 1;  // ID del producto (deberías cambiarlo dinámicamente)
    const idUsuario = 1;   // ID del usuario (deberías cambiarlo dinámicamente)

    // Enviar los datos a través de Fetch API
    fetch('/path/to/ingresarReseña', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            idProducto: idProducto,
            puntuacion: puntuacion,  // Puntuación seleccionada como entero
            contenido: contenido,    // Contenido de la reseña
            idUsuario: idUsuario     // ID del usuario
        })
    })
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            alert('Reseña publicada correctamente');
        } else {
            alert('Hubo un error al publicar la reseña');
        }
    })
    .catch(error => {
        console.error('Error:', error);
        alert('Error al enviar la reseña');
    });
});
*/