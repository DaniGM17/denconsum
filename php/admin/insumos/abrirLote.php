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
    <title> Abrir Lote - Insumos </title>
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

        <h2> Abrir Nuevo Lote </h2>

        <div class="div-botones-busqueda" style="width: 86.6%; margin: 1rem 3rem 1rem 5.2rem;">
            <div class="div-buscar" style="width:60%;">
                <label> Buscar </label>
                    <div class="icon-input-buscar" >
                        <img src="../../../svg/buscar-input.svg">
                        <input class="input-buscar" type="text" id="livesearch">
                    </div>
            </div>
            <div>
                <button id="abrir-lote-btn">
                    <img class="caja" src="../../svg/abrir-lote.svg" alt="">
                    <span> Abrir Lote </span>
                </button>
            </div>

        </div>
        <div id="resultados-busqueda"></div>

        <form action="" >
            <div class="forms-container">
            <!-- <div class="entrada-salida-form1"> -->
            <div class="left-form">
                <label> Clave </label>
                <input type="text" required placeholder="000.000.0000">

                <label> Descripción </label>
                <input type="text" required>

                <label> Categoría </label>
                <select>
                    <option value=""> Cuadro Básico </option>
                    <option value=""> Analgésicos </option>
                    <option value=""> Material De Curación </option>
                </select>
            </div>
            <!-- <div class="entrada-salida-form2"> -->
            <div class="right-form">
                <label> Número de Lote </label>
                <input type="text" required>

                <label> Fecha de Caducidad </label>
                <input type="text">

                <label> Cantidad </label>
                <input type="text" required>

                <label> Dotación </label>
                <select>
                    <option value=""> Dotación </option>
                    <option value=""> Dotación Extraordinaria </option>
                    <!-- VERIFICAR SI SE NECESITA SALIDA EXTRAORDINARIA -->
                </select>


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