<?php  require_once('../../config.php'); ?>
<!DOCTYPE html>
<html lang="en">
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
    <title> Agregar Usuario - Usuario </title>
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
    <h2 class="titulos-cr-up"> Agregar Usuario </h2>

        <form action="insertarU.php" method="POST">
            <div class="forms-container">
                <div class="left-form">
                    <label> Nombre </label>
                    <input type="text" name="nombre" required placeholder="Susana">
                    
                    <label> Apellido Paterno </label>
                    <input type="text" name="apellidoPaterno" required placeholder="Montiel">

                    <label> Apellido Materno </label>
                    <input type="text" name="apellidoMaterno" required placeholder="Fuentes">

                    <label> Rol </label>
                    <select name="rol">
                        <option value="1"> Administrador </option>
                        <option value="2"> Operativo </option>
                        <option value="3"> Visitante </option>
                    </select>
                </div>

                <div class="right-form">
                    <label> Usuario </label>
                    <input type="text" name="usuario" required placeholder="josumf">

                    <label> Contraseña </label>
                    <input type="password" name="passw1" required>

                    <label> Confirmar Contraseña </label>
                    <input type="password" name="passw2" required>

                    <button id="guardar-guardar-usuario-btn" name="guardar">
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