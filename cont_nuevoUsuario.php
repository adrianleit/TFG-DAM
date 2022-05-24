<?php
if (isset($_POST['email']) && isset($_POST['clave']) && isset($_POST['nombre']) && isset($_POST['apellido']) 
&& isset($_POST['id_usuario']) && isset($_POST['telefono']) && isset($_POST['lineaDireccion1']) && 
isset($_POST['ciudad']) && isset($_POST['codigoPostal']) && isset($_POST['provincia']) && isset($_POST['pais'])) {
    $email = $_POST['email'];
    $clave = $_POST['clave'];
    
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $id_usuario = $_POST['id_usuario'];
    $telefono = $_POST['telefono'];
    
    $lineaDireccion1 = $_POST['lineaDireccion1'];
    $ciudad = $_POST['ciudad'];
    $codigoPostal = $_POST['codigoPostal'];
    $provincia = $_POST['provincia'];
    $pais = $_POST['pais'];
    

    // Hacer un hash de la password
    $clave = password_hash($clave, PASSWORD_BCRYPT);
    // Create connection
    require("funcionConexion.php");
    $conn = conexion("mdlr");
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "INSERT INTO usuarios (nombre, id_usuario, email, clave, apellido, region, codigoPostal, telefono, 
    lineaDireccion1, pais, ciudad) VALUES ('$nombre', '$id_usuario', '$email', '$clave', '$apellido', '$provincia', 
    $codigoPostal, $telefono, '$lineaDireccion1', '$pais', '$ciudad');";
    if ($conn->query($sql) === TRUE) {
        echo("<script>window.location.href='index.php'</script>");
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
} else{
    echo "Faltan variables";
}
// $conn->close();