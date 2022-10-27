<?php

$user = 'root'; // declare variable user root phpmyadmin
$pass = 'root'; // declare variable pass root phpmyadmin

try {
    //declare variable new PDO (PHP Data Object) pour ce connecter au serveur local
    $db = new PDO('mysql:host=localhost;dbname=exo-php-carnet-adresse', $user, $pass);
} catch (PDOException $e) // sert de if connect ok else error
{
    print 'Erreur :' . $e->getMessage() . '<br/>';
    die;
}

$allusers = $db->query('SELECT * from candidat'); // declare une variable pour stocker la requete SQL
if (isset($_GET['s']) and !empty($_GET['s'])) {
    // On crée la variable recherche pour stocker la recherche grace a la function GET
    $recherche = htmlspecialchars($_GET['s']); // htmlspecialchars permet de ne pas rentrer du code html dans la barre de recherche
    $allusers = $db->query('SELECT * FROM candidat WHERE concat (Nom_Cand, Prenom_Cand, Lieux_naissance, Date_naissance, Telephone, Adresse) LIKE "%' . $recherche . '%"'); //effectuer la requete de recherche
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

    <div class="container">
        <div class="container-page">
            <h1 class='test'>
                Interrogation de la table Candidat avec PDO
            </h1>

            <form method="GET">
                <input type="search" name="s" placeholder="Rechercher">
                <input type="submit" name="Envoyer">
            </form>

                <br>

            <table>
                <tr>
                    <td class='td-title'>Nom</td>
                    <td class='td-title'>Prenom</td>
                    <td class='td-title'>Lieux naissance</td>
                    <td class='td-title'>Date naissance</td>
                    <td class='td-title'>Telephone</td>
                    <td class='td-title'>Adresse</td>
                    <td class='td-title'>ID Session</td>
                    <td class='td-title'>Code Formation</td>
                </tr>
            </table>
            <section class="afficher_utilisateur">

                <?php
                if ($allusers->rowCount() > 0) { // on compte le nombre d'occurence trouver dont la requete de champs (lettre numéro) est supérieur a 0
                    while ($user = $allusers->fetch()) {
                ?>
                        <?=

                        "
                        <table><tr><td>" . $user['Nom_Cand'] . "</td>

                        <td>" . $user['Prenom_Cand'] . "</td>

                        <td>" . $user['Lieux_naissance'] . "</td>

                        <td>" . $user['Date_naissance'] . "</td>

                        <td>" . $user['Telephone'] . "</td>

                        <td>" . $user['Adresse'] . "</td>

                        <td>" . $user['ID_Session'] . "</td>

                        <td>" . $user['Code_Formation'] . "</td>
                        
                        </tr></table>\n";
                        ?>


                    <?php
                    }
                } else {
                    ?>
                    <p>Aucun utilisateur trouvé</p>
                <?php
                }
                ?>
            </section>
        </div>
    </div>

</body>

</html>