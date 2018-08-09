<?php 

	$host_db = "localhost";
 	$user_db = "root";
 	$pass_db = "";
 	$db_name = "base_de_datos_cai";


	$conexion = new mysqli($host_db,$user_db,$pass_db,$db_name);

	if($conexion->connect_error){
		die("La conexion ha fallado: ".$conexion->connect_error);
	}

	$buscarUsuario = "SELECT * FROM teachers WHERE idTeacher_T = '$_POST[idteacher]'";

	$result = $conexion->query($buscarUsuario);
	$count = mysqli_num_rows($result);

	if($count == 1){
		$query = "INSERT INTO groups (nombreGrupo,maestro_id,nivel,alumnos) VALUES ('$_POST[nombre]','$_POST[idteacher]','$_POST[nivel]',NULL)";
		if($conexion->query($query)==TRUE){
			echo"<br/>"."<h2>"."Grupo creado exitosamente!"."</h2>";
		}
		else{
			echo"Error al crear grupo".$query."<br>".$conexion->error;
		}
	}
	else{
		echo"No existe el ID del profesor"."<br/>";
		echo"<a href='register_G.php'>Ingrese un ID correcto</a>";
	}

?>