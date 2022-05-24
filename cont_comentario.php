<?php
// Iniciamos las sesion
session_start();
if (isset($_POST['comentario']) && isset($_POST['operacion']) && isset($_POST['producto'])) {
    // Me traigo la variable comentario
    $comentario = $_POST["comentario"];
    $operacion = $_POST["operacion"];
    $producto = $_POST["producto"];

    // Cogo la variable de sesion del usuario
    if (isset($_SESSION["id_usuario"])) {
        $usuario = $_SESSION["id_usuario"];
    } else {
        $usuario = "Anonimo";
    }

    if ($operacion == "crear") {
        crear($producto, $usuario, $comentario);
    }

    if ($operacion == "mostrar") {
        mostrar($producto);
    }
} else {
    echo "Faltan variables";
}
// $conn->close();

function crear($producto, $usuario, $comentario)
{
    // Create connection
    require("funcionConexion.php");
    $conn = conexion("s05bd7e4_streetwear");
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "INSERT INTO comentarios (id_usuario, comentario, id_producto) VALUES ('$usuario', '$comentario', '$producto');";
    if ($conn->query($sql) === TRUE) {
        mostrar($producto);
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

function mostrar($producto)
{
    if ($conexion = mysqli_connect('localhost:3306', 'root', '', 'mdlr')) {
        mysqli_set_charset($conexion, 'utf8');
        $consulta = "SELECT * FROM comentarios WHERE id_producto='" . $producto . "'";
        mysqli_query($conexion, $consulta);
        if ($resultado = mysqli_query($conexion, $consulta)) {
            while ($fila = mysqli_fetch_row($resultado)) {

?>
                <!-- Comment -->
                <div class="comment" id="comment-1-2">
                    <div class="text">
                        <h5 class="name"><?php echo ($fila[0]); ?></h5>
                        <!-- <span class="comment_date">Posted at 15:32h, 06 December</span> -->
                        <div class="text_holder">
                            <p><?php echo ($fila[2]); ?></p>
                        </div>
                    </div>
                </div>
                <!-- end: Comment -->
<?php
            }
        }
    }
    mysqli_close($conexion);
}
