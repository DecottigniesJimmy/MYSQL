<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/assets/style.css">
    <title>Document</title>
</head>

<body>
    
    <!-- QUESTION 1 : AFFICHER EN PHP HELLO WORLD-->
    <h1>EXO 1</h1>
    <?php
    echo "<font size=\"3\">Hello world</font><br />";
    echo "<font size=\"4\">Hello world</font><br />";
    echo "<font size=\"5\">Hello world</font><br />";
    echo "<font size=\"6\">Hello world</font><br />";
    echo "<font size=\"7\">Hello world</font><br />";
    ?>

    <!-- CORRIGER LEVEL AVANCE -->
    <br>
    <h1>CORRIGER</h1>
    <?php for ($i = 3; $i <= 7; $i++) { // on crée une boucle for de font size 3 a 7
        echo "<font size=\"$i\">Hello world !</font><br />\n"; // on ajoute une incrémentation a la font size
    }
    ?>
    <!-- FIN CORRIGER -->
    <!-- FIN QUESTION 1 -->

    </body>

</html>
