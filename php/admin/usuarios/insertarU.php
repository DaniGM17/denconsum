<!--Conexión con base de datos-->
<?php
session_start();
include('../../config.php');
if(isset($_POST['guardar'])){
  $usuario = $_POST['usuario'];
  $nombre = $_POST['nombre'];
  $apellidoPaterno = $_POST['apellidoPaterno'];
  $apellidoMaterno = $_POST['apellidoMaterno'];
  $passw1 = $_POST['passw1'];
  $rol = $_POST['rol'];

  try{
    $query = "INSERT INTO usuarios(idUsuario,usuario,nombre,apellidoPaterno,apellidoMaterno,passw,rol) VALUES ('',:usuario,:nombre,:apellidoPaterno,:apellidoMaterno,:passw1,:rol)";
    $statement = $pdo->prepare($query);

    $data = [
      ':usuario'=> $usuario,
      ':nombre'=> $nombre,
      ':apellidoPaterno'=> $apellidoPaterno,
      ':apellidoMaterno'=> $apellidoMaterno,
      ':passw1'=> $passw1,
      ':rol'=> $rol
    ];
    $query_execute=$statement->execute($data);

    if($query_execute){
      $_SESSION['message']="Insertados correctamente";
      header('LOCATION: usuarios.php');
      exit(0);
    }
  }catch(PDOException $e){
    echo $e->getMessage();
  }

}
?>