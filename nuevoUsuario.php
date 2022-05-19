<?php
session_start();
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MDLR | Usuario Nuevo</title>
    <link rel="shortcut icon" href="images/icono.png" type="image/x-icon">
    <link href="./css/plugins.css" rel="stylesheet">
    <link href="./css/style.css" rel="stylesheet">
    <link href="./css/custom.css" rel="stylesheet">
</head>

<body>
    <section id="page-content">
        <div class="container">
            <div class="row">
                <div class="content col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="mb-5">Registro</h3>
                            <form id="form1" class="form-validate">
                                <div class="h5 mb-4">Detalles de la Cuenta</div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="username">Id de Usuario</label>
                                        <input type="text" class="form-control" id="id_usuario" name="id_usuario" placeholder="Usuario" required>
                                        <div id="error_id_usuario">
                                            <p class='error'>El id de usuario debe tener minimo 1 caracter y maximo 50</p>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="email">Email</label>
                                        <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
                                        <div id="error_email">
                                            <p class='error'>El email debe estar bien formado</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="password">Contraseña</label>
                                        <div class="input-group show-hide-password">
                                            <input class="form-control" id="clave" name="clave" placeholder="Contraseña" type="password" required>
                                            <div id="error_clave">
                                                <p class='error'>La contraseña debe tener al entre 8 y 16 caracteres, al menos un dígito, al menos una minúscula y al menos una mayúscula. Puede tener otros símbolos.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="name">Nombre</label>
                                        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre" required>
                                        <div id="error_nombre">
                                            <p class='error'>El nombre debe tener minimo 1 caracter y maximo 50</p>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="surname">Apellido</label>
                                        <input type="text" class="form-control" id="apellido" name="apellido" placeholder="Solo un apellido" required>
                                        <div id="error_apellido">
                                            <p class='error'>El apellido debe tener minimo 1 caracter y maximo 100, y debe ir sin espacios</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="telephone">Telefono</label>
                                        <input class="form-control" type="tel" id="telefono" name="telefono" placeholder="Numero de telefono" required>
                                        <div id="error_telefono">
                                            <p class='error'>Debe ser un telefono movil de España. Admite los formatos "000000000", o 000-00-00-00, también el 000-000000</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="h5 mb-4">Direccion de facturacion</div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="address">Direccion</label>
                                        <input type="text" class="form-control" id="lineaDireccion1" name="lineaDireccion1" placeholder="Direccion" required>
                                        <div id="error_lineaDireccion1">
                                            <p class='error'>La direccion debe tener minimo 1 caracter y maximo 500</p>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>Codigo Postal:</label>
                                        <input type="number" class="form-control" id="codigoPostal" name="codigoPostal" placeholder="Codigo Postal" required>
                                        <div id="error_codigoPostal">
                                            <p class='error'>El codigo postal debe estar entre el 01000 y el 52999</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="city">Ciudad</label>
                                        <input type="text" class="form-control" id="ciudad" name="ciudad" placeholder="Ciudad" required>
                                        <div id="error_ciudad">
                                            <p class='error'>La ciudad debe tener minimo 1 caracter y maximo 500</p>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="state">Provincia</label>
                                        <select id="provincia" name="provincia" class="form-control" required>
                                            <?php
                                            $provincias = array("Álava", "Albacete", "Alicante", "Almería", "Asturias", "Ávila", "Badajoz", "Barcelona", "Burgos", "Cáceres", "Cádiz", "Cantabria", "Castellón", "Ciudad Real", "Córdoba", "Cuenca", "Gerona", "Granada", "Guadalajara", "Guipúzcoa", "Huelva", "Huesca", "Islas Baleares", "Jaén", "La Coruña", "La Rioja", "Las Palmas", "León", "Lérida", "Lugo", "Madrid", "Málaga", "Murcia", "Navarra", "Orense", "Palencia", "Pontevedra", "Salamanca", "Santa Cruz de Tenerife", "Segovia", "Sevilla", "Soria", "Tarragona", "Teruel", "Toledo", "Valencia", "Valladolid", "Vizcaya", "Zamora", "Zaragoza");
                                            for ($i = 0; $i < count($provincias); $i++) {
                                                echo ("<option value='" . $provincias[$i] . "'>" . $provincias[$i] . "</option>");
                                            }
                                            ?>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="state">País</label>
                                        <select id="pais" name="pais" class="form-control" required>
                                            <option value="españa" selected>España</option>
                                        </select>
                                    </div>
                                </div>
                                <button type="button" id="crearUsuario" class="btn m-t-30 mt-3">Registrar Usuario</button>
                                <a href="index.php"><button type="button" class="btn m-t-30 mt-3">Volver</button></a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <br>
    <p id="respuesta"></p>

    <script src="js/jquery.js"></script>
    <script src="js/plugins.js"></script>
    <!--Template functions-->
    <script src="js/functions.js"></script>
    <script>
        $(document).ready(function() {
            $("#error_email").hide();
            $("#error_clave").hide();
            $("#error_nombre").hide();
            $("#error_apellido").hide();
            $("#error_id_usuario").hide();
            $("#error_telefono").hide();
            $("#error_lineaDireccion1").hide();
            $("#error_ciudad").hide();
            $("#error_codigoPostal").hide();


            $("#crearUsuario").click(function() {
                // Validacion para mensaje de error individual

                var email = $("#email").val();
                if (email.match(/^(([^<>()\[\]\\.,;:\s@”]+(\.[^<>()\[\]\\.,;:\s@”]+)*)|(“.+”))@((\[[0–9]{1,3}\.[0–9]{1,3}\.[0–9]{1,3}\.[0–9]{1,3}])|(([a-zA-Z\-0–9]+\.)+[a-zA-Z]{2,}))$/)) {} else {
                    $("#error_email").show("fast");
                }

                var clave = $("#clave").val();
                if (clave.match(/^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$/)) {} else {
                    $("#error_clave").show("fast");
                }

                var nombre = $("#nombre").val();
                if (nombre.match(/^[a-zA-Z]{1,50}$/)) {} else {
                    $("#error_nombre").show("fast");
                }

                var apellido = $("#apellido").val();
                if (apellido.match(/^[a-zA-Z]{1,50}$/)) {} else {
                    $("#error_apellido").show("fast");
                }

                var id_usuario = $("#id_usuario").val();
                if (id_usuario.match(/^[a-zA-Z0-9_-]{1,50}$/)) {} else {
                    $("#error_id_usuario").show("fast");
                }

                var telefono = $("#telefono").val();
                if (telefono.match(/^[9|6]{1}([\d]{2}[-]*){3}[\d]{2}$/)) {} else {
                    $("#error_telefono").show("fast");
                }

                var lineaDireccion1 = $("#lineaDireccion1").val();
                if (lineaDireccion1.match(/^[a-zA-Z0-9º-\s]{1,500}$/)) {} else {
                    $("#error_lineaDireccion1").show("fast");
                }

                var ciudad = $("#ciudad").val();
                if (ciudad.match(/^[a-zA-Z\s]{1,50}$/)) {} else {
                    $("#error_ciudad").show("fast");
                }

                var codigoPostal = $("#codigoPostal").val();
                if (codigoPostal.match(/^(?:0[1-9]|[1-4]\d|5[0-2])\d{3}$/)) {} else {
                    $("#error_codigoPostal").show("fast");
                }

                // Comprobacion global
                if (email.match(/^(([^<>()\[\]\\.,;:\s@”]+(\.[^<>()\[\]\\.,;:\s@”]+)*)|(“.+”))@((\[[0–9]{1,3}\.[0–9]{1,3}\.[0–9]{1,3}\.[0–9]{1,3}])|(([a-zA-Z\-0–9]+\.)+[a-zA-Z]{2,}))$/) &&
                    clave.match(/^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$/) && nombre.match(/^[a-zA-Z]{1,50}$/) &&
                    apellido.match(/^[a-zA-Z]{1,50}$/) && id_usuario.match(/^[a-zA-Z0-9_-]{1,50}$/) &&
                    lineaDireccion1.match(/^[a-zA-Z0-9º-\s]{1,500}$/) && ciudad.match(/^[a-zA-Z\s]{1,50}$/) &&
                    codigoPostal.match(/^(?:0[1-9]|[1-4]\d|5[0-2])\d{3}$/)) {
                    crearUsuario();
                }

            })
        });

        function crearUsuario() {
            var email = $("#email").val();
            var clave = $("#clave").val();
            var nombre = $("#nombre").val();
            var apellido = $("#apellido").val();
            var id_usuario = $("#id_usuario").val();
            var telefono = $("#telefono").val();
            var lineaDireccion1 = $("#lineaDireccion1").val();
            var ciudad = $("#ciudad").val();
            var codigoPostal = $("#codigoPostal").val();
            var provincia = $("#provincia").val();
            var pais = $("#pais").val();
            var peticion = $.ajax({
                url: "cont_nuevoUsuario.php",
                type: "POST",
                async: true,
                data: {
                    email: email,
                    clave: clave,
                    nombre: nombre,
                    apellido: apellido,
                    id_usuario: id_usuario,
                    telefono: telefono,
                    lineaDireccion1: lineaDireccion1,
                    ciudad: ciudad,
                    codigoPostal: codigoPostal,
                    provincia: provincia,
                    pais: pais
                },
                success: function(data) {
                    $("#respuesta").html(peticion.responseText);
                }
            })
        }
    </script>
</body>

</html>