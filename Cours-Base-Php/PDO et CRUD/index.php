<!-- DEFINITION DE CRUD : Create Read Update Delete -->
<!-- DEFINITION PDO : PHP Data Object -->

<!-- Constantes d'environnement (contenir les informations de connection de ma base de données) -->
    <?php 
    define("DBHOST", "localhost");
    define("DBUSER", "root");
    define("DBPASS", "root");
    define("DBNAME", "demo-users");

    // On va utiliser l'objet PDO pour ce connecter a la base de données son avantage est qu'il est universel et pas lié que a mysql exemple : oracle postgreSQL
    //DSN de connection (Data source name), (chaine de caractere qui indique le chemin de la connection)
    $dsn = "mysql:dbname=".DBNAME.";host=".DBHOST;

    // On va se connecter a la base
    try { // essaye de faire ce qu'il y a dans try
       $db = new PDO($dsn, DBUSER, DBPASS); // on instancie PDO

       //on s'assure d'envoyer les données en UTF8
       $db->exec("SET NAMES utf8"); // on utilise exec (execute) pour envoyé une requete SQL pour traduire les données en utf8 (qui gere les caractère spéciaux)

       echo "on est connectés <br/><br/>";
    } catch(PDOException $e){ // si sa marche pas attrape l'exception catch et tu fais ce qu'on te demande
        die("Erreur:".$e->getMessage()); // arrete le php, utilisation de l'objet PDOException
    }

    // Ici on est connectés a la base
    //On peut récupérer la liste des utilisateurs(users) on commence par la partie Read(R) du CRUD
    $sql = 'SELECT * FROM `users`';

    //on exécute directement la requête
    $requete = $db->query($sql);  // fait moi la requete query qui a dans $sql

    // On affiche les données

    var_dump($requete);
    echo "<br/><br/>";
    // On recupére les données (fetch ou fetchAll)
    $user = $requete->fetch();

    // On utilise des echo"<pre>" pour rendre l'affichage du tableau plus propre
    echo "<pre>";
    var_dump($user);
    echo "<pre>";


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

</body>

</html>