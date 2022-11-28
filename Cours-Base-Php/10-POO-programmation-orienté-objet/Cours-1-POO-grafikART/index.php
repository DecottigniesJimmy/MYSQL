<?php 
    require "personnage.php"; // permet de charger le fichier .php appelé

    $merlin = new Personnage("Merlin"); // on déclare un nouvel Objet
    $merlin->nom = "Merlin"; // attribue un nom a notre personnage (inutile si on utilise la methode construct)
    var_dump($merlin); // on affiche la variable objet
    var_dump($merlin ->atk); // renvoie la valeur d l'objet atk
    var_dump($merlin->crier()); // renvoie la function appeler dans personnage.php


    echo "la vie de merlin est de :";
    var_dump($merlin->vie);
    
    $merlin->regenerer();

    echo "la vie de merlin après la function regenerer :";
    var_dump($merlin->vie);

    $harry = new Personnage("Harry"); // on déclare un nouvel objet (harry merlin 2 objet different) harry qui aura que 80 de vie car il n'a pas subit la fonction régénérer
    $harry->nom = "Harry"; // attribue un nom a notre personnage
    var_dump ($harry);

    var_dump($harry->mort()); // harry est vivant return boolean false
    $harry->vie = 0; // on met la vie de harry a 0
    var_dump($harry->mort()); // harry est mort return boolean true






?>