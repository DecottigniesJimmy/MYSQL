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
<!-- PHP $_POST est une super variable globale PHP qui est utilisée pour collecter des données de formulaire 
après avoir soumis un formulaire HTML avec method="post". $_POST est également largement utilisé pour passer des variables.

L'exemple ci-dessous montre un formulaire avec un champ de saisie et un bouton d'envoi. Lorsqu'un utilisateur soumet les données en 
cliquant sur "Soumettre", les données du formulaire sont envoyées au fichier spécifié dans l'attribut action de la balise <form>. 
Dans cet exemple, nous pointons vers le fichier lui-même pour le traitement des données du formulaire. Si vous souhaitez utiliser un autre 
fichier PHP pour traiter les données du formulaire, remplacez-le par le nom de fichier de votre choix. Ensuite, nous pouvons utiliser 
la super variable globale $_POST pour collecter la valeur du champ d'entrée :-->

    <div class="container">
        <h1>Method $_POST</h1>
    <form class="form" method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>"> <!-- on utilise la method="post" pour recuperer les données des inputs, et l'action $_SERVER['PHP_SELF'] pour dire on applique le script sur la page actuelle -->
        <p>Nom:
            <input type="text" name="fname">
        </p>
        <p>
            Prenom :
            <input type="text" name="sname">
        </p>
        <p>
            Age :
            <input type="text" name="age">
        </p>
        <p>
            Sexe :
            <input type="text" name="sexe">
        </p>
        <p>
            Profession :
            <input type="text" name="prof">
        </p>             
            <input type="submit">
    </form>
    </div>

    <?php 
        if ($_SERVER["REQUEST_METHOD"] == "POST") { // si la requete (REQUEST METHOD) et bien égale a la fonction POST
            $fname = $_POST["fname"];
            $sname = $_POST["sname"];
            $age = $_POST["age"];
            $sexe = $_POST["sexe"];
            $prof = $_POST["prof"];

            if (empty($fname)OR empty($sname) OR empty($age) OR empty($sexe) OR empty($prof)) { // si l'input fname ou sname etc... "message erreur"
                echo "Tout les champs ne sont pas remplies";
            } else { // ou bien j'affiche :

                // echo "Bonjour je suis Mr ".$fname.", ".$sname." j'ai ".$age." ans et je suis un ".$sexe."  je suis actuellement ".$prof."."; (solution concaténation)
                echo "Bonjour je suis Mr $fname $sname, j'ai $age je suis un $sexe et j'exerce le métier de $prof";
            }
        }
    ?>
    
</body>
</html>