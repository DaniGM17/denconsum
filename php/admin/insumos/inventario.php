<?php  include('../../config.php'); 
$instruccion = 'SELECT * from insumos';
$consulta = $pdo ->prepare($instruccion);//prepara
$consulta->execute();//ejecutar
$resultado = $consulta->fetchAll();//fetch para uno

$test = json_encode($resultado); // experimental
?>
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
    <title> Insumos - Inventario </title>
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

            <div class="div-disponibilidad">
                <label> Disponible </label>
                <input type="checkbox" />
            </div>

            <div class="div-administrar">
                <button id="registrar-insumo-btn">
                    <img src="../../../svg/agregar.svg" class="puntos" alt=""> 
                    <span style="font-size:1.2vw;"> Registrar Nuevo Insumo </span> 
                </button>
            </div>
        </div>

        <div id="resultados-busqueda"></div>

        <!--  TABLA PARA MOSTRAR TODOS LOS INSUMOS  -->
        <table>
            <thead>
                <tr>
                    <th> Clave </th>
                    <th> Descripción </th>
                    <th> Categoría </th>
                    <th> Disponible </th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <?php
                foreach($resultado as $insumos) { ?>
                <tr>                    
                    <td> <?php echo $insumos['claveRecurso']; ?> </td>
                    <td> <?php echo $insumos['descripcionInsumo']; ?> </td>
                    <td> <?php echo $insumos['categoria']; ?> </td>
                    <td> # </td>
                    <td> 
                        <div>
                            <button class='vista-general-btn'> 
                                <img src='../../../svg/vistaGeneral.svg'> 
                            </button>

                            <button class='editar-insumo-btn'> 
                                <img src='../../../svg/editar.svg'>
                             </button>

                            <button class='eliminar-usuario-btn'  >
                                <img src='../../../svg/eliminar-dropmenu.svg' name="<?php echo $dato['idInsumo']?>">
                            </button>
                        </div>
                    </td> 
                </tr>
              <?php  } ?>
            </tbody>     
        </table>

        <!-- M O D A L   P A R A   V I S T A   G R A L  Y  E L I M I N A R-->
        <div class="modal-container">
            <div class="vista-gral">
                <div class="insumo-info">
                    <h2> Vista General </h2>

                    <span> Clave Del Insumo </span>
                    <p id="clave-vista-gral">12345</p>

                    <span>Descripción Del Insumo</span>
                    <p id="descripcion-vista-gral">###############</p>

                    <span>Presentación</span>
                    <p id="presentacion-vista-gral">#############</p>

                    <span>Categoría</span>
                    <p id="categoria-vista-gral">#############</p>

                    <button id="cerrar-vista-gral"> Cerrar </button>
                </div>

                <div class="existencias-vista-gral">
                    <table class="tabla-vista-gral">
                        <thead>
                            <tr>
                                <th> Agosto </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr> 
                                <td> Fondo Fijo </td>
                                <td> # </td>
                            </tr>
                            <tr> 
                                <td> Existencia Inicial </td>
                                <td> # </td>
                            </tr>
                            <tr> 
                                <td> Dotación </td>
                                <td> # </td>
                            </tr>
                            <tr> 
                                <td> Dotación Extraordinaria </td>
                                <td> # </td>
                            </tr>
                            <tr> 
                                <td> Dotación Total </td>
                                <td> # </td>
                            </tr>
                            <tr> 
                                <td> Salida Extraordinaria </td>
                                <td> # </td>
                            </tr>
                            <tr> 
                                <td> Disponible </td>
                                <td> # </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- M O D A L  P A R A   E L I M I N A R-->

            <div class="modal-eliminar">
                <h3> Eliminar Insumo </h3>
                <p> ¿Está seguro de eliminar el siguiente registro? </p>
                <div class="table-container">
                    <table class="eliminar-table">
                        <thead>
                            <tr>
                                <th> Clave </th>
                                <th> Descripción </th>
                                <th> Categoría </th>
                                <th> Disponible </th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <!-- AQUI DEBERIA IR LOS DATOS OBTENIDOS DE LA TABLA -->
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
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
            </div>
        </div>
    </main>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

    <script src="../../../js/denconsum.js"></script>

    <!--
    <script
    src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
    crossorigin="anonymous"></script>
    
    <script src="../denconsum.js"></script>
    <script>
        var eliminarBtn = document.querySelectorAll(".eliminar-insumo-btn");

        for (var i = 0; i < eliminarBtn.length; i++){
            eliminarBtn[i].addEventListener("click", function() {
                var resultado = confirm("¿Estás seguro de eliminar el insumo?");
                if (resultado == false) {
                    event.preventDefault();
                }

            })
        }

    </script> -->

</body>
</html>