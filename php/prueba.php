<?php

require 'connect.php';

$consul = "SELECT usuario FROM `usuarios` WHERE usuario = 'Reno'";
$query = mysqli_query($conexion,$consul);
$mostrar=mysqli_fetch_row($query);

echo $mostrar[0];
?>