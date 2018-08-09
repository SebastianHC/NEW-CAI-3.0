<?php 
	$user = "root";
	$pass = "";
	$db_name = "base_de_datos_cai";
	try {
		$dbconnection = new PDO('mysql:host=localhost;dbname='.$db_name,$user,$pass);
	} catch (Exception $e) {
		echo "Error en la conexion";
	}
 ?>