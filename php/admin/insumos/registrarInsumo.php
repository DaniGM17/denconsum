<?php require_once('../../config.php'); ?>
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
    <title> Registrar Nuevo Insumo - Inventario </title>
</head>
<body>
    <?php require_once("../navBar/navBar.php"); ?>

    <header>
        <h1 id="titulo-header"> Insumos </h1>
        <?php
            $fechaActual = date('d-m-Y'); 
            echo "<h2 id='fecha'>".$fechaActual."</h2>"; 
        ?>
        <h3> denconsum </h3> 
    </header>
    
    <main>
        <?php require_once("navbarInsumos.php");  ?>

        <h2 class="titulos-cr-up"> Registrar Nuevo Insumo </h2>

        <form action="">
            <div class="forms-container">
                <div class="left-form">
                    <label for="clave"> Clave </label>
                    <input type="text" id="clave" required placeholder="000.000.0000"> 
                        
                    <label for="descripcion"> Descripción </label>
                    <input type="text" id="descripcion" required placeholder="Amalgama dental polvo de aleacion...">

                    <label for="categoria"> Categoría </label>
                    <select name="categoria" id="categoria">
                        <option value=""> Cuadro Básico </option>
                        <option value=""> Analgésicos </option>
                        <option value=""> Material De Curación </option>
                    </select>
                    
                    <label for="presentacion"> Presentación </label>
                    <input type="text" id="presentacion" >

                </div>
                <div class="right-form">      
                    <label for="piezas"> Piezas </label>
                    <input type="text" id="piezas" required placeholder="10">

                    <label for="descPresentacion"> Descripción de presentación </label>
                    <input type="text" id="descPresentacion" required placeholder="Cáspulas de 400mg">

                    <label for="cdgoBarras"> Código de Barras </label>
                    <input type="text" id="cdgoBarras" required >

                    <button id="guardar-nuevo-insumo-btn">
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