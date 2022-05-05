<?php session_start() ?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="Angel Criado, Adrian Delgado y Sergio Jimenez" />
    <meta name="description" content="Tienda
 MDLR">
    <link rel="icon" type="image/png" href="images/icono.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Document title -->
    <title>MDLR | Home</title>
    <!-- Stylesheets & Fonts -->
    <link href="css/plugins.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
</head>

<body>
    <!-- Body Inner -->
    <div class="body-inner">
        <!-- Header -->
        <header id="header" data-transparent="true" data-fullwidth="true" class="dark submenu-light">
            <div class="header-inner">
                <div class="container">
                    <!--Logo-->
                    <div id="logo">
                        <a href="index.php">
                            <span class="logo-default">MDLR</span>
                            <span class="logo-dark">MDLR</span>
                        </a>
                    </div>
                    <!--End: Logo-->
                    <!--Header Extras-->
                    <div class="header-extras">
                        <ul>
                            <li>
                                <a href="shop-cart.php">
                                    <i class="icon-shopping-cart"></i>
                                </a>
                            </li>
                            <li>
                                <div class="p-dropdown">
                                    <a href="#"><i class="icon-globe"></i><span>ES</span></a>
                                    <ul class="p-dropdown-content">
                                        <li><a href="#">French</a></li>
                                        <li><a href="#">Spanish</a></li>
                                        <li><a href="#">English</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!--end: Header Extras-->
                    <!--Navigation Resposnive Trigger-->
                    <div id="mainMenu-trigger">
                        <a class="lines-button x"><span class="lines"></span></a>
                    </div>
                    <!--end: Navigation Resposnive Trigger-->
                    <!--Navigation-->
                    <div id="mainMenu">
                        <div class="container">
                            <nav>
                                <ul>
                                    <li><a href="index.php">Home</a></li>
                                    <li class="dropdown"><a href="./productos_casablanca.php">Casablanca</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="./productos_casablanca_camisas.php">Camisas</a></li>
                                            <li><a href="./productos_casablanca_camisetas.php">Camisetas</a></li>
                                            <li><a href="./productos_casablanca_pantalones.php">Pantalones</a></li>
                                            <li><a href="./productos_casablanca_sudaderas.php">Sudaderas</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="./productos_gucci.php">Gucci</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="./productos_gucci_camisas.php">Camisas</a></li>
                                            <li><a href="./productos_gucci_camisetas.php">Camisetas</a></li>
                                            <li><a href="./productos_gucci_pantalones.php">Pantalones</a></li>
                                            <li><a href="./productos_gucci_sudaderas.php">Sudaderas</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="./productos_offwhite.php">OFF-WHITE</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="./productos_offwhite_camisas.php">Camisas</a></li>
                                            <li><a href="./productos_offwhite_camisetas.php">Camisetas</a></li>
                                            <li><a href="./productos_offwhite_pantalones.php">Pantalones</a></li>
                                            <li><a href="./productos_offwhite_sudaderas.php">Sudaderas</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="./productos_stussy.php">STUSSY</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="./productos_stussy_camisas.php">Camisas</a></li>
                                            <li><a href="./productos_stussy_camisetas.php">Camisetas</a></li>
                                            <li><a href="./productos_stussy_pantalones.php">Pantalones</a></li>
                                            <li><a href="./productos_stussy_sudaderas.php">Sudaderas</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="aboutUs.php">Sobre Nosotros</a></li>
                                    <?php
                                    if (isset($_SESSION["NombreCliente"])) {
                                        echo ("<li class='dropdown'><a><i class='fa fa-power-off'></i>" . $_SESSION["NombreCliente"]) . "</a>";
                                        echo ("<ul class='dropdown-menu'>");
                                        echo ("<li><a href='profile.php'>Mi Perfil</a></li>");
                                        echo ("<li><a href='borrar.php'>Cerrar Sesion</a></li>");
                                        echo ("</ul>");
                                        echo ("</li>");
                                    } else {
                                        echo ("<li>");
                                        echo ("<a href='login.php'><i class='icon-user'></i></a>");
                                        echo ("</li>");
                                    }
                                    ?>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <!--end: Navigation-->
                </div>
            </div>
        </header>
        <!-- end: Header -->
        <!-- Slider Video-->
        <div id="slider" class="inspiro-slider slider-fullscreen dots-creative" data-fade="true">
            <!-- Slide 1 -->
            <div class="slide" data-bg-video="images/clients/Virgil-Abloh-of-Off–White-Talks_recorte.mp4">
                <div class="bg-overlay"></div>
                <div class="container">
                    <div class="slide-captions text-left text-light">
                        <!-- Captions -->
                        <h1>Ropa StreetWear de las mejores marcas</h1>
                        <p class="text-small">En MDLR encontrarás una selección de las mejores marcas.</p>
                        <!-- end: Captions -->
                    </div>
                </div>
            </div>
            <!-- end: Slide 1 -->
            <!-- Slide 2 -->
            <div class="slide" data-bg-video="images/clients/Stüssy-Dr. Martens_recorte.mp4">
                <div class="bg-overlay"></div>
                <div class="container">
                    <div class="slide-captions text-center text-light">
                        <!-- Captions -->
                        <h1>Stussy</h1>
                        <p class="text-small">Long live Stussy!</p>
                        <!-- end: Captions -->
                    </div>
                </div>
            </div>
            <!-- end: Slide 2 -->
        </div>
        <!--end: Inspiro Slider -->
        <!-- WHAT WE DO -->
        <section class="background-grey">
            <div class="container">
                <div class="heading-text heading-section">
                    <h2>Para ti</h2>
                    <span class="lead">En MDLR, lo primordial es la satisfacción del cliente</span>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div data-animate="fadeInUp" data-animate-delay="0">
                            <h4>Multiplataforma</h4>
                            <p>En MDLR podrás realizar todas tus compras desde cualquier plataforma, ya sea tu ordenador, tablet o teléfono móvil.</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div data-animate="fadeInUp" data-animate-delay="200">
                            <h4>Descuentos</h4>
                            <p>Pronto dispondrán de códigos de descuento canjeables a la hora de comprar sus prendas favoritas.</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div data-animate="fadeInUp" data-animate-delay="400">
                            <h4>Novedades</h4>
                            <p>Seremos los primeros en disponer de las novedades de cada marca.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- END WHAT WE DO -->
        <!-- PORTFOLIO -->
        <section class="p-b-0">
            <div class="container">
                <div class="heading-text heading-section">
                    <h2>Nuestros productos</h2>
                    <span class="lead">En MDLR encontrarás variedad de productos para iniciarte en el mundo del streetwear de la mano de marcas icónicas como Stussy y Off-White.</span>
                </div>
            </div>
            <div class="portfolio">
                <!-- Portfolio Items -->
                <div id="portfolio" class="grid-layout portfolio-4-columns" data-margin="0">
                    <!-- portfolio item -->
                    <?php
                    if ($conexion = mysqli_connect('127.0.0.1', 'root', '', 's05bd7e4_streetwear')) {
                        mysqli_set_charset($conexion, 'utf8');
                        $consulta = "SELECT nombre, id FROM productos ORDER BY RAND() LIMIT 8";
                        mysqli_query($conexion, $consulta);
                        if ($resultado = mysqli_query($conexion, $consulta)) {
                            while ($fila = mysqli_fetch_row($resultado)) {
                                echo ("<div class='portfolio-item no-overlay ct-photography ct-media ct-branding ct-Media ct-webdesign'>");
                                echo ("<div class='portfolio-item-wrap'>");
                                echo ("<div class='portfolio-slider'>");
                                echo ("<div class='carousel dots-inside dots-dark arrows-dark' data-items='1' data-loop='true' data-autoplay='true' data-animate-in='fadeIn' data-animate-out='fadeOut' data-autoplay='1500'>");
                                for ($i = 1; $i < 3; $i++) {
                                    echo ("<a href='shop-single-product.php?id=$fila[1]'><img alt='Shop product image!' src='images/productos/" . $fila[1] . "_{$i}.jpg'>");
                                }
                                echo ("</div>");
                                echo ("</div>");
                                echo ("</div>");
                                echo ("</div>");
                            }
                        }
                        mysqli_close($conexion);
                    }
                    ?>
                    <!-- end: portfolio item -->
                </div>
                <!-- end: Portfolio Items -->
            </div>
        </section>
        <!-- end: PORTFOLIO -->
        <!-- CLIENTS -->
        <section class="p-t-60">
            <div class="container">
                <div class="heading-text heading-section text-center">
                    <h2>NUESTRAS MARCAS</h2>
                    <span class="lead">¡Nuestras increíbles marcas con las que tenemos el placer de trabajar!</span>
                </div>
                <div class="carousel client-logos" data-items="6" data-items-sm="4" data-items-xs="3" data-items-xxs="2" data-margin="20" data-arrows="false" data-autoplay="false" data-autoplay="3000" data-loop="false">
                    <div>
                        <a href="#"><img alt="" src="images/clients/casablanca.jpg"></a>
                    </div>
                    <div>
                        <a href="#"><img alt="" src="images/clients/gucci.jpg"> </a>
                    </div>
                    <div>
                        <a href="#"><img alt="" src="images/clients/off-white.jpg"> </a>
                    </div>
                    <div>
                        <a href="#"><img alt="" src="images/clients/stussy.jpg"> </a>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- end: CLIENTS -->
    <!-- Footer -->
    <footer id="footer">
        <div class="copyright-content">
            <div class="container">
                <div class="copyright-text text-center">© 2022 MDLR - Hecho con amor y cariño en Madrid.</div>
            </div>
        </div>
    </footer>
    <!-- end: Footer -->
    </div>
    <!-- end: Body Inner -->
    <!-- Scroll top -->
    <a id="scrollTop"><i class="icon-chevron-up"></i><i class="icon-chevron-up"></i></a>
    <!--Plugins-->
    <script src="js/jquery.js"></script>
    <script src="js/plugins.js"></script>
    <!--Template functions-->
    <script src="js/functions.js"></script>
</body>

</html>