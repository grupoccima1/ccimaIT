<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <script src="https://kit.fontawesome.com/fcdf70aeb7.js" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="css/estilo.css">
</head>
<body>
    

    <form class="formulario" method="post" action="php/iniciar_sesion.php">

        <h1>Login</h1>
        <div class="contenedor">



            <div class="input-contenedor">
                <i class="fa-solid fa-envelope icon"></i>
                <input type="text" id="usuario" name="usuario" placeholder="Usuario">
            </div>

            <div class="input-contenedor">
                <i class="fa-solid fa-key icon"></i>
                <input type="password" id="pass" name="password" placeholder="Password">
            </div>

            <button class="button" type="sumbit">Login</button>
            <p>Al registrarte aceptas nuestras condiciones de uso y politica de privacidad</p>
            <p>¿No tienes cuenta?<a class="link" href="html/registro.html">Registrate</a></p>
        </div>
    </form>
</body>
</html>