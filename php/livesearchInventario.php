<?php
    include('config.php');
    if (isset($_POST['insumo'])) {
        $input = $_POST['insumo'];

        $query = "SELECT cveRec, descInsum, categoria FROM insumo WHERE descInsum LIKE '{$input}%'";

        $result = mysqli_query($conexion, $query);

        if (mysqli_num_rows($result) > 0 ) { ?>
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
                                <div>
                                     <img src='../../svg/vistaGeneral.svg'>
                                     <img src='../../svg/editar.svg'>
                                     <img src='../../svg/eliminar-dropmenu.svg'> </td>
                                </div>
                            </td> 
                        </tr>
                        
                        <?php
                    }
                    ?>
                </tbody>

                <button class='editar-insumo-btn'>
                <button class='vista-general-btn'>
                <button class='eliminar-insumo-btn'>
            </table>

            <?php
        } else {
            echo "<h6> No Hay Datos </h6>";
        }
    }
?>