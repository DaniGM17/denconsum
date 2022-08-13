<?php
    include("config.php");
    if (isset($_POST["insumoConsumo"])) {
        $input = $_POST["insumoConsumo"];

        $query = "SELECT idInsumo, claveRecurso, descripcionInsumo, categoria FROM insumos WHERE descripcionInsumo LIKE '{$input}%' LIMIT 5";

        $result = mysqli_query($pdo, $query);

        echo "<pre>";
        var_dump($result);
        echo "</pre>";


        if(mysqli_num_rows($result) > 0) { ?>
            <table class="resultados-tbl">
                <thead>
                    <tr>
                        <th> Clave </th>
                        <th> Descripción </th>
                        <th> Categoría </th>
                        <th> Disponible </th>
                    </tr>
                </thead>

                <tbody>
                    <?php
                    while($row = mysqli_fetch_assoc($result)) {
                        $clave = $row["cveRec"];
                        $descInsumo = $row["descInsum"];
                        $categoria = $row["categoria"];

                        ?>
                        
                        <tr>
                            <td> <?php echo $clave; ?> </td>
                            <td> <?php echo $descInsumo; ?> </td>
                            <td> <?php echo $categoria; ?> </td>
                            <td> # </td>
                            <td> 
                               
                            </td> 
                        </tr>

                        <?php
                    }
                    ?>
                </tbody>

            </table>

            <?php
            }
        }
        else {
            echo "<h6> No hay Datos </h6>";
        }
?>