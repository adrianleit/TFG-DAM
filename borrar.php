<?php
    session_start();
    session_destroy();
    /* Redirigir */
    header('Location:index.php');

?>