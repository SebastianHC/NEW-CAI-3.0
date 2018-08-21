<?php 
	include_once 'conexion.php';
	$studentsId = $_GET['id'];
	$sentencia = $dbconnection -> prepare("DELETE FROM students WHERE id = ?");
	$resultado = $sentencia -> execute([$studentsId]);
	if ($resultado) {
		header('Location: view_S.php');
	}
	else{
		echo "Error";
	}
 ?>