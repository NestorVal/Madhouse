<%-- 
    Document   : registro
    Created on : 18/03/2026, 9:40:07 p. m.
    Author     : Familia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrarse - Madhouse</title>
</head>
<body>
    <header>
        <h1>MADHOUSE</h1>
        <nav>
            <ul>
                <li><a href="index.html">Inicio</a></li>
                <li><a href="">Productos y Servicios</a></li>
                <li><a href="">Barberos</a></li>
                <li><a href="">Sobre Nosotros</a></li>
            </ul>
        </nav>
        <div class="boton">
            <button id="boton-inicio-sesion">Iniciar Sesion</button>
            <button id="boton-registrarse">Registrarse</button>
        </div>
    </header>
    <div class="container-register">
        <div id="seccion-registro" class="caja-formulario">
            <section class="texto">
                <h2>Registrarse</h2>
                <p>Unete a la experiencia Madhouse</p>
            </section>
            <div class="campos-formulario">
                <form action="UsuarioServlet" method="POST">
                    <label for="nombre-reg">Nombre</label>
                    <input type="text" name="txtNombre" id="nombre-reg" placeholder="Nombre" required>
                    
                    <label for="apellido-reg">Apellido</label>
                    <input type="text" name="txtApellido" id="apellido-reg" placeholder="Apellido" required>

                    <label for="correo-reg">Correo Electronico</label>
                    <input type="email" name="txtCorreo" id="correo-reg" placeholder="tucorreo@email.com" required>

                    <label for="tel-reg">Telefono</label>
                    <input type="text" name="txtTelefono" id="tel-reg" placeholder="Numero de celular" required>

                    <label for="dir-reg">Direccion</label>
                    <input type="text" name="txtDireccion" id="dir-reg" placeholder="Direccion">
                    
                    <label for="fn-reg">Fecha de nacimiento</label>
                    <input type="date" name="txtFNacimiento" id="fn-reg" min="1900-01-01" max="2020-12-31">

                    <label for="pass-reg">Contraseña</label>
                    <input type="password" name="txtPass" id="pass-reg" placeholder="Crea una contraseña" required>
                    
                    <div class="boton">
                        <button type="submit" id="boton-reservar" class="btn-formulario">Crear Cuenta</button>
                    </div>
                </form>
            </div>
            <p class="cambio-form">¿Ya tienes cuenta? <a href="#" id="ir-a-login">Inicia sesion aqui</a></p>
        </div>
    </div>
    <script src="js/main.js"></script>
