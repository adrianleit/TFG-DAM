<?php session_start(); ?>
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
    <title>MDLR | Productos</title>
    <!-- Stylesheets & Fonts -->
    <link href="./css/plugins.css" rel="stylesheet">
    <link href="./css/style.css" rel="stylesheet">
    <link href="./css/custom.css" rel="stylesheet">
</head>

<body>
    <!-- Body Inner -->
    <div class="body-inner">
        <!-- Topbar y Header -->
        <?php include("header.php") ?>
        <!-- Fin Header -->
        <!-- Shop products -->
        <section>
            <div class="container"><div class="row m-b-20">
                    <div class="col-lg-6 p-t-10 m-b-20">
                        <h2 class="m-b-20">Camisas Off-White</h2>
                    </div>
                </div>
                <div class="shop">
                    <div class="grid-layout grid-4-columns" data-item="grid-item">
                        <!-- Solo un elemento -->
                        <?php
                        $marca="off-white";
                        $parte="camisas";
                        if ($conexion = mysqli_connect('localhost:3306', 'root', '', 'mdlr')) {
                            mysqli_set_charset($conexion, 'utf8');
                            $consulta = "SELECT  * FROM productos WHERE marca='$marca' AND parte='$parte';";
                            mysqli_query($conexion, $consulta);
                            if ($resultado = mysqli_query($conexion, $consulta)) {
                                /* 
                                [0] => Marca
                                [1] => Nombre
                                [2] => Precio
                                [3] => Id
                                [4] => Parte
                                [5] => Sexo
                                [6] => Descripcion
                                */

                                while ($fila = mysqli_fetch_row($resultado)) {
                                    echo ("<div class='grid-item'>");
                                    echo ("<div class='product'>");
                                    echo ("<div class='product-image'>");
                                    for ($i=1; $i < 3; $i++) { 
                                        echo ("<a href='shop-single-product.php?id=$fila[3]'><img alt='Shop product image!' src='images/productos/".$fila[3]."_{$i}.jpg'>");
                                        echo ("</a>");
                                    }
                                    echo ("<span class='product-wishlist'>");
                                    echo ("<a href='#'><i class='fa fa-heart'></i></a>");
                                    echo ("</span>");
                                    echo ("<div class='product-overlay'>");
                                    echo ("<a href='shop-single-product.php?id=$fila[3]' id='vista_rapida'>Ir al producto</a>");
                                    echo ("</div>");
                                    echo ("</div>");
                                    echo ("<div class='product-description'>");
                                    echo ("<div class='product-category'>$fila[5]</div>");
                                    echo ("<div class='product-title'>");
                                    echo ("<h3><a href='shop-single-product.php?id=$fila[3]' id='vista_rapida'>$fila[1]</a></h3>");
                                    echo ("</div>");
                                    echo ("<div class='product-price'><ins>$fila[2]&euro;</ins>");
                                    echo ("</div>");
                                    echo ("</div>");
                                    echo ("</div>");
                                    echo ("</div>");
                                }
                                mysqli_close($conexion);
                            }
                        }
                        ?>
                        <!-- fin Solo un elemento -->
                    </div>
                </div>
            </div>
        </section>
        <p id="respuesta"></p>
        <!-- end: Shop products -->
        <!-- DELIVERY INFO -->
        <section class="background-grey p-t-40 p-b-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="icon-box effect small clean">
                            <div class="icon">
                                <a href="#"><i class="fa fa-gift"></i></a>
                            </div>
                            <h3>Envíos gratuitos</h3>
                            <p>En MDLR cargamos nosotros con los gastos de envío</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="icon-box effect small clean">
                            <div class="icon">
                                <a href="#"><i class="fa fa-plane"></i></a>
                            </div>
                            <h3>Envios a toda España</h3>
                            <p>Nuestros envios se encuentran disponibles a toda la península y las Islas Baleares e Islas Canarias</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="icon-box effect small clean">
                            <div class="icon">
                                <a href="#"><i class="fa fa-history"></i></a>
                            </div>
                            <h3>¡60 dias de garantia!</h3>
                            <p>No estas contento con tu producto, devuelvenoslo gratis y te reembolsaremos el 100% de tu dinero!</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end: DELIVERY INFO -->
        <!-- Footer -->
        <footer id="footer">
            <div class="copyright-content">
                <div class="container">
                    <div class="copyright-text text-center">&copy; 2022 MDLR - Hecho con amor y cariño en Madrid.</div>
                </div>
            </div>
        </footer>
        <!-- end: Footer -->
    </div> <!-- end: Body Inner -->
    <!-- Scroll top -->
    <a id="scrollTop"><i class="icon-chevron-up"></i><i class="icon-chevron-up"></i></a>
    <!--Plugins-->
    <script src="js/jquery.js"></script>
    <script src="js/plugins.js"></script>
    <!--Template functions-->
    <script src="js/functions.js"></script>
</body>

</html>