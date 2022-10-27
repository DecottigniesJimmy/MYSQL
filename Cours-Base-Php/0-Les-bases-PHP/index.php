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
    // NE JAMAIS OUBLIER DE METTRE ; A LA FIN DE CHAQUE INSTRUCTION

    echo "<h1>Bonjour Benoit en php / html Classique</h1>";; // Afficher le contenue sur la page

    $personName = "Benoit";

    // L'injection de variable fonctionne UNIQUEMENT avec les ""; pas avec les ''
    echo "<h2>Bonjour $personName avec variable php</h2>";

    // Les Types de variables
    // Entiers (integer)
    $nombre = 85;

    echo "<p>$nombre</p>";

    // Décimaux (float)
    $nombre2 = 85.4; // un . pour décimal et non ,

    // Chaines de caractères (string)
    $chaine = "Ceci est un texte"; 

    //Booléen (boolean)
    $booleen = true; // false

    echo "<p>$booleen</p>";

    // Pour le débug connaitre le contenu et le type d'une variable

    var_dump($nombre);

    ?>
</body>

</html>