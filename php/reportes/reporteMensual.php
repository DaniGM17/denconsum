<?php  require_once('../../php/disney.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../css/normalize.css">
    <link rel="stylesheet" href="../../css/estilosDenconsum.css">
    <!-- F U E N T E S -->
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@500&display=swap" rel="stylesheet">
    <title> Reportes - Mensual </title>
</head>
<body>
    <?php require_once("../navBar/navBar.php"); ?>

    <header>
        <h1 id="titulo-header"> Reportes </h1>
        <?php
            $fechaActual = date('d-m-Y'); 
            echo "<h2 id='fecha'>".$fechaActual."</h2>"; 
        ?>
        <h3> denconsum </h3> 
    </header>

    <main>
        <nav class="navbar-reportes">
            <ul class="navbar-reportes-nav">
                <li class="nav-rep-item">
                    <img src="../../svg/reporteMensual.svg" alt="">
                    <span class="link-reportes"> Mensual </span>
                </li>
                <li class="nav-rep-item">
                    <img src="../../svg/rangoFechas.svg" alt="">
                    <span class="link-reportes"> Rango de Fechas </span>
                </li>
            </ul>
        </nav>

        <div class="div-botones-busqueda">
        <div class="div-buscar">
            <label> Buscar </label>
                <div class="icon-input-buscar">
                    <img src="../../svg/buscar-input.svg">
                    <input class="input-buscar" type="text" id="livesearch">
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

            <div class="select-mes-rep">
                <label> Mes </label>
                <select name="mes-rep">
                    <option value=""> --- </option>
                    <option value=""> Enero </option>
                    <option value=""> Febrero </option>
                    <option value=""> Marzo </option>
                    <option value=""> Abril </option>
                    <option value=""> Mayo </option>
                    <option value=""> Junio </option>
                    <option value=""> Julio </option>
                    <option value=""> Agosto </option>
                    <option value=""> Septiembre </option>
                    <option value=""> Octubre </option>
                    <option value=""> Noviembre </option>
                    <option value=""> Diciembre </option>
                </select>
            </div>

            <div class="div-generar-reporte">
                <button id="generar-reporte-btn">
                    <img src="../../svg/generarReporte.svg">
                    <span> Generar Reporte </span>
                </button>
            </div>
        </div>

        
    </main>
    

</body>
</html>