<?php
//redirigir
require 'php/config.php';
session_start();

if (!isset($_SESSION['rol'])){
    header('LOCATION: php/login.php');
}elseif(isset($_SESSION['rol'])){
    switch($_SESSION['rol']){
        case 1:
            header ('LOCATION: php/admin/consumo/consumo.php');
            break;
        case 2:
            break;
        case 3:
            break;
    }
}

?>