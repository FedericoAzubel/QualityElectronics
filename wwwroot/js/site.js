// Please see documentation at https://learn.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.
// Detectamos el scroll y ajustamos la opacidad
window.addEventListener('scroll', function() {
    var scrollPosition = window.scrollY; // Obtener la posición de desplazamiento
    var navContainer = document.querySelector('.nav_container2');

    // La opacidad se reduce en función de la posición del scroll
    var opacityValue = 1 - (scrollPosition / 500);  // Ajusta "500" para cambiar la velocidad del desvanecimiento

    // Asegúrate de que la opacidad no sea negativa
    if (opacityValue < 0) {
        opacityValue = 0;
    }

    // Aplicamos la opacidad calculada
    navContainer.style.opacity = opacityValue;
});
