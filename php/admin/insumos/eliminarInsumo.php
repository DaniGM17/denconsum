<?php
    require_once('../config.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../css/normalize.css">
    <link rel="stylesheet" href="../../css/estilosDenconsum.css">

    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@500&display=swap" rel="stylesheet">
    <title> Eliminar Insumo </title>
</head>
<body>
    <?php require_once("../navBar/navBar.php")?>
    
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

        <h3 class="eliminar-h3"> Eliminar Insumo </h3>
        <p class="eliminar-p"> ¿Está seguro de eliminar el siguiente registro? </p>
        <div class="table-container">
                    <table class="eliminar-table">
                        <thead>
                            <th> Clave </th>
                            <th> Descripción </th>
                            <th> Categoría </th>
                            <th> Disponible </th>
                        </thead>

                        <tbody>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                        </tbody>
                    </table>
                </div>
                
                <div class="btn-container">
                    <button id="cancelar-eliminar-usuario-btn">
                        <span> Cancelar </span>
                    </button>

                    <button id="confirmar-eliminar-usuario-btn">
                        <span> Eliminar </span>
                    </button>
                </div>
    </main>
</body>
</html>