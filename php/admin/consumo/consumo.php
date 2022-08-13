<?php  require_once('../../config.php'); ?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../../css/estilosDenconsum.css">
    <link rel="stylesheet" href="../../../css/normalize.css">
    <!-- F U E N T E S -->
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@500&display=swap" rel="stylesheet">
    <title> Consumo </title>
</head>
<body>
    <?php require_once("../navBar/navBar.php"); ?>
    <header>
        <h1 id="titulo-header"> Consumo </h1>
        <?php
            $fechaActual = date('d-m-Y'); 
            echo "<h2 id='fecha'>".$fechaActual."</h2>"; 
         ?>
        <h3> denconsum </h3> 
    </header>
    <main>
        <!-- BARRA DE BUSQUEDA Y OPCIONES -->
        <div class="div-botones-busqueda">

            <div class="div-buscar" style="width:50%;">
                <label> Buscar </label>
                <div class="icon-input-buscar">
                    <img src="../../../svg/buscar-input.svg">
                    <input class="input-buscar" type="text" id="buscar-searchbar">
                </div>
            </div>
            

            <div>
                <button id="agregar-btn"> 
                    <img src="../../../svg/agregar.svg">
                    <span> Agregar </span> 
                    </button>       
            </div>

            <div>  
                <button id="finalizar-btn">
                    <img src="../../../svg/confirmar.svg">
                    <span> Finalizar </span> 
                </button>
            </div>

           
        </div>

        <div id="resultados-busqueda"></div>

        <!-- TABLA -->
        <table>
            <thead> 
                <tr>
                    <th> Clave </th>
                    <th> Descripción </th>
                    <th> Cantidad </th>
                </tr>
            </thead>
            <tbody> 
               <tr>
                    <td></td>
                    <td></td>
                    <td> <input type="text" class="input-cantidad-consumo"> </td>
               </tr>
            </tbody>
        </table>
    </main>
    

    <!-- jQuery  -->
    <script
    src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
    crossorigin="anonymous"></script>
    <script src="../denconsum.js"></script>
</body>
</html>