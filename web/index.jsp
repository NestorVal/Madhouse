<%-- 
    Document   : index
    Created on : 18/03/2026, 9:45:43 p. m.
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
    <title>Madhouse</title>
</head>
<header>
    <h1>MADHOUSE</h1>
    <nav>
        <ul>
            <li><a href="http://">Productos y Servicios</a></li>
            <li><a href="">Barberos</a></li>
            <li><a href="">Sobre Nosotros</a></li>
            <a href="http://" target="_blank" rel="noopener noreferrer"></a>
        </ul>
    </nav>
    <div class=" boton">
        <button href="login.jsp" id="boton-inicio-sesion">Iniciar Sesion</button>
        <button href="register.jsp" id="boton-registrarse">Registrarse</button>
    </div>
</header>
<body>
    <div class="container">
        <div class="columna1">
            <section class="texto">
                <h2>Estilo y Elegancia en Cada Corte</h2>
                <p>Descubre la experiencia unica de Madhous Barberia.
                Donde la tradicion se encuentra con el estilo moderno</p>
            </section>
            <section class="item">
                <div id="cortes">
                    <span id="item-cortes"><svg width="64px" height="64px" viewBox="-2.55 -2.55 22.10 22.10" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" class="si-glyph si-glyph-scissor" fill="#000000" transform="rotate(-45)" stroke="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0" transform="translate(0,0), scale(1)"><rect x="-2.55" y="-2.55" width="22.10" height="22.10" rx="11.05" fill="#c69c3b" strokewidth="0"></rect></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <title>130</title> <defs> </defs> <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"> <path d="M15.958,4.146 C15.958,4.146 14.627,3.336 14.424,3.436 L8.123,7.295 L5.969,5.437 C6.04,4.497 5.254,3.385 3.936,2.705 C3.289,2.369 2.586,2.184 1.958,2.184 C1.122,2.184 0.479,2.506 0.196,3.067 C-0.319,4.083 0.517,5.517 2.095,6.335 C2.742,6.67 3.445,6.855 4.074,6.855 C4.543,6.855 4.94,6.744 5.259,6.557 L6.838,8.084 L5.315,9.563 C4.991,9.353 4.577,9.228 4.081,9.228 C3.452,9.228 2.753,9.412 2.106,9.749 C0.547,10.561 -0.267,11.981 0.254,12.983 C0.539,13.529 1.176,13.844 2,13.844 C2.628,13.844 3.329,13.658 3.975,13.321 C5.23,12.667 5.989,11.622 5.969,10.716 L8.123,8.872 L14.424,12.732 C14.627,12.831 15.958,12.021 15.958,12.021 L9.43,8.084 L15.958,4.146 L15.958,4.146 Z M4.871,5.481 C4.796,5.631 4.644,5.737 4.453,5.806 C3.969,5.983 3.198,5.906 2.502,5.546 C1.493,5.024 0.878,4.111 1.159,3.553 C1.3,3.276 1.656,3.116 2.138,3.116 C2.574,3.116 3.067,3.249 3.53,3.488 C4.253,3.861 4.766,4.435 4.899,4.938 C4.951,5.136 4.95,5.323 4.871,5.481 L4.871,5.481 Z M3.575,12.57 C2.593,13.081 1.443,13.044 1.166,12.513 C0.873,11.951 1.486,11.027 2.506,10.496 C2.975,10.252 3.479,10.117 3.924,10.117 C4.155,10.117 4.358,10.155 4.522,10.224 C4.702,10.298 4.838,10.409 4.913,10.552 C5.01,10.739 5,10.966 4.916,11.203 C4.746,11.687 4.254,12.215 3.575,12.57 L3.575,12.57 Z" fill="#ffffff" class="si-glyph-fill"> </path> </g> </g></svg></span>
                    <p>Cortes</p>
                    <p><strong>Premium</strong></p>
                </div>
                <div id="barberos">
                    <span id="item-barberos"><svg width="64px" height="64px" viewBox="-2.4 -2.4 28.80 28.80" fill="none" xmlns="http://www.w3.org/2000/svg" stroke="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0"><rect x="-2.4" y="-2.4" width="28.80" height="28.80" rx="14.4" fill="#C69C3B" strokewidth="0"></rect></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <circle cx="12" cy="9" r="7" stroke="#ffffff" stroke-width="1.5"></circle> <path opacity="0.5" d="M7.35111 15L6.71424 17.323C6.0859 19.6148 5.77173 20.7607 6.19097 21.3881C6.3379 21.6079 6.535 21.7844 6.76372 21.9008C7.41635 22.2331 8.42401 21.7081 10.4393 20.658C11.1099 20.3086 11.4452 20.1339 11.8014 20.0959C11.9335 20.0818 12.0665 20.0818 12.1986 20.0959C12.5548 20.1339 12.8901 20.3086 13.5607 20.658C15.576 21.7081 16.5837 22.2331 17.2363 21.9008C17.465 21.7844 17.6621 21.6079 17.809 21.3881C18.2283 20.7607 17.9141 19.6148 17.2858 17.323L16.6489 15" stroke="#ffffff" stroke-width="1.5" stroke-linecap="round"></path> </g></svg></span>
                    <p>Barberos</p>
                    <p><strong>Expertos</strong></p>
                </div>
                <div id="atencion">
                    <span id="item-atencion"><svg width="64px" height="64px" viewBox="-2.4 -2.4 28.80 28.80" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"><rect x="-2.4" y="-2.4" width="28.80" height="28.80" rx="14.4" fill="#C69C3B" strokewidth="0"></rect></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M12 7V12H15M21 12C21 16.9706 16.9706 21 12 21C7.02944 21 3 16.9706 3 12C3 7.02944 7.02944 3 12 3C16.9706 3 21 7.02944 21 12Z" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg></span>
                    <p>Atencion</p>
                    <p><strong>7 dias</strong></p>
                </div>
            </section>
            <div class="boton" >
                <button id="boton-reservar">Reserva tu cita ahora</button>
            </div>
        </div>
        <div class="columna2">
            <img src="img/barberia.png" alt="Imagen de la barbería">
        </div>
    </div>
    <div class="container">
        <div class="columna1">
            <img src="img/barberia2.png" alt="Imagen de la barbería">
        </div>
        <div class="columna2">
            <section class="texto">
                <h2>Bienvenido a Madhouse Barberia</h2>
                <p>En Madhouse Barberia, nos enorgullece ofrecer una experiencia de cuidado personal excepcional. Nuestro equipo de barberos expertos está dedicado a brindarte cortes de cabello y afeitados de alta calidad, utilizando técnicas modernas y productos premium. Ya sea que busques un estilo clásico o algo más contemporáneo, estamos aquí para ayudarte a lucir y sentirte lo mejor posible. Ven y descubre por qué somos la elección número uno para el cuidado masculino en la ciudad.</p>
                <div class="tarjetas">
                    <div class="tarjetas-superior">
                        <div class="tarjeta">
                            <svg width="64px" height="64px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round" stroke="#CCCCCC" stroke-width="0.72"></g><g id="SVGRepo_iconCarrier"> <g id="Interface / Line_Xl"> <path id="Vector" d="M12 21V3" stroke="#C69C3B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g> </g></svg>
                            <h3>10+</h3>
                            <p>Años de experiencia</p>
                        </div>
                        <div class="tarjeta">
                            <svg width="64px" height="64px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round" stroke="#CCCCCC" stroke-width="0.72"></g><g id="SVGRepo_iconCarrier"> <g id="Interface / Line_Xl"> <path id="Vector" d="M12 21V3" stroke="#C69C3B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g> </g></svg>
                            <h3>5000+</h3>
                            <p>Clientes satisfechos</p>
                        </div>
                    </div>
                    <div class="tarjetas-inferior">
                        <div class="tarjeta">
                            <svg width="64px" height="64px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round" stroke="#CCCCCC" stroke-width="0.72"></g><g id="SVGRepo_iconCarrier"> <g id="Interface / Line_Xl"> <path id="Vector" d="M12 21V3" stroke="#C69C3B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g> </g></svg>
                            <h3>15+</h3>
                            <p>Barberos expertos</p>
                        </div>
                        <div class="tarjeta">
                            <svg width="64px" height="64px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round" stroke="#CCCCCC" stroke-width="0.72"></g><g id="SVGRepo_iconCarrier"> <g id="Interface / Line_Xl"> <path id="Vector" d="M12 21V3" stroke="#C69C3B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g> </g></svg>
                            <h3>100%</h3>
                            <p>Calidad garantizada</p>
                        </div>
                    </div>
                </div>
            </section>
        </div>        
    </div>
    <div class="container1">
        <div class="columna1">
            <svg width="64px" height="64px" viewBox="-2.4 -2.4 28.80 28.80" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"><rect x="-2.4" y="-2.4" width="28.80" height="28.80" rx="14.4" fill="#c69c3b" strokewidth="0"></rect></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M3 10H21M7 3V5M17 3V5M6.2 21H17.8C18.9201 21 19.4802 21 19.908 20.782C20.2843 20.5903 20.5903 20.2843 20.782 19.908C21 19.4802 21 18.9201 21 17.8V8.2C21 7.07989 21 6.51984 20.782 6.09202C20.5903 5.71569 20.2843 5.40973 19.908 5.21799C19.4802 5 18.9201 5 17.8 5H6.2C5.0799 5 4.51984 5 4.09202 5.21799C3.71569 5.40973 3.40973 5.71569 3.21799 6.09202C3 6.51984 3 7.07989 3 8.2V17.8C3 18.9201 3 19.4802 3.21799 19.908C3.40973 20.2843 3.71569 20.5903 4.09202 20.782C4.51984 21 5.07989 21 6.2 21Z" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>
            <section class="texto">
                <h2>Reserva tu cita ahora!!</h2>
                <p>No esperes más. Agenda tu proxima visita y disfruta de una experiencia de barberia inigualable</p>
            </section>
            <section class="boton">
                <button id="boton-reservar">Reservar ahora</button>
                <button id="boton-horarios">Ver horarios</button>
            </section>
        </div>
    </div>
    <div class="container2">
        <section class="texto">
            <h2>Servicios Destacados</h2>
            <p>Ofrecemos una amplia gama de servicios diseñados para que te veas y sientas mejor que nunca</p>
        </section>
        <section class="tarjetas-servicios">
            <div class="tarjeta-servicio">
                <img src="img/corte-cabello.png" alt="Corte de cabello">
                <h3>Corte de cabello</h3>
                <p>Cortes modernos y clásicos adaptados a tu estilo personal. Nuestros barberos expertos te asesorarán para encontrar el look perfecto.</p>
                <section class="boton">
                    <button id="boton-corte">Reservar ahora</button>
                </section>
            </div>
            <div class="tarjeta-servicio">
                <img src="img/arreglo-barba.png" alt="Arreglo de barba">
                <h3>Arreglo de barba</h3>
                <p>Perfilado, recorte y cuidado profesional de barba. Incluye productos premium para un acabado impecable.</p>
                <section class="boton">
                    <button id="boton-barba">Reservar ahora</button>
                </section>
            </div>
            <div class="tarjeta-servicio">
                <img src="img/tratamientos.png" alt="Tratamientos">
                <h3>Tratamientos</h3>
                <p>Tratamientos capilares especializados, mascarillas y cuidados específicos para mantener tu cabello saludable.</p>
                <section class="boton">
                    <button id="boton-tratamientos">Reservar ahora</button>
                </section>
            </div>
        </section>
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
<script src="js/main.js"></script>
</html>
