<?php
session_start();
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MDLR - Mi Perfil</title>
    <link rel="icon" type="image/png" href="images/icono.png">
    <link href="./css/plugins.css" rel="stylesheet">
    <link href="./css/style.css" rel="stylesheet">
    <link href="./css/custom.css" rel="stylesheet">
</head>

<body>
    <div class="body-inner">
        <?php include("header.php") ?>
        <section id="page-content">
            <?php
            if ($conexion = mysqli_connect('localhost:3306', 'root', '', 'mdlr')) {
                mysqli_set_charset($conexion, 'utf8');
                $consulta = "SELECT * FROM usuarios WHERE nombre='" . $_SESSION["NombreCliente"] . "'";
                mysqli_query($conexion, $consulta);
                if ($resultado = mysqli_query($conexion, $consulta)) {
                    while ($fila = mysqli_fetch_row($resultado)) {
                                                        //$fila[0]=Nombre
                                                        //$fila[1]=Id_Usuario
                                                        //$fila[2]=Email
                                                        //$fila[3]=Clave
                                                        //$fila[4]=Apellido
                                                        //$fila[5]=Pais
                                                        //$fila[6]=Region
                                                        //$fila[7]=Codigo Postal
                                                        //$fila[8]=Telefono
                                                        //$fila[9]=Linea de Direccion
            ?>

                        <div class="container">
                            <div class="row">
                                <div class="content col-lg-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <h3 class="mb-5">Mi perfil</h3>
                                            <form id="form1" class="form-validate">
                                                <div class="h5 mb-4">Detalles de la Cuenta</div>
                                                <div class="form-row">
                                                    <div class="form-group col-md-6">
                                                        <label for="username">Id de Usuario</label>
                                                        <input type="text" class="form-control" id="id_usuario" name="id_usuario" value="<?php echo($fila[1]) ?>" readonly>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="email">Email</label>
                                                        <input type="email" class="form-control" id="email" name="email" value="<?php echo($fila[2]) ?>" readonly>
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="form-group col-md-6">
                                                        <label for="name">Nombre</label>
                                                        <input type="text" class="form-control" id="nombre" name="nombre" value="<?php echo($fila[0]) ?>" readonly>

                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="surname">Apellidos</label>
                                                        <input type="text" class="form-control" id="apellido" name="apellido" value="<?php echo($fila[4]) ?>" readonly>

                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="form-group col-md-6">
                                                        <label for="telephone">Teléfono</label>
                                                        <input class="form-control" type="tel" id="telefono" name="telefono" value="<?php echo($fila[8]) ?>" readonly>

                                                    </div>
                                                </div>

                                                <div class="form-row">
                                                    <div class="form-group col-md-6">
                                                        <label for="address">Dirección</label>
                                                        <input type="text" class="form-control" id="lineaDireccion1" name="lineaDireccion1" value="<?php echo($fila[9]) ?>" readonly>

                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label>Código Postal:</label>
                                                        <input type="number" class="form-control" id="codigoPostal" name="codigoPostal" value="<?php echo($fila[7]) ?>" readonly>

                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="form-group col-md-6">
                                                        <label for="city">Región</label>
                                                        <input type="text" class="form-control" id="ciudad" name="ciudad" value="<?php echo($fila[6]) ?>" readonly>
                                                    </div>
                                                </div>
                                                <a href="index.php"><button type="button" class="btn m-t-30 mt-3">Volver</button></a>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

            <?php
                    }
                }
                mysqli_close($conexion);
            }
            ?>
        </section>
    </div>

    <br>

    <script src="js/jquery.js"></script>
    <script src="js/plugins.js"></script>
    <!--Template functions-->
    <script src="js/functions.js"></script>
</body>

</html>