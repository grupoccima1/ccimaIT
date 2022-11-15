<?php
session_start();
$usuario = $_SESSION['username'];
require_once 'php/connect.php';
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>CcimaIT!</title>
    <link rel="stylesheet" href="css/st.css" />
  </head>
  <body>
    <header>
      <div class="container">
        <a href="#"><p class="logo">CcimaIT!</p></a>  
        <nav>
        <a href="#somos">Quienes Somos</a>
          <a href="#nuestros-ser">Nuestros Servicios</a>
          <a href="#aplica-ya">Mantenimiento</a>
          <a href = 'php/cerrar_sesion.php'>
            out
        </a>

          <a href="#">
            <?php
            if(!isset($usuario)){
              header("location: login.php");
            }else{
              echo "Bienvenid@ $usuario";
            
              echo "";
            }
            ?>
          </a>
        </nav>
      </div>
    </header>
    <section id="hero">
      <h1>
        Resolvemos tus problemas <br />
        de Informatica.
      </h1>
    </section>
    <section id="somos">
      <div class="container">
        <div class="img-container"></div>
        <div class="texto">
        <h2>Somos <span class="colora">Ccima IT!</span></h2>
        <p>
          Somos un area encargada de resolver los problemas relacionados con
          problemas informaticos, tales como conexiones LAN, configuracion de servidores,
          desarrollo de sorftware especializado, mantenimiento preventivo y correctivo a equipo de computo,
          mantenimeinto de actualizacion, instalacion de software.
        </p>
    </div>
      </div>
    </section>
    <section id="nuestros-ser">
      <div class="container">
        <h2>Nuestros Servicios</h2>
        <div class="programas">
        <div class="carta">
          <h3>Soporte</h3>
          <p>
            Agenda tu cita para realizar el mantenimiento a tu equipo de computo.
          </p>
          <a href="php/tickets.php"> <button>+ Info</button> </a>
        </div>
        <div class="carta">
          <h3>Desarrollo</h3>
          <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit.
            Perspiciatis obcaecati fuga molestiae nesciunt nisi consequatur ea
            officiis eius nihil repellat optio nostrum, aut impedit earum,
            laudantium, omnis delectus ex aperiam!
          </p>
          <button>+ Info</button>
        </div>
        <div class="carta">
          <h3>Infraestructura</h3>
          <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit.
            Perspiciatis obcaecati fuga molestiae nesciunt nisi consequatur ea
            officiis eius nihil repellat optio nostrum, aut impedit earum,
            laudantium, omnis delectus ex aperiam!
          </p>
          <button>+ Info</button>
        </div>
    </div>
      </div>
    </section>
    <section id="aplica-ya">
        <h2>Agenda tu mantenimiento</h2>

      <?php
      
      $consul = "SELECT area FROM `usuarios` WHERE usuario = '$usuario'";
      $query = mysqli_query($conexion,$consul);
      $mostrar=mysqli_fetch_row($query);
      if ($mostrar['0'] == 'TI') {
        $ruta = "http://localhost/proyecto/calendario/index.php";
      } else {
        $ruta = "http://localhost/proyecto/calendariousu/index.php";
      }
      ?>
       <a href=" <?php echo $ruta; ?> "> <button>AGENDA</button> </a>


    </section>

    <footer>
        <div class="container">
            <p>&copy; Jose Reno, &copy; Juan Lira 2022</p>
        </div>
    </footer>
  </body>
</html>
