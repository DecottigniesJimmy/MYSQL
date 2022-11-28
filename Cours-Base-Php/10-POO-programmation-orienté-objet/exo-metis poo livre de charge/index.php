<?php
require_once "voiture.php"; // require inclut un fichier spécifique, tandis que require_once ne le fait que s’il n’a pas été inclus auparavant. require_once vérifie que le fichier a été inclus auparavant ou non et n’inclut que le fichier si le fichier n’a pas été inclus.

echo "<pre>";

    $car1 = new Voiture("BD-QK", "Rouge", 1300, 200.5, 50.5, 4 ); // la function __construc passe les valeurs des differentes propriété dans les réglages de l'objet directement.
    $car1->getniveau();
    $car1->getboard();
    $car1->getassur();
    var_dump ($car1);


?>