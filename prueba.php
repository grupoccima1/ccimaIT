<?php
session_start();
$usuario = $_SESSION['username'];
require_once 'php/connect.php';

$con=mysqli_connect('localhost','root','','sistema');
$consult="SELECT * FROM eventos WHERE title = '$usuario'";
$query1 = mysqli_query($con,$consult);
$usuario1=mysqli_fetch_row($query1);

$consul = "SELECT area FROM usuarios WHERE usuario = '$usuario'";
$query = mysqli_query($conexion,$consul);
$mostrar=mysqli_fetch_row($query);
echo $mostrar['0'];

echo $usuario1['0'];
echo $usuario1['1'];
echo $usuario1['2'];
echo $usuario1['3'];
echo $usuario1['4'];
echo $usuario1['5'];
echo $usuario1['6'];
echo $usuario1['7'];
?>

