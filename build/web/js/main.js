//LOGICA DE LA PAGINA DE INICIO

document.addEventListener('DOMContentLoaded', function() {
    const btnIniciarSesion = document.getElementById('boton-inicio-sesion');
    btnIniciarSesion.addEventListener('click', function() {
        window.location.href = 'login.html';
    });
    const btnRegistrarse = document.getElementById('boton-registrarse');  
    btnRegistrarse.addEventListener('click', function() {
        window.location.href = 'register.html';
    });
    const btnReservar = document.getElementById('boton-reservar');
    if (btnReservar) {
        btnReservar.addEventListener('click', function() {
            window.location.href = 'reservar-cita.html';
        });
    };
});

// LÓGICA DE NAVEGACIÓN DEL DASHBOARD

document.addEventListener('DOMContentLoaded', function() {
    const botonesMenu = document.querySelectorAll('.btn-menu');
    botonesMenu.forEach(boton => {
        boton.addEventListener('click', function() {
            botonesMenu.forEach(b => b.classList.remove('activo'));
            this.classList.add('activo');
        });
    });

    const btnPerfil = document.querySelectorAll('.btn-perfil');
    btnPerfil.forEach(btn => {
        btn.addEventListener('click', () => {
            window.location.href = 'perfil-cliente.html';
        });
    });

    const btnReservas = document.querySelectorAll('.btn-reservas');
    btnReservas.forEach(btn => {
        btn.addEventListener('click', () => {
            window.location.href = 'reservas-cliente.html';
        });
    });

    const btnFidelizacion = document.querySelectorAll('.btn-fidelizacion');
    btnFidelizacion.forEach(btn => {
        btn.addEventListener('click', () => {
            window.location.href = 'fidelizacion.html';
        });
    });

    const btnEditarPerfil = document.querySelectorAll('.btn-editar-perfil');
    btnEditarPerfil.forEach(btn => {
        btn.addEventListener('click', () => {
            window.location.href = 'editar-perfil.html';
        });
    });
});
// UNCIONALIDADES DE PERFIL DE USUARIO

document.addEventListener('DOMContentLoaded', () => {
    
    const btnEditar = document.getElementById('btn-editar-perfil');
    const btnPass = document.getElementById('btn-cambiar-pass');

    btnEditar.addEventListener('click', () => {
        alert("Abriendo modal de edición...");
        
    });

    btnPass.addEventListener('click', () => {
        alert("Redirigiendo a cambio de contraseña...");
    });

    const badgePhoto = document.querySelector('.badge-edit');
    badgePhoto.addEventListener('click', () => {
        alert("Cargar nueva imagen");
    });
});
document.addEventListener('DOMContentLoaded', function() {
    
    // LÓGICA DE NAVEGACIÓN DE PASOS DE RESERVA
    const paso1 = document.getElementById('paso-1');
    const paso2 = document.getElementById('paso-2');
    const paso3 = document.getElementById('paso-3');
    const paso4 = document.getElementById('paso-4');
    const paso5 = document.getElementById('paso-5');

    // Botones Siguiente
    const btnSig1 = document.getElementById('btn-sig-1');
    const btnSig2 = document.getElementById('btn-sig-2');
    const btnSig3 = document.getElementById('btn-sig-3');
    const btnSig4 = document.getElementById('btn-sig-4');
    const btnSig5 = document.getElementById('btn-sig-5');

    // Botones Atrás
    const btnAtras2 = document.getElementById('btn-atras-2');
    const btnAtras3 = document.getElementById('btn-atras-3');
    const btnAtras4 = document.getElementById('btn-atras-4');
    const btnAtras5 = document.getElementById('btn-atras-5');

    if (btnSig1) {
        // Avanzar
        btnSig1.addEventListener('click', () => { paso1.style.display = 'none'; paso2.style.display = 'block'; });
        btnSig2.addEventListener('click', () => { paso2.style.display = 'none'; paso3.style.display = 'block'; });
        btnSig3.addEventListener('click', () => { paso3.style.display = 'none'; paso4.style.display = 'block'; });
        btnSig4.addEventListener('click', () => { paso4.style.display = 'none'; paso5.style.display = 'block'; });

        // Retroceder
        btnAtras2.addEventListener('click', () => { paso2.style.display = 'none'; paso1.style.display = 'block'; });
        btnAtras3.addEventListener('click', () => { paso3.style.display = 'none'; paso2.style.display = 'block'; });
        btnAtras4.addEventListener('click', () => { paso4.style.display = 'none'; paso3.style.display = 'block'; });
        btnAtras5.addEventListener('click', () => { paso5.style.display = 'none'; paso4.style.display = 'block'; });
    }

    // ÓGICA PARA SELECCIONAR TARJETAS 
    const tarjetasSeleccionables = document.querySelectorAll('.seleccionable');

    tarjetasSeleccionables.forEach(tarjeta => {
        tarjeta.addEventListener('click', function() {
            const hermanos = this.parentElement.querySelectorAll('.seleccionable');
            hermanos.forEach(h => h.classList.remove('activa'));
            this.classList.add('activa');
        });
    });

});