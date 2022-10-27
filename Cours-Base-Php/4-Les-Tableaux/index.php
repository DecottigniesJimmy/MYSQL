<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/assets/CSS/styles.css">
    <title>Document</title>
</head>
<body>
    <h1>Ceci est un tableau d'index numérique</h1>
    <?php
        // Il existe 3 types de tableaux, tableau d'index numérique, tableau associatif (clé > value), et tableau multidimensionnel qui contient une ou plusieurs table
        // Syntaxe pour un tableau indexé: 
        $tab = array("nom","prenom","age");
        $count = count($tab);
        echo $tab[0]; // on affiche l'index 0 du tableau $tab   
        echo "<br>";

        for($x=0; $x < $count; $x++) { // on crée une boucle pour afficher tout les elements d'un tableau
            echo $tab[$x];
            echo "<br>";
        }
        echo "<br>";
        ?>

        <h1>Ceci est un tableau associatif</h1>
        <?php

        //Syntaxe pour un tableau associatif

        $tab2 = array("nom"=>"Decottignies", "prenom"=>"Jimmy", "age"=>"30");
        // echo $tab2["nom"];
        // echo "<br>";
        // echo $tab2["prenom"];

        foreach($tab2 as $y=>$y_value)
        {
            echo "Key=" . $y . ", Value=" . $y_value;
            echo "<br>";
        }
        echo "<br>";

    //Syntaxe pour un tableau multi dimensionnelle

    $cars=array
    (
    array("Volvo",100,96),
    array("BMW",60,59),
    array("Toyota",110,100)
    );
  
    echo $cars[0][0].": Ordered: ".$cars[0][1].". Sold: ".$cars[0][2]."<br>";
    echo $cars[1][0].": Ordered: ".$cars[1][1].". Sold: ".$cars[1][2]."<br>";
    echo $cars[2][0].": Ordered: ".$cars[2][1].". Sold: ".$cars[2][2]."<br>";
    ?>


    <?php 
        echo nl2br("<h1>Ci dessus un \n tableau en PHP</h1>"); // nl2br permet des sauts de lignes avec le \n en dehors de nl2br \n applique un saut a la ligne (espace" ")
    ?>

<?php

// LISTER UN TABLEAU DANS L'ORDRE ALPHABETIQUE
$fruits = array("lemon", "orange", "banana", "apple");
sort($fruits); // permet de lister un tableau dans l'ordre alphabetique
foreach ($fruits as $key => $val) {
    echo "fruits[" . $key . "] = " . $val . "\n";
}

?>

<?php
$tab = array("jimmy", "halim", "greg", "cedric", "anthony", "oceane"); // crée un tableau
sort($tab); // trier le tableau par ordre alphabétique
$count = count($tab); // compte tout les éléments dans le tableau
for ($x=0; $x<$count; $x++) { // boucle pour afficher tout les elements d'un tableau

    echo $tab[$x];

    echo "<br>";

}

?>

    
</body>
</html>
