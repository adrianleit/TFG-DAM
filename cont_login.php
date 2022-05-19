<?php
if ($_POST['email'] == '' || $_POST['clave'] == '') {
    echo ('Usuario o contraseña en blanco');
} else {
    if ($conexion = mysqli_connect('localhost:3306', 'root', '', 'mdlr')) {
        //abre la conexion de base de datos, donde se encuentra, usuario, contraseña y nombre de la base de datos
        mysqli_set_charset($conexion, 'utf8');
        //Establece el conjunto de caracteres predeterminado a usar cuando se envían datos desde y hacia el servidor de la base de datos.
        $email = $_POST['email'];
        $consulta = 'SELECT id_usuario, email, clave, nombre FROM usuarios WHERE email="' . $email . '"';
        if ($resultado = mysqli_query($conexion, $consulta)) {
            if (mysqli_num_rows($resultado)) {
                $fila = mysqli_fetch_array($resultado, MYSQLI_ASSOC);
                $clavehasheada = $fila['clave'];
                $clave = $_POST['clave'];
                if (password_verify($clave, $clavehasheada)) { //solo puede haber una fila, 1 es true
                    session_start(); //quitar si lo ponemos en el menu
                    $_SESSION["id_usuario"] = $fila['id_usuario'];
                    $_SESSION["NombreCliente"] = $fila['nombre'];
                    echo ($_SESSION["NombreCliente"]);
                    mysqli_close($conexion);
                    header('Location:index.php');
                } else {
                    echo ('Contraseña incorrecta');
                }
            } else {    // si es cero no existe el usuario            
                echo ('Usuario inexistente');
            }
        }
        mysqli_close($conexion);
    }
}
