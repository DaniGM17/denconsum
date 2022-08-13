<?php  include('../../config.php'); 
$instruccion = 'SELECT * from listausuarios';
$consulta = $pdo ->prepare($instruccion);//prepara
$consulta->execute();//ejecutar
$resultado = $consulta->fetchAll();//fetch para uno

$test = json_encode($resultado); // experimental
?>
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
    <title> Usuarios </title>
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

        <a href="agregarUsuario.php?den=<?php echo $dato['idUsuario']?>">
        <button id="agregar-usuario-btn">
            <img src="../../../svg/agregar.svg">
            <span> Agregar Usuario </span>
        </button>
        </a>


        <table>
            <thead>
                <tr>
                    <th> Usuario </th>
                    <th> Nombre </th>
                    <th> Rol </th>
                </tr>
            </thead>
            <tbody>
                <?php
                foreach ($resultado as $dato): ?>
                <tr>
                    <td><?php echo $dato['usuario']?></td>
                    <td><?php echo $dato['nombre']?></td>
                    <td><?php echo $dato['rol']?></td>
                    <td>
                        <div>
                            
                            <button class='editar-usuario-btn'  >
                                <img src='../../../svg/editar.svg'>
                            </button>
                            
                            <button class='eliminar-usuario-btn'  >
                                <img src='../../../svg/eliminar-dropmenu.svg' name="<?php echo $dato['idUsuario']?>">
                            </button>                            
                        </div>
                    </td>
                </tr>
                <?php endforeach ?>
            </tbody>
        </table>

        <!-- M O D A L -->
        <div class="modal-container">
            <div class="modal-eliminar">
                <h3> Eliminar Usuario </h3>
                <p> ¿Está seguro de eliminar al siguiente usuario? </p>
                <div class="table-container">
                    <table class="eliminar-table">
                        <thead>
                            <th> Usuario </th>
                            <th> Nombre Completo</th>
                            <th> Rol </th>
                        </thead>

                        <tbody>

                            <tr>
                                <td id="user_id_table" ></td>
                                <td id="user_full_name_table" ></td>
                                <td id="user_rol_table" ></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="btn-container">
                    <button id="cancelar-eliminar-usuario-btn">
                        <span> Cancelar </span>
                    </button>

                    <a href="../eliminar.php"><button id="confirmar-eliminar-usuario-btn">
                            <span> Eliminar </span>
                        </button></a>
                </div>
            </div>
        </div>


    </main>

    <a href=""></a>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

    <script src="../../../js/denconsum.js"></script>

    <script>
        var res = '<?php echo $test; ?>' //Contiene la data de todos los usuarios

        const btnsDelete = document.querySelectorAll('.eliminar-usuario-btn');
        
        var currentUserAfterClick;

        //Elementos de la tabla
        let userTable = document.querySelector('#user_id_table');
        let fullNameTable = document.querySelector('#user_full_name_table');
        let rollTable = document.querySelector('#user_rol_table');


        btnsDelete.forEach(btn=>{
            btn.addEventListener('click',({target})=>{
                let format = JSON.parse(res);

                console.log("Antes del try")
                try{
                    console.log("Entre al try antes del filter")
                    currentUserAfterClick = format.filter(user => user.idUsuario === target.name && user )
                    console.log(user.idUsuario)
                    console.log(currentUserAfterClick)
                    console.log("try despues del filter")
                }catch(err){
                    console.log("Entre al catch")
                    console.log(err)
                }

                userTable.innerText = currentUserAfterClick[0].usuario != undefined && currentUserAfterClick[0].usuario;
                fullNameTable.innerText = currentUserAfterClick[0].nombre != undefined && currentUserAfterClick[0].nombre;
                rollTable.innerText = currentUserAfterClick[0].rol != undefined && currentUserAfterClick[0].rol;

            })
        })

    </script>


</body>

</html>