</body>
<footer>
    <div>
        <div id="footer-container">
            <div>
                <h3>Madhouse</h3>       
                <p id="lema">Estilo, calidad y profesionalismo en cada servicio</p>
                <div id="ubicacion">
                    <svg width="40px" height="40px" viewBox="-3.2 -3.2 38.40 38.40" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:sketch="http://www.bohemiancoding.com/sketch/ns" fill="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <title>location</title> <desc>Created with Sketch Beta.</desc> <defs> </defs> <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" sketch:type="MSPage"> <g id="Icon-Set" sketch:type="MSLayerGroup" transform="translate(-104.000000, -411.000000)" fill="#c69c3b"> <path d="M116,426 C114.343,426 113,424.657 113,423 C113,421.343 114.343,420 116,420 C117.657,420 119,421.343 119,423 C119,424.657 117.657,426 116,426 L116,426 Z M116,418 C113.239,418 111,420.238 111,423 C111,425.762 113.239,428 116,428 C118.761,428 121,425.762 121,423 C121,420.238 118.761,418 116,418 L116,418 Z M116,440 C114.337,440.009 106,427.181 106,423 C106,417.478 110.477,413 116,413 C121.523,413 126,417.478 126,423 C126,427.125 117.637,440.009 116,440 L116,440 Z M116,411 C109.373,411 104,416.373 104,423 C104,428.018 114.005,443.011 116,443 C117.964,443.011 128,427.95 128,423 C128,416.373 122.627,411 116,411 L116,411 Z" id="location" sketch:type="MSShapeGroup"> </path> </g> </g> </g></svg>
                    <p>Av. Principal 123 Centro, Ciudad Bogota</p>
                </div>    
                <a href="https://www.google.com/maps/@4.5180626,-74.1122502,15z?entry=ttu&g_ep=EgoyMDI2MDIxNi4wIKXMDSoASAFQAw%3D%3D">Ver en el mapa -></a>
            </div>
            <div>
                <h3>Horiarios</h3>
                <div id="horarios">
                    <svg width="50px" height="50px" viewBox="-2.4 -2.4 28.80 28.80" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M12 7V12H15M21 12C21 16.9706 16.9706 21 12 21C7.02944 21 3 16.9706 3 12C3 7.02944 7.02944 3 12 3C16.9706 3 21 7.02944 21 12Z" stroke="#C69C3B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>
                    <div>
                        <p>Lunes a Viernes: 9:00 AM - 8:00 PM</p>
                        <p>Sábado: 10:00 AM - 6:00 PM</p>
                        <p>Domingo: Cerrado</p>
                    </div>
                </div>
            </div>
            <div>
                <h3>Contactanos</h3>
                <div id="contacto">
                    <div id="telefono">
                        <svg width="40px" height="40px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M3 5.5C3 14.0604 9.93959 21 18.5 21C18.8862 21 19.2691 20.9859 19.6483 20.9581C20.0834 20.9262 20.3009 20.9103 20.499 20.7963C20.663 20.7019 20.8185 20.5345 20.9007 20.364C21 20.1582 21 19.9181 21 19.438V16.6207C21 16.2169 21 16.015 20.9335 15.842C20.8749 15.6891 20.7795 15.553 20.6559 15.4456C20.516 15.324 20.3262 15.255 19.9468 15.117L16.74 13.9509C16.2985 13.7904 16.0777 13.7101 15.8683 13.7237C15.6836 13.7357 15.5059 13.7988 15.3549 13.9058C15.1837 14.0271 15.0629 14.2285 14.8212 14.6314L14 16C11.3501 14.7999 9.2019 12.6489 8 10L9.36863 9.17882C9.77145 8.93713 9.97286 8.81628 10.0942 8.64506C10.2012 8.49408 10.2643 8.31637 10.2763 8.1317C10.2899 7.92227 10.2096 7.70153 10.0491 7.26005L8.88299 4.05321C8.745 3.67376 8.67601 3.48403 8.55442 3.3441C8.44701 3.22049 8.31089 3.12515 8.15802 3.06645C7.98496 3 7.78308 3 7.37932 3H4.56201C4.08188 3 3.84181 3 3.63598 3.09925C3.4655 3.18146 3.29814 3.33701 3.2037 3.50103C3.08968 3.69907 3.07375 3.91662 3.04189 4.35173C3.01413 4.73086 3 5.11378 3 5.5Z" stroke="#c69c3b" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>
                        <p>Tel: +57 123-456-7890</p>
                    </div>
                    <div id="email">
                        <svg width="40px" height="40px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M4 18L9 12M20 18L15 12M3 8L10.225 12.8166C10.8665 13.2443 11.1872 13.4582 11.5339 13.5412C11.8403 13.6147 12.1597 13.6147 12.4661 13.5412C12.8128 13.4582 13.1335 13.2443 13.775 12.8166L21 8M6.2 19H17.8C18.9201 19 19.4802 19 19.908 18.782C20.2843 18.5903 20.5903 18.2843 20.782 17.908C21 17.4802 21 16.9201 21 15.8V8.2C21 7.0799 21 6.51984 20.782 6.09202C20.5903 5.71569 20.2843 5.40973 19.908 5.21799C19.4802 5 18.9201 5 17.8 5H6.2C5.0799 5 4.51984 5 4.09202 5.21799C3.71569 5.40973 3.40973 5.71569 3.21799 6.09202C3 6.51984 3 7.07989 3 8.2V15.8C3 16.9201 3 17.4802 3.21799 17.908C3.40973 18.2843 3.71569 18.5903 4.09202 18.782C4.51984 19 5.07989 19 6.2 19Z" stroke="#c69c3b" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>
                        <p>Email: info@madhouse.com</p>
                    </div>
                </div>
            </div>
        </div>
        <div id="copyright">
            <span id="linea"></span>
            <p>Copyright © 2024 Madhouse Barberia. Todos los derechos reservados.</p>       
        </div>
     </div>
</footer>
</html>
