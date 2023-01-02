<?php
$conexion = mysqli_connect('localhost','root','','ti1');
$subcategoria = $_POST['subcategoria'];

$sql="SELECT * FROM cat WHERE 'categoria' = '$subcategoria'";

$result = mysqli_query($conexion,$sql);

$cadena="<label>subcategoria</label>
        <select id='lista2' name='lista2'class='form-select form-select'>";

while ($ver=mysqli_fetch_row($result)){
    $cadena=$cadena.'<option value='.$ver[2].'>'.utf8_encode($ver[2]).'</opction>';
}

echo $cadena."</select>";
?>