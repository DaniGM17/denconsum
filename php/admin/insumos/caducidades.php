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
    <title> Caducidades - Insumos </title>
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

    <div class="div-botones-busqueda">
        <div class="div-buscar">
            <label> Buscar </label>
            <div class="icon-input-buscar">
                <img src="../../../svg/buscar-input.svg">
                <input class="input-buscar" type="text">
            </div>
        </div>

        <div class="div-categoria">
                <label> Categoría </label>
                <select name="catg-insumos" id="catg-insumos">
                    <option value=""> --- </option>
                    <option value=""> Cuadro Básico </option>
                    <option value=""> Analgésicos </option>
                    <option value=""> Material de Curación </option>
                </select>
        </div>

        <div class="colores-cad">
            <div>
                <img src="../../../svg/rojo-cad.svg" alt="">
                <span class="span-cad"> < 3 M </span>
            </div>
            
            <div>
                <img src="../../../svg/amarillo-cad.svg" alt="">
                <span class="span-cad"> < 6 M </span>
            </div>
            
            <div>
                <img src="../../../svg/verde-cad.svg" alt="">
                <span class="span-cad"> > 6 M </span>
            </div>
        </div>
    </div>

    <table>
        <thead>
            <tr>
                <th> Clave </th>
                <th> Descripción </th>
                <th> Categoría </th>
                <th> Lote </th>
                <th> Cantidad </th>
                <th> Caducidad </th>
            </tr>
        </thead>
        <tbody>
           
        </tbody>
    </table>



</main>


<script
    src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
    crossorigin="anonymous"></script>
    
    <script src="../../../js/denconsum.js"></script>
</body>
</html>