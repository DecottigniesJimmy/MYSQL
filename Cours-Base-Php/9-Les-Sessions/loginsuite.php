<?php
    session_start(); // continuité de la session loginctrl.php
    $username = $_SESSION["username"]; // definit une variable pour stocker la valeur de username dans l'input
?>

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

    <?php
        // si username et password sont inscrit dans les inputs dans la session en cours alors OK sinon erreur
        if (!(isset($_SESSION["username"])) && (!(isset($_SESSION["password"])))) {
        ?>
        <!-- on affiche le html dans la boucle if en dehors du php -->
        <h1>ERREUR login : vous n'avez pas droit d'accès a ce site</h1> 
        <p><a href="login.html">Retour à la page d'accueil</a></p>

        <?php
        } // on ferme la condition if dans la balise php
        else {
            echo "    <h1>Au menu du jour pour $username</h1>
            <ul>
                <li> <a href=`login.html`>Sommaire</a> </li>
                <li>Et aussi...</li>
                <li>Et encore...</li>
                <li>Et pour finir...</li>
            </ul>";
        }
    ?>
  
</body>
</html>