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
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./../css/t1.css">
    <title>Tickets</title>
</head>
<body>
    
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary btn-lg" data-bs-toggle="modal" data-bs-target="#modalId">
      nuevo ticket
    </button>
    
    <!-- Modal -->
    <div class="modal fade" id="modalId" tabindex="-1" role="dialog" aria-labelledby="modalTitleId" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
            <form action="rticket.php" method="post" enctype="multipart/form-data">    
                    <div class="modal-header">
                            <h5 class="modal-title" id="modalTitleId">Nuevo Ticket</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                <div class="modal-body">
                    <div class="container-fluid">

                        <div class="mb-3">
                          <label for="" class="form-label">Email</label>
                          <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelpId" placeholder="jalarcon@grupoccima.com" required>
                        </div>

                        <div class="mb-3">
                          <label for="" class="form-label">Telefono</label>
                          <input type="text" class="form-control" name="telefono" id="telefono" aria-describedby="helpId" placeholder="7224736817" required>
                        </div>


                        <div class="mb-3">
                            <label for="" class="form-label">Categoria</label>
                            <select class="form-select form-select" name="categoria" id="categoria" required>
                                <option selected>Select one</option>
                                <?php
                        $selectinven="SELECT * FROM categorias WHERE 1";
                        $result=mysqli_query($conexion,$selectinven);
                        while($mostrar=mysqli_fetch_row($result)){?>
                                <option value="<?php echo $mostrar[1] ?>"> <?php echo $mostrar[1] ?> </option>
                                <?php
                        }
                        ?>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="" class="form-label">Subcategoria</label>
                            <select class="form-select form-select" name="subcat" id="subcat" required>
                                <option selected>Select one</option>
                                <?php
                        $selectinve="SELECT * FROM cat WHERE 1";
                        $resul=mysqli_query($conexion,$selectinve);
                        while($mostra=mysqli_fetch_row($resul)){?>
                                <option value="<?php echo $mostra[2] ?>"> <?php echo $mostra[2] ?> </option>
                                <?php
                        }
                        ?>
                            </select>
                        </div>

                        <div class="mb-3">
                          <label for="" class="form-label">Descripcion</label>
                          <textarea class="form-control" name="descripcion" id="descripcion" rows="5" required placeholder="detalla con breves palabras el problema que precenta el equipo"></textarea>
                        </div>

                        <div class="mb-3">
                          <label for="" class="form-label">Elige tu archivo evidencia</label>
                          <input type="file" class="form-control" name="archivo" id="archivo" placeholder="" aria-describedby="fileHelpId" required>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Enviar</button>
                </div>
                    
                </form>
            </div>
        </div>
    </div>
    
    <script>
        var modalId = document.getElementById('modalId');
    
        modalId.addEventListener('show.bs.modal', function (event) {
              // Button that triggered the modal
              let button = event.relatedTarget;
              // Extract info from data-bs-* attributes
              let recipient = button.getAttribute('data-bs-whatever');
    
            // Use above variables to manipulate the DOM
        });
    </script>
    <center>
    <div class="table_res">
    <div class="table-responsive">
        <table class="table">
            <thead class="table-dark">
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Usuario</th>
                    <th scope="col">Email</th>
                    <th scope="col">Telefono</th>
                    <th scope="col">Area</th>
                    <th scope="col">Descripcion</th>
                    <th scope="col">Evidencia</th>
                    <th scope="col">Agente</th>
                    <th scope="col">Mesa</th>
                    <th scope="col">Categoria</th>
                    <th scope="col">Subcategoria</th>
                    <th scope="col">Registro</th>
                    <th scope="col">Estado</th>
                </tr>
            </thead>
            <tbody>

                <?php
                        $sel="SELECT * FROM tickets WHERE 1";
                        $res=mysqli_query($conexion,$sel);
                        while($mos=mysqli_fetch_row($res)){?>
                     <tr class=""></tr>
                    <td><?php echo $mos[0]; ?></td>
                    <td><?php echo $mos[1]; ?></td>
                    <td><?php echo $mos[2]; ?></td>
                    <td><?php echo $mos[3]; ?></td>
                    <td><?php echo $mos[4]; ?></td>
                    <td><?php echo $mos[5]; ?></td>
                    <td><a href="<?php echo $mos[6]?>" download > <img src="./../img/file.png" alt=""> </a></td>
                    <td><?php echo $mos[7]; ?></td>
                    <td><?php echo $mos[8]; ?></td>
                    <td><?php echo $mos[9]; ?></td>
                    <td><?php echo $mos[10]; ?></td>
                    <td><?php echo $mos[11]; ?></td>
                    <td><?php echo $mos[12]; ?></td>
                    </tr>
                    <?php
                        }
                    ?>
            </tbody>
        </table>
    </div>
    </div>
    </center>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>    
</body>
</html>