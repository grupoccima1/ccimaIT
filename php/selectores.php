<?php
include('connect.php');

        $selectinven="select count(*) from tickets where estado='abierto'";
        $result=mysqli_query($conexion,$selectinven);
        $mostrar=mysqli_fetch_row($result);

        $selectinven1="select count(*) from tickets where estado='vencido'";
        $result1=mysqli_query($conexion,$selectinven1);
        $mostrar1=mysqli_fetch_row($result1);

        $selectinven2="select count(*) from tickets where estado='vence hoy'";
        $result2=mysqli_query($conexion,$selectinven2);
        $mostrar2=mysqli_fetch_row($result2);

        $selectinven3="select count(*) from tickets where estado='sin resolver'";
        $result3=mysqli_query($conexion,$selectinven3);
        $mostrar3=mysqli_fetch_row($result3);

        $selectinven4="select count(*) from tickets where estado ='en espera'";
        $result4=mysqli_query($conexion,$selectinven4);
        $mostrar4=mysqli_fetch_row($result4);

        $selectinven5="select count(*) from tickets where estado ='cerrado'";
        $result5=mysqli_query($conexion,$selectinven5);
        $mostrar5=mysqli_fetch_row($result5);
?>