<?php session_start(); ?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="Angel Criado, Adrian Delgado y Sergio Jimenez" />
    <meta name="description" content="Tienda MDLR">
    <link rel="icon" type="image/png" href="images/icono.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Document title -->
    <title>MDLR | Carrito</title>
    <!-- Stylesheets & Fonts -->
    <link href="css/plugins.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="./css/custom.css" rel="stylesheet">
</head>

<body>
    <!-- Body Inner -->
    <div class="body-inner">
        <!-- Header -->
        <?php include("header.php") ?>
        <!-- end: Header -->
        <!-- SHOP CART -->
        <p id="carrito"></p>
        
        <!-- end: SHOP CART -->
        <!-- DELIVERY INFO -->
        <section class="background-grey p-t-40 p-b-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="icon-box effect small clean">
                            <div class="icon">
                                <a href="#"><i class="fa fa-gift"></i></a>
                            </div>
                            <h3>Envios gratuitos</h3>
                            <p>En MDLR cargamos nosotros con los gastos de envio</p>
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
                    <div class="copyright-text text-center">© 2022 MDLR - Hecho con amor y cariño en Madrid.</div>
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
    <script src="js/cantidad.js"></script>
    <script>
        $(document).ready(function() {
            mostrar_carrito();
        });

        function mostrar_carrito() {
            var peticion_mostrar = $.ajax({
                url: "actualizar_carrito.php",
                type: "POST",
                async: true,
                data: {
                    operacion: "mostrar"
                },
                success: function(data) {
                    $("#carrito").html(peticion_mostrar.responseText);
                }
            })
        }
    </script>
</body>

</html>