<?php  require_once('../../config.php'); ?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../../css/normalize.css">
    <link rel="stylesheet" href="../../../css/estilosDenconsum.css">
    <!-- F U E N T E S -->
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@500&display=swap" rel="stylesheet">
    <title> Editar Usuario - Usuarios </title>
</head>
<body>
<?php require_once("../navBar/navBar.php"); ?>
   <header>
   <h1 id="titulo-header"> Usuarios </h1>
        <?php
            $fechaActual = date('d-m-Y'); 
            echo "<h2 id='fecha'>".$fechaActual."</h2>"; 
         ?>
        <h3> denconsum </h3> 
   </header>
   
   <main>
        <h2 class="titulos-cr-up"> Editar Usuario </h2>

        <form action="">
            <div class="forms-container">
                <div class="left-form">
                    <label> Nombre </label>
                    <input type="text" required placeholder="">
                    
                    <label> Apellido Paterno </label>
                    <input type="text" required placeholder="">

                    <label> Apellido Materno </label>
                    <input type="text" required placeholder="">

                    <label> Rol </label>
                    <select name="rol">
                        <option value=""> Administrador </option>
                        <option value=""> Operativo </option>
                        <option value=""> Visitante </option>
                    </select>
                </div>

                <div class="right-form">
                    <label> Usuario </label>
                    <input type="text" required placeholder="">

                    <label> Contraseña </label>
                    <input type="text" required>

                    <label> Confirmar Contraseña </label>
                    <input type="password" required>

                    <button id="guardar-editar-usuario-btn">
                        <span> Guardar </span>
                    </button>
                </div>
            </div>
        </form>
   </main>

   <script
    src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
    crossorigin="anonymous"></script>
    
    <script src="../../../js/denconsum.js"></script>

</body>
</html>