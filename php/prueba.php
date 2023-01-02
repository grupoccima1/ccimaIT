<?php
require_once 'connect.php';

$fecha_actual = date("Y-m-d");
$sql="SELECT estado FROM tickets WHERE f_cierre = '$fecha_actual'";
$result = mysqli_query($conexion,$sql);
while($ver=mysqli_fetch_row($result)){
echo $ver[0];

}

?>
