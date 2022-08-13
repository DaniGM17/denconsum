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
    <title> Editar Insumo - Inventario </title>
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

        <h2 class="titulos-cr-up"> Editar Insumo </h2>

        <form action="">
            <div class="forms-container">
                <div class="left-form">
                    <label> Clave </label>
                    <input type="text" required placeholder="000.000.0000"> 
                        
                    <label> Descripción </label>
                    <input type="text" required placeholder="Amalgama dental polvo de aleacion...">

                    <label> Categoría </label>
                    <select name="categoria">
                        <option value=""> Cuadro Básico </option>
                        <option value=""> Analgésicos </option>
                        <option value=""> Material De Curación </option>
                    </select>
                    
                    <label> Presentación </label>
                    <input type="text">

                </div>
                <div class="right-form">      
                    <label> Piezas </label>
                    <input type="text" required placeholder="10">

                    <label> Descripción de presentación </label>
                    <input type="text" required placeholder="Cáspulas de 400mg">

                    <label> Código de Barras </label>
                    <input type="text" required >

                    <button id="guardar-editar-insumo-btn">
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