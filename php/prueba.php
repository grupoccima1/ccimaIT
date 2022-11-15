<?php
require_once 'connect.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/conteiner.css">
    <script 
    src="https://code.jquery.com/jquery-3.6.1.js" 
    integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" 
    crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<body>
    <center>
    <div class="conteiner">
    <div class="mb-3">
                            <label for="" class="form-label">Categoria</label>
                            <select class="form-select form-select" name="lista1" id="lista1" required>
                                <option selected>Select one</option>
                                <?php
                        $selectinven="SELECT * FROM `categorias` WHERE 1";
                        $result=mysqli_query($conexion,$selectinven);
                        while($mostrar=mysqli_fetch_row($result)){?>
                                <option value="<?php echo $mostrar[1] ?>"> <?php echo $mostrar[1] ?> </option>
                                <?php
                        }
                        ?>
                            </select>
                        </div>

                        <div id="lista2"></div>
    </div>
    </center>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>

<script type="text/javascript">
    $(document).ready(function(){
    
        recargarLista();

        $('#lista1').change(function(){
            recargasLista();
        });
    })

</script>
<script type="text/javascript">
    function recargarLista(){
        $.ajax({
            type:"POST",
            url:"datos.php",
            data:"subcategoria=" + $('#lista1').val(),
            success:function(r){
                $('#select2').html(r);
            }
        });
    }
</script>