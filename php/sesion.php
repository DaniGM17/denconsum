<?php
//sesion
  session_start();
  include_once 'config.php';
  $usuario=$_POST['usuario'];
  $password=$_POST['passw'];

  $setencia = $pdo->prepare('SELECT * FROM usuarios WHERE usuario=? and passw=?');
  $setencia->execute([$usuario,$password]);
  $datos = $setencia->fetch(PDO::FETCH_OBJ);
  //print_r($datos); //Para ver que guarde los datos

  if($datos === FALSE){
    header('LOCATION: login.php');
  }elseif($setencia->rowCount() == 1){
    $_SESSION['rol'] = $datos->rol;
    header('LOCATION: ../index.php');
  }
?>
<script>
   var usuario = '<?php echo $usuario ?>';
   console.log(usuario)
</script>