<?php
    //Conexion servidor
    $connection = @mysql_connect("localhost","root","") or die("No se encontró el servidor");
    //Conexion base de datos
    mysql_select_db("base_de_datos_cai",$connection)or die("No se encontró la base de datos");
?>