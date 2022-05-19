<!-- Topbar -->
<div id="topbar" class="topbar-fullwidth d-none d-lg-block">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <ul class="top-menu">
                    <li><a href="#">Email: contact@mdlr.com</a></li>
                    <li><a href="#">Telefono: +34 91 530 00 94</a></li>
                </ul>
            </div>
            <div class="col-md-6 d-none d-sm-block">
                <div class="social-icons social-icons-colored-hover">
                    <ul>
                        <li class="social-facebook"><a href="https://www.facebook.com/MDLR-Streetwear-107759258165885" target="newtab"><i class="fab fa-facebook-f"></i></a></li>
                        <li class="social-twitter"><a href="https://twitter.com/MdlrStreetwear" target="newtab"><i class="fab fa-twitter"></i></a></li>
                        <li class="social-instagram"><a href="https://www.instagram.com/mdlr_streetwear/" target="newtab"><i class="fab fa-instagram"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end: Topbar -->
<!-- Header -->
<header id="header" class="dark submenu-light" data-fullwidth="true">
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
                                echo ("<li class='dropdown'><a><i class='fa fa-power-off'></i>" . $_SESSION["NombreCliente"]). "</a>";
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
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!--end: Navigation-->
        </div>
    </div>
</header>
<!-- end: Header -->