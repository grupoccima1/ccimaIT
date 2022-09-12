<?php
require_once 'php/connect.php';

$consul = "SELECT area FROM `usuarios` WHERE usuario = 'Reno'";
$query = mysqli_query($conexion,$consul);

$mostrar=mysqli_fetch_row($query);
    echo $mostrar[0];

?>