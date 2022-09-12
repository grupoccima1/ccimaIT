<?php
session_start();
$usuario = $_SESSION['username'];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/moment.min.js"></script>
    <!--full calendar-->
    <script src="js/fullcalendar.min.js"></script>
    <link rel="stylesheet" href="css/fullcalendar.min.css">
    <script src="js/es.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../css/sti.css">

    <title>Agenda Cima</title>
</head>
<body>

<header>
      <div class="container">
        <a href="../index.php"><p class="logo">CcimaIT!</p></a>  
      </div>
    </header>

    <div class="container">
        
        <div class="row"> 
            <div class="col"></div>
            <div class="col-7"><div id="calendarioweb"></div></div>
            <div class="col"></div>
        </div>

    </div>
    

    <script>
        $(document).ready(function(){
            $('#calendarioweb').fullCalendar({
                header:{
                    left:   'today,prev,next,Miboton',
                    center: 'title',
                    right:  'dayGridMonth,agendaWeek,agendaDay'
            },
            dayClick:function(date,jsEvent,view){
                $('#txtFecha').val(date.format());
                $("#modalEventos").modal();
            },
            
             events:'http://localhost/calendario/eventos.php',
          
            eventClick:function(calEvent,jsEvent,view){
              //mostrar titulo en h5 
              $('#tituloEvento').html(calEvent.title);
              //mostrar la informacion en los input 
                $('#txtDescripcion').val(calEvent.descripcion);
                $('#txtId').val(calEvent.id);
                $('#txtTitulo').val(calEvent.title);
                $('#txtColor').val(calEvent.color);

                FechaHora=calEvent.start._i.split(" ");
                $('#txtFecha').val(FechaHora[0]);
                $('#txtHora').val(FechaHora[1]);

                $("#modalEventos").modal();

            }
            
            });
        });


    </script>

 

      <!-- Modal (agregar,modificar,eliminar) -->
<div class="modal fade" id="modalEventos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="tituloEvento"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

        <div class="table-responsive">
          <table class="table">
            <tbody>
              <tr class="">
                <td>Id:</td>
                <td><div class="mb-3">
                  <input type="text"
                    class="form-control" name="" id="txtId" aria-describedby="helpId" placeholder="" disabled>
                </div></td>
              </tr>
              <tr class="">
                <td>Fecha:</td>
                <td><div class="mb-3">
                  <input type="text"
                    class="form-control" name="" id="txtFecha" aria-describedby="helpId" placeholder="" disabled>
                </div></td>
              </tr>
              <tr class="">
                <td>Nombre:</td>
                <td><div class="mb-3">
                  <input type="text"
                    class="form-control" name="" id="txtTitulo" aria-describedby="helpId" disabled value="
                    <?php echo $usuario;?>
                    " >
                </div></td>
              </tr>
              <tr class="">
                <td>Area:</td>
                <td>
                  <div class="mb-3">
                    <select class="form-control" name="selArea" id="selArea">
                      <option value="Administracion">Administracion</option>
                      <option value="Comercialización">Comercialización</option>
                      <option value="Controller">Controller</option>
                      <option value="Desarrollo y Construccion">Desarrollo y Construccion</option>
                      <option value="Juridico">Juridico</option>
                      <option value="Nuevos Negocios">Nuevos Negocios</option>
                      <option value="Proyectos">Proyectos</option>
                      <option value="Recursos Humanos">Recursos Humanos</option>
                      <option value="Rentas">Rentas</option>
                      <option value="Direccion">Direccion</option>
                    </select>
                  </div>
                </td>
              </tr>
              <tr class="">
                <td>Hora:</td>
                <td><div class="mb-3">
                  <input type="text"
                    class="form-control" name="" id="txtHora" aria-describedby="helpId" placeholder="la hora sera asignada por el auxiliar en turno" value="" disabled>
                </div></td>
              </tr>
              <tr class="">
                <td>Notas:</td>
                <td><div class="mb-3">
                  <textarea class="form-control" name="" id="txtDescripcion" rows="3" placeholder="si requieres de algun respaldo o servicio adicional colocalo aqui"></textarea>
                </div> </textarea></td>
              </tr>
             <tr class="">
                <td>Color:</td>
                <td><div class="mb-3">
                  <input type="color"
                    class="form-control" name="" id="txtColor">
                </div> </td>
              </tr>
            </tbody>
          </table>
        </div>
 
      </div>
      <div class="modal-footer">
          
      <button type="button" id="btnAgregar" class="btn btn-success">Guardar</button>
      <button type="button" id="btnModificar" class="btn btn-success">Modificar</button>
      <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
        
      </div>
    </div>
  </div>
</div>

<script>

var NuevoEvento;

  $('#btnAgregar').click(function(){
   RecolectarDatos();
   EnviarInformacion('agregar',NuevoEvento);
  });
  
  $('#btnEliminar').click(function(){
   RecolectarDatos();
   EnviarInformacion('eliminar',NuevoEvento);
  });

  $('#btnModificar').click(function(){
   RecolectarDatos();
   EnviarInformacion('modificar',NuevoEvento);
  });
  
function RecolectarDatos(){
      NuevoEvento= {
      id:$('#txtId').val(),
      title:$('#txtTitulo').val(),
      start:$('#txtFecha').val()+" "+$('#txtHora').val(),
      color:$('#txtColor').val(),
      descripcion:$('#txtDescripcion').val(),
      textColor:"#ffffff",
      end:$('#txtFecha').val()+" "+$('#txtHora').val()
    };
}

function EnviarInformacion(accion,objEvento){
      $.ajax({
        type:'POST',
        url:'eventos.php?accion='+accion,
        data:objEvento,
        success:function(msg){
          if(msg){
            $('#calendarioweb').fullCalendar('refetchEvents');
            $('#modalEventos').modal('toggle')
          }
        },
        error:function(){
          alert("Algo salio mal");
        }
      });
}

</script>

</body>
</html>