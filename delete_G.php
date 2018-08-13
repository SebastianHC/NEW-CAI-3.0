<?php 
	include_once 'conexion.php';
	$groupsId = $_GET['id'];
	$sentencia = $dbconnection -> prepare("DELETE FROM groups WHERE id = ?");
	$resultado = $sentencia -> execute([$groupsId]);
	if ($resultado) {
		header('Location: view_G.php');
	}
	else{
		echo "Error";
	}
 ?>