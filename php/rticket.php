<?php 
session_start();
$usuario = $_SESSION['username'];
require_once 'connect.php';

$email = $_POST['email'];
$telefono = $_POST['telefono'];
$categoria = $_POST['categoria'];
$subcategoria = $_POST['subcat'];
$descripcion = $_POST['descripcion'];
$sucursal = $_POST['sucursal'];

$directorio ="add/";
$archivo = $directorio . basename($_FILES["archivo"]["name"]);


switch($categoria){
    case "camaras":
        $mesa = "soporte";
    break;
    case "celular":
        $mesa = "soporte";
    break;
    case "compras":
        $mesa = "soporte";
    break;
    case "documentacion":
        $mesa = "manager";
    break;
    case "email":
        $mesa = "soporte";
    break;
    case "software":
        $mesa = "desarrollo";
    break;
    case "equipo":
        $mesa = "soporte";
    break;
    case "hardware":
        $mesa = "soporte";
    break;
    case "impresora":
        $mesa = "soporte";
    break;
    case "marketing":
        $mesa = "desarrollo";
    break;
    case "red":
        $mesa = "infraestructura";
    break;
    case "respaldo":
        $mesa = "soporte";
    break;
    case "servidor":
        $mesa = "infraestructura";
    break;
}

switch($mesa){
    case "soporte":
        $agente = "Yaressi Rodrigues";
    break;
    case "infraestructura":
        $agente = "Manuel Olvera";
    break;
    case "desarrollo":
        $agente = "Jose Renovato";
    break;
    case "manager":
        $agente = "Jimena Alarcon";
    break;    
}

$selectinve="SELECT * FROM usuarios WHERE usuario = '$usuario'";
$resul=mysqli_query($conexion,$selectinve);
$area=mysqli_fetch_row($resul);

$estado = "abierto";

$insert = "INSERT INTO tickets (usuario,email,telefono,area,descripcion,url,agente,mesa,categoria,subcategoria,t_registro,estado,sucursal) 
VALUES ('$usuario','$email','$telefono','$area[4]','$descripcion','$archivo','$agente','$mesa','$categoria','$subcategoria',NOW(),'$estado','$sucursal')";

$query = mysqli_query($conexion,$insert);

$tipoArchivo = strtolower(pathinfo($archivo, PATHINFO_EXTENSION));
if (move_uploaded_file($_FILES["archivo"]["tmp_name"], $archivo) && $query) {

    header('Location: tickets.php');
} else {
    echo "La accion fallo satisfactoriamente!";
}
?>