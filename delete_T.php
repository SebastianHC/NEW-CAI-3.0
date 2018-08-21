<?php 
	include_once 'conexion.php';
	$teacherId = $_GET['id'];
	$sentencia = $dbconnection -> prepare("DELETE FROM teachers WHERE id = ?");
	$resultado = $sentencia -> execute([$teacherId]);
	if ($resultado) {
		header('Location: view_T.php');
	}
	else{
		echo "Error";
	}
 ?>