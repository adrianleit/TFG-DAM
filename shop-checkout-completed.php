<?php
session_start();
?>
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
    <title>MDLR - Tienda</title>
    <!-- Stylesheets & Fonts -->
    <link href="css/plugins.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="./css/custom.css" rel="stylesheet">
</head>

<body>
    <!-- Body Inner -->
    <div class="body-inner">
        <!-- Header -->
        <?php include("./header.php") ?>
        <!-- end: Header -->
        <!-- SHOP CHECKOUT COMPLETED -->
        <section id="shop-checkout-completed">

            <!-- Meter las transaciones a la bbdd -->
            <?php
            if (isset($_SESSION['id_usuario'])) {
                $id_usuario = $_SESSION['id_usuario'];
                $cantidad_total_productos = 0;
                $direccion = '';
                $comentario = '';
                $lineaDireccion1 = '';
                $codigoPostal = '';
                $ciudad = '';
                $region = '';
                $precio_total = 0;

                if ($conexion = mysqli_connect('localhost:3306', 'root', '', 'mdlr')) {
                    mysqli_set_charset($conexion, 'utf8');
                    $consulta = "SELECT  lineaDireccion1,codigoPostal, ciudad, region  FROM usuarios WHERE id_usuario='$id_usuario';";
                    mysqli_query($conexion, $consulta);
                    if ($resultado = mysqli_query($conexion, $consulta)) {
                        /* 
                    [0] => lineaDireccion1
                    [1] => codigoPostal                
                    [2] => ciudad
                    [3] => region
                    */

                        while ($fila = mysqli_fetch_row($resultado)) {
                            $lineaDireccion1 = $fila[0];
                            $codigoPostal = $fila[1];
                            $ciudad = $fila[2];
                            $region = $fila[3];
                            $direccion = $fila[0] . ', ' . $fila[1] . ', ' . $fila[2] . ', ' . $fila[3];
                        }
                    }
                    mysqli_close($conexion);
                }

            ?>
                <?php
                if (isset($_SESSION['carrito']) && $_SESSION['carrito'] > 0) {
                ?>

                    <div class="container">
                        <div class="text-center">
                            <div class="text-center">
                                <h3>Su pedido se ha completado satisfactoriamente</h3>
                            </div>
                        </div>
                    </div>
                    <section id="shop-cart">
                        <div class="container">
                            <div class="shop-cart">
                                <div class="table table-sm table-striped table-responsive">

                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th class="cart-product-thumbnail">Product</th>
                                                <th class="cart-product-name">Description</th>
                                                <th class="cart-product-price">Unit Price</th>
                                                <th class="cart-product-quantity">Quantity</th>
                                                <th class="cart-product-subtotal">Total</th>
                                            </tr>
                                        </thead>
                                        <!-- EACH PRODUCT -->
                                        <tbody>
                                            <?php
                                            // $_SESSION['carrito'][][0] => Id
                                            // $_SESSION['carrito'][][1] => Talla
                                            // $_SESSION['carrito'][][2] => Cantidad
                                            // $_SESSION['carrito'][][3] => Precio (solo una unidad)
                                            // $_SESSION['carrito'][][4] => Marca
                                            // $_SESSION['carrito'][][5] => Parte de Ropa
                                            // $_SESSION['carrito'][][6] => Sexo
                                            // $_SESSION['carrito'][][7] => Nombre
                                            // $_SESSION['carrito'][][8] => Usuario

                                            for ($i = 0; $i < count($_SESSION['carrito']); $i++) {
                                                if ($_SESSION['carrito'][$i][8] == $_SESSION["id_usuario"]) {

                                                    $cantidad_total_productos = $cantidad_total_productos + $_SESSION['carrito'][$i][2];
                                                    $precio_total = $precio_total + ($_SESSION['carrito'][$i][2] * $_SESSION['carrito'][$i][3]);
                                            ?>
                                                    <tr>
                                                        <td class="cart-product-thumbnail">
                                                            <?php echo ("<a href='shop-single-product.php?id=" . $_SESSION['carrito'][$i][0] . "'>");
                                                            echo ("<img src='images/productos/" . $_SESSION['carrito'][$i][0] . "_1.jpg' alt='FOTO' style='width:4rem !important;'"); ?>
                                                            </a>
                                                            <div class="cart-product-thumbnail-name"><?php echo ($_SESSION['carrito'][$i][7]) ?></div>
                                                        </td>
                                                        <td class="cart-product-description">
                                                            <p>
                                                                <span>Talla: <?php echo ($_SESSION['carrito'][$i][1]) ?></span>
                                                                <span>Sexo: <?php echo ($_SESSION['carrito'][$i][6]) ?></span>
                                                            </p>
                                                        </td>
                                                        <td class="cart-product-price">
                                                            <span class="amount" id="cantidad_producto_individual<?php echo ($i); ?>"><?php echo ($_SESSION['carrito'][$i][3]) ?>&euro;</span>
                                                        </td>
                                                        <td class="cart-product-quantity">
                                                            <div class="quantity">

                                                                <input type="text" class="qty" id="cantidad_<?php echo ($_SESSION['carrito'][$i][0] . "_" . $_SESSION['carrito'][$i][1]) ?>" value="<?php echo ($_SESSION['carrito'][$i][2]) ?>" name="quantity" readonly>

                                                            </div>
                                                        </td>
                                                        <td class="cart-product-subtotal">
                                                            <span class="amount" id="precio_total_<?php echo ($_SESSION['carrito'][$i][0] . "_" . $_SESSION['carrito'][$i][1]) ?>"><?php echo ($_SESSION['carrito'][$i][2] * $_SESSION['carrito'][$i][3]) ?>&euro;</span>
                                                        </td>
                                                    </tr>
                                            <?php
                                                }
                                            }
                                            ?>
                                        </tbody>
                                    </table>

                                </div>
                                <!-- ------------------------------------------------------------- -->
                                <div class="row">
                                    <div class="col-lg-6 p-r-10 ">
                                        <div class="table-responsive">
                                            <h4>Subtotal</h4>
                                            <table class="table">
                                                <tbody>
                                                    <tr>
                                                        <td class="cart-product-name">
                                                            <strong>Subtotal del carrito</strong>
                                                        </td>
                                                        <td class="cart-product-name text-right">
                                                            <span class="amount" id="precio_total"><?php echo ($precio_total) ?>&euro;</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="cart-product-name">
                                                            <strong>Envio</strong>
                                                        </td>
                                                        <td class="cart-product-name  text-right">
                                                            <span class="amount">Envio Gratuito</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="cart-product-name">
                                                            <strong>Total</strong>
                                                        </td>
                                                        <td class="cart-product-name text-right">
                                                            <span class="amount color lead"><strong><?php echo ($precio_total) ?>&euro;</strong></span>
                                                        </td>
                                                    </tr>
                                                    <?php
                                                    if (!isset($_SESSION['id_usuario'])) {
                                                    ?>
                                                        <tr>
                                                            <td class="cart-product-name">
                                                                <strong>Id</strong>
                                                            </td>
                                                            <td class="cart-product-name text-right">
                                                                <span class="amount color lead"><strong>Tienes que iniciar sesion</strong></span>
                                                            </td>
                                                        </tr>
                                                    <?php
                                                    }
                                                    ?>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- <a href="shop-checkout-completed.php" class="btn icon-left float-right"><span>Proceder a la Compra</span></a> -->
                                    </div>
                                    <div class="col-lg-6 p-r-10 ">
                                        <div class="table-responsive">
                                            <h4>Direccion de Facturacion</h4>
                                            <table class="table">
                                                <tbody>
                                                    <tr>
                                                        <td class="cart-product-name">
                                                            <strong>Direccion</strong>
                                                        </td>
                                                        <td class="cart-product-name text-right">
                                                            <span class="amount" id="precio_total"><?php echo ($lineaDireccion1) ?></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="cart-product-name">
                                                            <strong>Localidad</strong>
                                                        </td>
                                                        <td class="cart-product-name  text-right">
                                                            <span class="amount"><?php echo ($ciudad) ?></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="cart-product-name">
                                                            <strong>Region</strong>
                                                        </td>
                                                        <td class="cart-product-name text-right">
                                                            <span class="amount"><?php echo ($region) ?></span>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- <a href="shop-checkout-completed.php" class="btn icon-left float-right"><span>Proceder a la Compra</span></a> -->
                                    </div>
                                </div>
                                <div class="container">
                                    <div class="text-center">
                                        <div class="text-center">
                                            <p>El pedido será enviado a la dirección de facturación que haya introducido en sus datos personales</p>
                                        </div>
                                        <a class="btn icon-left" href="index.php"><span>Volver a la tienda</span></a>
                                    </div>
                                </div>
                            <?php
                        } else {
                            echo("<script>window.location.href='index.php'</script>");
                        }
                            ?>
                            <!-- ------------------------------------------------------------- -->
                            </div>
                        </div>
                    </section>

                <?php

                if ($conexion2 = mysqli_connect('localhost:3306', 'root', '', 'mdlr')) {
                    mysqli_set_charset($conexion2, 'utf8');
                    $consulta2 = "INSERT INTO `transacciones`(`id_usuario`, `cantidad_productos`, `direccion`, `comentario`) 
                VALUES ('$id_usuario', $cantidad_total_productos, '$direccion', '$comentario')";
                    if (mysqli_query($conexion2, $consulta2)) {
                    } else {
                        echo ("Connection failed: " . mysqli_error($conexion2));
                    }
                    mysqli_close($conexion2);
                }

                for ($i = 0; $i < count($_SESSION['carrito']); $i++) {
                    if ($_SESSION['carrito'][$i][8] == $_SESSION["id_usuario"]) {
                        
                    }
                }
            }
                ?>
                <!--   -->



        </section>
        <!-- end: SHOP CHECKOUT COMPLETED -->
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