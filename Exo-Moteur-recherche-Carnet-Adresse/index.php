<?php

$user = 'root'; // declare variable user root phpmyadmin
$pass = 'root'; // declare variable pass root phpmyadmin

try {
    //declare variable new PDO (PHP Data Object) pour ce connecter au serveur local
    $db = new PDO('mysql:host=localhost;dbname=exo-pdophp-carnet', $user, $pass);
} catch (PDOException $e) // sert de if connect ok else error
{
    print 'Erreur :' . $e->getMessage() . '<br/>';
    die;
}

$allusers = $db->query('SELECT * from carnet'); // declare une variable pour stocker la requete SQL
if(isset($_GET['s']) AND !empty($_GET['s'])){
    // On crée la variable recherche pour stocker la recherche grace a la function GET
    $recherche = htmlspecialchars($_GET['s']); // htmlspecialchars permet de ne pas rentrer du code html dans la barre de recherche
    $allusers = $db->query('SELECT * FROM carnet WHERE Nom LIKE "%'.$recherche.'%"'); //effectuer la requete de recherche
}

?>

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
    <h1>
        Interrogation de la table CARNET avec PDO
    </h1>

    <form method="GET">
        <input type="search" name="s" placeholder="Rechercher un nom">
        <input type="submit" name="Envoyer">
    </form>

    <section class="afficher_utilisateur">

        <?php 
            if($allusers->rowCount() > 0){ // on compte le nombre d'occurence trouver dont la requete de champs (lettre numéro) est supérieur a 0
                while ($user = $allusers->fetch()) {
                    ?>                    
                    <table>
                        <tr> <td>Nom</td> <td>Prenom</td> <td>Naissance</td> </tr>
                        <?= 
                        "<tr><td>".$user['Nom']."</td>

                        <td>".$user['Prenom']."</td>

                        <td>".$user['Naissance']."</td></tr><br/>\n";
                        ?>
                        </table>

                    <?php
                }          
            }
            else {
                ?>
                <p>Aucun utilisateur trouvé</p>
                <?php
            }
        ?>
    </section>


</body>
</html>
