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
    <title>MDLR | Login</title>
    <!-- Stylesheets & Fonts -->
    <link href="css/plugins.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Body Inner -->
    <div class="body-inner">
        <!-- Header -->
        <?php include("header.php"); ?>
        <!-- end: Header -->
        <!-- Page Content -->
        <section id="page-content">
            <div class="container">
                <div class="row">
                    <div class="content col-lg-12">
                        <h3>Iniciar Sesion</h3>
                        <form action="cont_login.php" method="POST" style="max-width: 25rem;">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email</label>
                                <input class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email" type="email" name="email">
                                <small id="emailHelp" class="form-text text-muted">No usaremos tu email para otros fines.</small>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Contraseña</label>
                                <input class="form-control" id="exampleInputPassword1" placeholder="Contraseña" type="password" name="clave">
                            </div>
                            <button type="submit" class="btn m-t-30 mt-3">Iniciar Sesion</button>
                            <a href="nuevoUsuario.php"><button type="button" class="btn m-t-30 mt-3">Registrarse</button></a>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- end: Page Content -->
        <!-- Footer -->
        <footer id="footer">
            <div class="copyright-content">
                <div class="container">
                    <div class="copyright-text text-center">&copy; 2022 MDLR - Hecho con amor y cariño en Madrid.</div>
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