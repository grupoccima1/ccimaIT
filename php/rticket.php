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

$fecha_actual = date("Y-m-d");

switch($subcategoria){
    case "configuracion":
    case "instalacion":
    case "revision":
        $ffinal = date("Y-m-d",strtotime($fecha_actual."+ 3 days")); 
    break;
    case "peticion de respaldo":
    case "creacion de correo":
    case "reemplazo":
    case "diagnostico":
    case "responsivas":
    case "informe":
    case "politicas y procedimientos":
    case "no envia":
    case "crear o eliminar":
    case "configurar":
    case "cambio de contraseña":
    case "rechazo de correo":
    case "correos no reconocidos":
    case "creacion de firmas":
    case "instalar":
    case "eliminar":
    case "configurar":
    case "actualizar":
    case "resguardo":
    case "instalar":
    case "cambio de impresora":
    case "no imprime":
    case "atasco":
    case "configuracion":
    case "cambio wify":
    case "cambio credenciales de wify":
    case "internet inestable":
    case "configuracion":
    case "no conecta":
    case "creacion de usuario":
        $ffinal = date("Y-m-d",strtotime($fecha_actual."+ 1 days")); 
    break;    
    case "equipo de red":
    case "equipo de computo":
    case "video conferencia":
    case "accesorios":
    case "consumible":
    case "soporte tecnico":
    case "cursos":
    case "equipo de impresion":
    case "proyector":
    case "monitor":
    case "cargador":
    case "electricidad (ups, nobreack)":
    case "insumo mantenimiento":
    case "politicas y procedimientos":
        $ffinal = date("Y-m-d",strtotime($fecha_actual."+ 5 days")); 
    break;   
    case "manuales":
    case "clientes internos":
        $ffinal = date("Y-m-d",strtotime($fecha_actual."+ 14 days")); 
    break;
    case "crear":
        $ffinal = date("Y-m-d",strtotime($fecha_actual."+ 100 days")); 
    break;   
    case "asignacion":
    case "cambio de pieza":
    case "diagnostico":        
    case "reparacion":
    case "mantenimeinto preventivo":
    case "mantenimiento correctivo":
    case "cableado estructurado":
    case "restaurar respaldo":
    case "respaldo laptop":
        $ffinal = date("Y-m-d",strtotime($fecha_actual."+ 2 days")); 
    break;
}


$selectinve="SELECT * FROM usuarios WHERE usuario = '$usuario'";
$resul=mysqli_query($conexion,$selectinve);
$area=mysqli_fetch_row($resul);

$estado = "abierto";

$insert = "INSERT INTO tickets (usuario,email,telefono,area,descripcion,url,agente,mesa,categoria,subcategoria,t_registro,estado,sucursal,f_cierre) 
VALUES ('$usuario','$email','$telefono','$area[4]','$descripcion','$archivo','$agente','$mesa','$categoria','$subcategoria',NOW(),'$estado','$sucursal','$ffinal')";

$query = mysqli_query($conexion,$insert);

$tipoArchivo = strtolower(pathinfo($archivo, PATHINFO_EXTENSION));
if (move_uploaded_file($_FILES["archivo"]["tmp_name"], $archivo) && $query) {

    header('Location: ticketsusu.php');
} else {
    echo "La accion fallo satisfactoriamente!";
}
?>