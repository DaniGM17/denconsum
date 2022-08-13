<?php
//conexion con bd
$url = 'mysql:host=localhost; dbname=denconsum';
$user = 'denAdmin';//usuario administrador
$password = 'riskis75';

try{
    $pdo = new PDO($url, $user, $password);
} catch (PDOException $e){
    print "Error: " . $e ->getMessage() . "<br/>";
    die();
}
?>