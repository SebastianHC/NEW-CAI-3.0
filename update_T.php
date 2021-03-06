<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <!--Esto sirve para escalar nuestra pagina web en diferentes dispositivos con diferentes dimesiones-->
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scale=no, initial-scale=1, maximum-scale=1,minimum-scale=1">
  <title>CAI | Reg-Teachers</title>
  <!--Agregamos los archivos css de bootstrap-->
  <link rel="stylesheet" href="css/bootstrap.min.css" id="bootstrap-css">
  <!--Agregamos los archivos js de bootstrap-->
  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!--Estilo css personalizado-->
  <link rel="stylesheet" href="css/signin.css">

</head>
<!--Inicia el cuerpo de nuestro index-->
<!--Navbar-->
<body class="text-center">
        <nav class="navbar navbar-expand-lg navbar-light"style="background-color: #663399;">
      <a class="navbar-brand text-warning" href="index.php">CAI</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
           <li class="nav-item">
              <a class="nav-link text-warning" href="logoutSU.php">Log out</a>
            </li>
        </ul>
      </div>
  </nav>
  
  <!--AQUI ES DONDE SE EMPIEZA-->

  <!--Titulo-->
  <div class="jumbotron text-center">
  <h1 class="display-4">Update for Teachers</h1>
  <p class="lead">This is the Form of Update for Teachers of CAI in the Univerity Polytechnic of Victoria.</p>
  </div>  

  <!--List Group-->
<div class="container"> 
<div class="list-group float-right">
  <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
    <div class="d-flex w-100 justify-content-between">
      <h5 class="mb-1">Id</h5>
    </div>
    <p class="mb-1">The "Id" is created by the person in charge.</p>
    <small class="text-muted">Example: xxxxxx.</small>
  </a>
  <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
    <div class="d-flex w-100 justify-content-between">
      <h5 class="mb-1">E-mail</h5>
    </div>
    <p class="mb-1">The "E-mail" is the e-mail address of the teacher.</p>
    <small class="text-muted">Example: teache@upv.edu.mx.</small>
  </a>
  <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
    <div class="d-flex w-100 justify-content-between">
      <h5 class="mb-1">Phone Number</h5>
    </div>
    <p class="mb-1">The "Phone Number" is the number of the teacher just in case.</p>
    <small class="text-muted">Example: 834-xxx-xx-xx.</small>
  </a>
</div>

  <!--Form-->
<form action="update_Save_T.php" method="post">


    <div class="form-group col-md-5">
      <label for="nameteach">Teacher ID</label>
      <input type="text" minlength="7" maxlength="7" class="form-control" name="idTeacher_T" placeholder="ID">
    </div>

    <div class="form-group col-md-5">
      <label for="nameteach">Teacher Password</label>
      <input type="text" minlength="1" maxlength="100" class="form-control" name="password_T" placeholder="Password">
    </div>

    <div class="form-group col-md-5">
      <label for="nameteach">Name</label>
      <input type="text" class="form-control" name="name_T" placeholder="Name">
    </div>

    <div class="form-group col-md-5">
      <label for="nameteach">First Surname</label>
      <input type="text" class="form-control" name="surnameF_T" placeholder="Last Name">
    </div>

    <div class="form-group col-md-5">
      <label for="nameteach">Second Surname</label>
      <input type="text" class="form-control" name="surnameM_T" placeholder="Second Last Name">
    </div>


    <div class="form-group col-md-5">
      <label for="mailteach">E-mail</label>
      <input type="email" class="form-control" name="email_T" placeholder="E-mail">
    </div>

    <div class="form-group col-md-5">
      <label for="numberteach">Phone-Number</label>
      <input type="number" class="form-control" name="phoneNumber_T" placeholder="Phone-Number">
    </div>
</div>
  <button type="submit" name= "saveT" class="btn btn-primary">Save</button>
  <a type="cancel" href="panelSU.php" class="btn btn-primary" >Cancel</a>
  <br>
  <br>
</form>


</body>
</html>