<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<?php
    // en PHP on peut forcer un type de données pour passer au dessus du type définir par défaut avec php
    $myString = "Vive les formateurs";
    $myInteger = (integer)$myString;
    var_dump($myInteger);

echo "<br>";

    $myNum = "12";
    $myNum2 = 24;
    $myInteger2 = (integer)$myNum + $myNum2;
    var_dump($myInteger2);

echo "<br>";

    // Arrondir a l'entier supérieur
    $c = 9.99;
    echo ceil($c);

echo "<br>";
    // Arrondir a l'entier inférieur
    $d = 5.50;
    echo floor($d);

?>
    
</body>
</html>