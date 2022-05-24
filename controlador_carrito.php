<?php

/** @author Adrian Delgado , Angel Criado y Sergio Jimenez
 * @version 2022.06 Carrito MDLR
 */

//Se inicia la sesion
session_start();

// Sacar los valores del producto que vamos a añadir en la base de datos
if (
    isset($_POST['cantidad']) && isset($_POST['id']) && isset($_POST['size']) && isset($_POST['precio'])
    && isset($_POST['marca']) && isset($_POST['parte']) && isset($_POST['sexo']) && $nombre = $_POST['nombre']
) {
    $id = $_POST['id'];
    $talla = $_POST['size'];
    $cantidad = intval($_POST['cantidad']);
    $precio = $_POST['precio'];
    $marca = $_POST['marca'];
    $parte = $_POST['parte'];
    $sexo = $_POST['sexo'];
    $nombre = $_POST['nombre'];
    if (!isset($_SESSION["id_usuario"])) {
        $usuario = "anonimo";
    } else {
        $usuario = $_SESSION["id_usuario"];
    }

    // $_SESSION['carrito'][][0] => Id
    // $_SESSION['carrito'][][1] => Talla
    // $_SESSION['carrito'][][2] => Cantidad
    // $_SESSION['carrito'][][3] => Precio (solo una unidad)
    // $_SESSION['carrito'][][4] => Marca
    // $_SESSION['carrito'][][5] => Parte de Ropa
    // $_SESSION['carrito'][][6] => Sexo
    // $_SESSION['carrito'][][7] => Nombre
    // $_SESSION['carrito'][][8] => Usuario


    /** @var bool $existe Determina si un producto esta en el carrito */
    $existe = false;
    /* Si no existe la variable de sesion carrito, se crea como un array y ademas se le mete el 
    producto directamente*/
    if (!isset($_SESSION['carrito'])) {
        $_SESSION['carrito'] = array();
        array_push($_SESSION['carrito'], array($id, $talla, $cantidad, $precio, $marca, $parte, $sexo, $nombre, $usuario));
        header("location:shop-cart.php");
    } else {
        /*Si la variable de sesion existe, se recorre con un bucle en busca de conincidencias con el id 
    del producto ($_SESSION['carrito'][0]) y la talla del producto($_SESSION['carrito'][1]) */
        for ($i = 0; $i < count($_SESSION['carrito']); $i++) {
            if ($id == $_SESSION['carrito'][$i][0] && $talla == $_SESSION['carrito'][$i][1] && $usuario == $_SESSION['carrito'][$i][8]) {
                /* Si encuentra una coincidencia con el id y la talla pone $existe en "true" 
                para no añadir posteriormente el producto de nuevo, además coge cantidad que
                se trae de la otra página y se lo suma a lo que ya había en el carrito */
                $existe = true;
                $_SESSION['carrito'][$i][2] = $_SESSION['carrito'][$i][2] + $cantidad;
            }
        }
        /* Si no ha encontrado ninguna coincidencia en todo el carrito, $existe será igual a false por lo 
        que se añadira el producto entero al carritos */
        if ($existe == false) {
            array_push($_SESSION['carrito'], array($id, $talla, $cantidad, $precio, $marca, $parte, $sexo, $nombre, $usuario));
        }
        header("location:shop-cart.php");
    }
} else {
    echo ("Faltan variables");
}
