<?php
    require_once("../config.php");
    $id = $_POST['id'] ?? null;
    if (!$id) {
        echo "NoN";
        // header('Location: inventario.php');
        // exit;
    }

    $statement = $pdo->prepare("DELETE FROM insumo WHERE id_insumo = (:id)");
    //columna id corresponde al input id
    $statement->bindValue(":id", $id);
    $statement->execute(); 

    header("Location: inventario.php");

    echo "<pre>";
    var_dump($id);
    echo "</pre>";
?>