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
    <title> Entrada / Salida - Insumos </title>
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
    
    <div class="div-entrada-salida">
        <button id="entrada-btn"> 
            <span> Nueva Entrada </span>
        </button>
        <button id="salida-btn">
            <span> Nueva Salida </span>
        </button>
    </div>

    <!-- FORMULARIO PARA NUEVA ENTRADA  -->

    <!-- <form action="" class="entrada-salida-form"> -->
    <form action="" class="entrada-form">

        <h2> Nueva Entrada </h2>
        <div class="div-buscar-es">
            <label> Buscar </label>
            <div class="icon-input-buscar-es">
                <img src="../../../svg/buscar-input.svg">
                <input class="input-buscar-es" type="text" id="livesearch">
            </div>
            <div id="resultados-busqueda"></div>
        </div>
        
        <div class="forms-container">
            <div class="left-form">

                <label for=""> Clave </label>
                <input type="text">
                <label for=""> Descripción </label>
                <input type="text">

                <label for=""> Categoría </label>
                <input type="text">

                <label for=""> Lote </label>
                <input type="text">
            </div>

            <div class="right-form">
                <label for=""> Caducidad </label>
                <input type="text">

                <label for=""> Cantidad </label>
                <input type="text">

                <label for=""> Tipo </label>
                <input type="text">

                <label for=""> Fecha </label>
                <input type="text">
                
                <button id="guardar-entrada-btn"> 
                    <span> Guardar </span>
                </button>
            </div>
        </div>
    </form>

    <!-- FORMULARIO PARA NUEVA SALIDA  -->
    
    <form action="" class="salida-form">
        <h2> Nueva Salida </h2>
        <div class="div-buscar-es">
            <label> Buscar </label>
            <div class="icon-input-buscar-es">
                <img src="../../../svg/buscar-input.svg">
                <input class="input-buscar-es" type="text" id="livesearch-salida">
            </div>
            <div id="resultados-busqueda-salida"></div>
        </div>
        
        <div class="forms-container">
            <div class="left-form">
                <label for=""> Clave </label>
                <input type="text">
                <label for=""> Descripción </label>
                <input type="text">

                <label for=""> Categoría </label>
                <input type="text">

                <label for=""> Lote </label>
                <input type="text">
            </div>

            <div class="right-form">
                <label for=""> Caducidad </label>
                <input type="text">

                <label for=""> Cantidad </label>
                <input type="text">

                <label for=""> Tipo </label>
                <input type="text">

                <label for=""> Fecha </label>
                <input type="text">
                
                <button id="guardar-entrada-btn"> 
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