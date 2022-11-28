<?php
require_once 'classes/compte.php'; // require inclut un fichier spécifique, tandis que require_once ne le fait que s’il n’a pas été inclus auparavant. require_once vérifie que le fichier a été inclus auparavant ou non et n’inclut que le fichier si le fichier n’a pas été inclus.

echo "<pre>";
//on instancie le compte

$compte1 = new Compte("Benoit", 500); // avec le constructeur on a instancié le $nom necessaire pour faire fonctionner l'objet new Compte
//on écrit dans la propriété titulaire

// $compte1->titulaire = "Benoit"; n'est plus necessaire vu que l'on a definit le constructeur

//on écrit dans la propriété solde
// $compte1->solde = 500; // si l'on commente cette ligne le constructeur par defaut va lui donner la valeur 100 comme indiqué entre paranthese dans __construct solde
var_dump($compte1);


$compte2 = new Compte("Jimmy");
// on ecrit la propriété titulaire du compte2

// $compte2->titulaire = "Jimmy"; n'est plus necessaire vu que l'on a definit le constructeur

//on écrit dans la propriété solde

$compte2->solde = 389.25;
var_dump($compte2);


?>