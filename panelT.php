<?php
session_start();
include 'dbconnect.php';

if(isset($_SESSION['idTeacher_T'])) {?>
<!DOCTYPE html>
<html>
<head>
  <title>Dashboard</title>
  <meta charset="utf-8">
</head>
<body>
<div>
  <article>
    <p> 
        conexion exitosa Teacher.
    </p>
  </article>
  <a href="logoutT.php"><button>Salir</button></a>
</div>
</body>
</html>
<?php
}else{
	echo '<script> window.location="indexT.php"; </script>';
}
?>